class ApplicationController < ActionController::API

    def createToken(userId)
      newToken = TokenKing.encode({ data: userId })
    end
  
    def getToken
      token_info = request.headers["Authorization"]
      if token_info
        is_bearer = token_info.match(/Bearer /)
        # token will be second item in token info array, if Bearer TOKEN structure is met       
        return is_bearer ? token_info.split(" ")[1]:nil 
      end
      # unable to retrieve token
      return false 
    end
  
    def authenticated
      
      begin
       t = getToken
       decoded_token = TokenKing.decode(t)
       # user id
       return decoded_token["data"]
      rescue
  
      end
      return false
  
    end
  
    def authorized
      userId = params[:user_id]
      return authenticated == userId
    end
  end
  