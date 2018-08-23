﻿using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

using System.Threading.Tasks;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.OpenIdConnect;
using Microsoft.AspNetCore.Authentication.Cookies;
using System.Security.Claims;
using System.Diagnostics;
using WebMvcClient.Controllers;
using WebMvc.Models;
using Microsoft.AspNetCore.Identity;

namespace WebMvc.Controllers
{
    [Authorize]
    public class AccountController : Controller
    {

        private readonly SignInManager<ApplicationUser> _signInManager;
        [Authorize]
        public async Task<IActionResult> SignIn(string returnUrl)
        {
            var user = User as ClaimsPrincipal;

            var token = await HttpContext.GetTokenAsync("access_token");
            var idToken = await HttpContext.GetTokenAsync("id_token");
            foreach (var claim in user.Claims)
            {
                Debug.WriteLine($"Claim Type: {claim.Type} - Claim Value : {claim.Value}");
            }

            if (token != null)
            {
                ViewData["access_token"] = token;

            }
            if (idToken != null)
            {

                ViewData["id_token"] = idToken;
            }
            // "Catalog" because UrlHelper doesn't support nameof() for controllers
            // https://github.com/aspnet/Mvc/issues/5853
            return RedirectToAction(nameof(CatalogController.Login), "Catalog");
        }




        /*   public async Task<IActionResult> Signout()
           {
               await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
               await HttpContext.SignOutAsync(OpenIdConnectDefaults.AuthenticationScheme);

               ////// "Catalog" because UrlHelper doesn't support nameof() for controllers
               ////// https://github.com/aspnet/Mvc/issues/5853
               var homeUrl = Url.Action(nameof(CatalogController.Index), "Catalog");
               return new SignOutResult(OpenIdConnectDefaults.AuthenticationScheme,
                   new AuthenticationProperties { RedirectUri = homeUrl });
           }
           */
        [HttpPost]

        [ValidateAntiForgeryToken]

        public async Task<ActionResult> SignOut()

        {
            await _signInManager.SignOutAsync();



            return RedirectToAction(nameof(CatalogController.Index), "Catalog");

        }

    }
}

 