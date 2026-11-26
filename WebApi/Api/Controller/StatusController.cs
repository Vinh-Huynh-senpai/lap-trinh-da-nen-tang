using Microsoft.AspNetCore.Mvc;
using WebApi.Models;

namespace WebApi.Api.Controller;
[ApiController, Route("api/[controller]")]

public class StatusController : BaseController
{
    [HttpGet]
    public IEnumerable<Status> GetStatuses() => Provider.Status.GetStatuses();
}