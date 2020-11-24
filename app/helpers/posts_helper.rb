module PostsHelper
  def author_id_field(f)
    if f.object.author.nil?
      f.select :author_id, Author.all, :id, :name
    else
      f.hidden_field :author_id, value: f.object.author_id
    end
  end
end
