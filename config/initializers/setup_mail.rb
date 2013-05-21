# Add gmail smtp for development
if Rails.env.development?
  ActionMailer::Base.smtp_settings = {  
    :address              => "smtp.gmail.com",  
    :port                 => 587,  
    :domain               => "gmail.com",  
    :user_name            => ENV['GMAIL_USERNAME'],  
    :password             => ENV['GMAIL_PASSWORD'],  
    :authentication       => "plain",
    :enable_starttls_auto => true
  }  
end