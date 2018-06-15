class RepositoriesController < ApplicationController
  def index
    user = GithubService.new({ "access_token" => session[:token]} )
    # @all_repos = user.get_repos
    @repos_array = user.get_repos
  end

  def create
    user = GithubService.new({ "access_token" => session[:token]} )
    user.create_repo(params[:name])
    redirect_to '/'
  end
end
