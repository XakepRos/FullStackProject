using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using himalWebAPI.Service;
using himalWebAPI.Models;
using himalWebAPI.ViewModel;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace himalWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmailController : ControllerBase
    {

        private readonly DataContext _context;
        public IEmailSender _emailSender;
        //private object mailMessage;

        public EmailController(DataContext context, IEmailSender emailSender)
        {
            _context = context;
            _emailSender = emailSender;
        }


        [HttpPost]
        [Route("ForgotPassword")]
        public string ForgotPassword([FromBody]LoginViewModel model)
        {
            var check = _context.RegisterTable.Where(x => x.EMAIL == model.UserName).FirstOrDefault();
            if (check != null)
            {
                //Chilkat.StringBuilder sbHtml = new Chilkat.StringBuilder();
                //sbHtml.Append("<html><body><p>This is an HTML email with an embedded image.</p>");
                //sbHtml.Append("<p><img src=\"cid:CONTENT_ID_STARFISH\" /></p></body></html>");
                //int numReplacements = sbHtml.Replace("CONTENT_ID_STARFISH", contentIdStarfish);
                //email.AddHtmlAlternativeBody(sbHtml.GetAsString());

              
                var body = new StringBuilder();
                var mailMessage = new MailMessage
                {
                    IsBodyHtml = true
                };
                //mailMessage.IsBodyHtml = true;
                body.AppendFormat("Hello, {0}\n", model.UserName);
                body.AppendLine(@"Your Himal Industry Account about to reset your password. Please! click the link below to complete the actination process");
                body.AppendLine("<a href=\"http://localhost:4200/confirm-pswd/"+model.UserName+"\"><ul>Reset Your Password</ul></a></br>");
                mailMessage.Body = body.ToString();

                _emailSender.SendEmailAsync(model.UserName, "here's the link to reset your password", mailMessage.Body);
                Console.WriteLine("Your Email is verified");
                return "Your Email is verified";
            }
            Console.WriteLine("Please check your email?");
            return "Please check your email?";

            //return "please check your email!";

        }
    }
}