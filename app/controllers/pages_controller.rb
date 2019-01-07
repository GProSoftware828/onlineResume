class PagesController < ApplicationController
  
  def about
    @skills = Skill.all
  end

end