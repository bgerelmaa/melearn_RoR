class UserController < ApplicationController
    def index
        @post = User.new
    end
end
