# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

SideProject.delete_all

Comment.delete_all

for i in 1..20

  @my_user = User.create(:name => 'user ' + i.to_s,
              :password => 'password' + i.to_s,
              :profile_pic => 'baby.png',
              :email => 'user' + i.to_s + '@gmail.com')

  @my_side_project = SideProject.create(:project_title => 'project' + i.to_s,
                     :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                     :image_url => 'project_pic.jpg',
                     :repo_url => 'repo' + i.to_s + '.com',
                     :user => @my_user)

  Comment.create(:commenter => @my_user,
                 :body => 'i like your project!',
                 :side_project => @my_side_project)
end


