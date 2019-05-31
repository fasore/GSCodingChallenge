using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using GSCodingChallenge.Models;

namespace GSCodingChallenge.Controllers
{
    public class UserProjectsController : Controller
    {
        

        GSDBModels db = null;
        // GET: UserProjects  
        public UserProjectsController()
        {
            db = new GSDBModels();
        }


        public ActionResult Index()
        {
            //Create list with users 
            List<SelectListItem> availableUsers = new List<SelectListItem>();
            availableUsers.Add(new SelectListItem
            {
                Text = "----",
                Value = "0",
                Selected = true
            });
            var users = db.Users.ToList();
            foreach (var u in users)
            {
                availableUsers.Add(new SelectListItem
                {
                    Text = u.FirstName + " " + u.LastName,
                    Value = Convert.ToString(u.Id)
                });
            }
            ViewBag.UsersList = availableUsers;
            return View();
        }

        /// <summary>
        /// Gets projects based on used id
        /// </summary>
        /// <param name="userId">user identifier</param>
        /// <returns>Json with projects data</returns>
        public JsonResult GetUserProjectsByUserId(int userId)
        {
            return this.Json(
           (from obj in db.UserProjects
            where obj.UserId == userId
            select new {
                ProjectId = obj.ProjectId,
                StartDate = obj.Project.StartDate,
                EndDate = obj.Project.EndDate,
                AssignedDate = obj.AssignedDate,
                Credits = obj.Project.Credits,
                IsActive = (obj.IsActive == true) ? "Active" : "Inactive"

            })
           , JsonRequestBehavior.AllowGet);
        }
    }
}