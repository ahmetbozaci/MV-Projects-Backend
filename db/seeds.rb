Project.delete_all
User.delete_all
# Restart ids from 1
ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

@user = User.create(name: "ahmetbozaci")
@project = Project.create(user: @user,
                          name: "Math Magicians",
                          repo_link:"https://github.com/ahmetbozaci/math_magicians", 
                          live_link:"test",
                          description:"Math magicians is a website for all fans of mathematics.",
                          picture:"https://github.com/ahmetbozaci/math_magicians/blob/main/image.gif?raw=true" )