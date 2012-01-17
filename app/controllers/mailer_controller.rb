
require 'ostruct'

class MailerController < ApplicationController


	def send_inquiry
	  @user =  OpenStruct.new params['user'] 
	  ElegantMailer.inquiry_email(@user).deliver
	  flash[:notice] = "Your inquiry was successfully sent. Thank you!"
	  redirect_to page_path("contact-us")
	end
end