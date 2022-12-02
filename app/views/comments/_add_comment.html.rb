<%= form_with model: Comment, url: user_post_comments_path(@post.author, @post) do |form| %>
     <div>
       <%= form.label :text %>
       <%= form.text_area :text, placeholder: "Type In comment", row: 20, required: true %>
     </div>

     <div> 
       <%= form.submit "save" %>
     </div>

<%= end %>