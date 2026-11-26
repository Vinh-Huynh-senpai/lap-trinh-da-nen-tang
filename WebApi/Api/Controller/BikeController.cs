using Microsoft.AspNetCore.Mvc;
using WebApi.Api.Controller;
using WebApi.Models;

[ApiController]
[Route("api/[controller]")]
public class BikeController : BaseController
{   
    [HttpGet("details/{id}")]
    public Bike? GetBike(int id)
    {
        return Provider.Bike.GetBike(id);
    }
    [HttpGet]
    public IEnumerable<Bike> GetBikes()
    {
        return Provider.Bike.GetBikes();
    }
    [HttpGet("category/{id}")]
    public IEnumerable<Bike> GetBikesByCategory(short id)
    {
        return Provider.Bike.GetBikesByCategory(id);
    }
    [HttpPost("subcategories")]
    public IEnumerable<Bike> GetBikesBySubCategories( short[] ids)
    {
        return Provider.Bike.GetBikesBySubCategories(ids);
    }
}