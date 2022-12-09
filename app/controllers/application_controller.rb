class ApplicationController < ActionController::Base
	before_action :authenticate_user!, except: :home
	def home
		respond_to do |format|
			format.html
			format.json {
				render json: {message: "asdf"}
			}
		end
	end
end
