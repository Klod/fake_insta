class UsersController < ApplicationController
    def profile
        @user = User.find(params[:id])
        @posts = @user.posts
    end
end