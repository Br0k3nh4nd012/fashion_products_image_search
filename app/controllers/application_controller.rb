class ApplicationController < ActionController::Base
    def home_page

    end

    def handle_form
        puts params
        flash[:error] = params.permit!.to_h
        redirect_to root_path
    end
end
