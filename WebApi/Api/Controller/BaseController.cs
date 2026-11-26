using Microsoft.AspNetCore.Mvc;
using WebApi.Api.Controller;
using WebApi.Models;
namespace WebApi.Api.Controller;

public abstract class BaseController : ControllerBase
{
    SiteProvider? provider;

    protected SiteProvider Provider => provider ?? HttpContext.RequestServices.GetRequiredService<SiteProvider>();

}