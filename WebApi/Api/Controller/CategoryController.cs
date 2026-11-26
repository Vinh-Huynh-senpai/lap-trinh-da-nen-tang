using Microsoft.AspNetCore.Mvc;
using WebApi.Models;
using WebApi.Services;

namespace WebApi.Api.Controller;

[ApiController, Route("api/[controller]")]

public class CategoryController : BaseController
{
    // TrekBikesContext context;

    // public CategoryController(TrekBikesContext context)
    // {
    //     this.context = context;
    // }
    // [HttpGet]
    // public IEnumerable<Category> GetCategories()
    // {
    //     return context.Categories.ToList();
    // }

    public IEnumerable<Category> GetCategories()
    {
        return Provider.Category.GetCategories();
    }

    [HttpPost]
    public async Task<int> Post(Category obj)
    {
        if(ModelState.IsValid)
        {
            obj.Icon = await Helper.DownloadAsync(obj.Icon, "categories", 16);
            return Provider.Category.Add(obj);
        }
        return -1;
    }

}