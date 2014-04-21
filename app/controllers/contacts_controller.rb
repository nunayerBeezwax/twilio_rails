class ContactsController < ApplicationController
  def index

  end

  def create
    @contact = Contact.new(contacts_params)
    if @contact.save
      flash[:notice] = "Contact Saved"
      redirect_to :back
    else
      flash[:notice] = "Failed to Save Contact"
    end
  end

private
  def contacts_params
    params.require(:contact).permit(:name, :user_id, :number)
  end
end
