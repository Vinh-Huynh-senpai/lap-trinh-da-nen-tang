namespace WebApi.Models;
public class CategoryRepository : BaseRepository{
    public CategoryRepository(TrekBikesContext context) : base(context)
    {
        // this.context = context;
    }
    public IEnumerable<Category> GetCategories()
    {
        return context.Categories.ToList();
    }
    public int Add(Category obj)
    {
        context.Categories.Add(obj);
        return context.SaveChanges();
    }
}