# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.development?

  %w(Answer Question User).each{ |table| table.constantize.destroy_all }



  #creating users for this fabulous new app

  yacko,
  wacko, dot = %w(yacko wacko dot).map do |name|
    User.create!(email: "#{name}@snackoverflow.com", password: "password")
  end

  #creating some fabulously amazing questions

  philosophical,
  trigonometric,
  girlfriend = Question.create!([
    {
      user: yacko,
      title: "I think therefore I am?",
      description: "I am trying to understand the nature of reality"
    },
    {
      user: wacko,
      title: "How do you add to integers together?",
      description: "I'm trying to do basic math here."
    },
    {
      user: dot,
      title: "Do you have a girlfriend?",
      description: "Dot tries to find a girlfriend."
    }
    ])


    Answer.create!([
      {
        question: philosophical,
        user: wacko,
        description: "you are, therefore you think. "
      },
      {
        question: trigonometric,
        user: dot,
        description: "You use the plus symbol."
      },
      {
        question: girlfriend,
        user: yacko,
        description: "Perhaps you will."
      }
    ])

else
  p "I am so gonna run the seeds file in development"
end
