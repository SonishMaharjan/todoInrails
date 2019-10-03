class CustomFailure < Devise::FailureApp
    #this was created to for custom redirect of when log in authentication fails
    def redirect_url
      root_path
    end
  
    def respond
      if http_auth?
        http_auth
      else
        redirect
      end
    end
  end