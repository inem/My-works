class AddCommentableToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :commentable, polymorphic: true
    remove_reference :comments, :messages
  end
end
