using Samplepro.DTOS;

namespace Samplepro.Models;

public record Hashtag
{
    public long Id { get; set; }
    public string Name { get; set; }
    public long PostId { get; set; }


    public HashtagDTO asDto => new HashtagDTO
    {
        Id = Id,
        Name = Name,
        PostId = PostId,

    };
}