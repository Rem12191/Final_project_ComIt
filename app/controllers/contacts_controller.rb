class ContactsController < ApplicationController
    def new

    end
  
    def create
        # Handle form submission logic here
        # You can access form data via params[:name], params[:email], params[:message]
        # For simplicity, let's assume we just print the submitted data
        Rails.logger.info "Name: #{params[:name]}"
        Rails.logger.info "Email: #{params[:email]}"
        Rails.logger.info "Message: #{params[:message]}"
        
        # Redirect back to the form page
        redirect_to new_contact_path
    end
end