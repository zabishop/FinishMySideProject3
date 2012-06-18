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

Tag.delete_all

Endorsement.delete_all

@tag1 = Tag.create(:name => 'red')
@tag2 = Tag.create(:name => 'blue')
@tag3 = Tag.create(:name => 'green')

for i in 1..10

  @my_user = User.create(:name => 'user ' + i.to_s,
              :password => 'password' + i.to_s,
              :profile_pic => 'baby.png',
              :email => 'user' + i.to_s + '@gmail.com')

  @project_title = "side_project" + i.to_s

  @my_side_project1 = SideProject.create(:project_title => @project_title,
                     :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                     :image_url => 'project_pic.jpg',
                     :repo_url => 'repo' + i.to_s + '.com',
                     :user => @my_user)

  @my_side_project2 = SideProject.create(:project_title => 'project' + (i + 10).to_s,
                                         :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                         :image_url => 'project_pic.jpg',
                                         :repo_url => 'repo' + (i + 10).to_s + '.com',
                                         :user => @my_user)

  Comment.create(:commenter => @my_user.name,
                 :body => 'i like your project!',
                 :side_project => @my_side_project1)

  Comment.create(:commenter => @my_user.name,
                 :body => 'i really am apathetic towards your project!',
                 :side_project => @my_side_project2)

  Endorsement.create(:user_id => @my_user.id,
                     :side_project_id => @my_side_project1.id)


  @tag1.side_projects.push(@my_side_project1)
  @tag1.save()


  @tag2.side_projects.push(@my_side_project2)
  @tag2.side_projects.push(@my_side_project1)



  @tag3.side_projects.push(@my_side_project2)
end

@endorsement1 = User
