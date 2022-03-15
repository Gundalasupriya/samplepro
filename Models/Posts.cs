using Samplepro.DTOS;

namespace Samplepro.Models;

public record Post
{
    public int Id { get; set; }

    public DateTimeOffset PostedAt { get; set; }
    public string TypeOfPost { get; set; }

    public long UserId { get; set; }

    public PostDTO asDto => new PostDTO
    {
        Id = Id,
        PostedAt = PostedAt,
        TypeOfPost = TypeOfPost,
        UserId = UserId,
    };
}