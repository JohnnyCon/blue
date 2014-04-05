namespace :data do

  task :startups => :environment do
    puts "running my custom rake task"

    Company.destroy_all
    google = Company.create(
              name: "google",
              industry: "internet",
              employee_count: 20000,
              join_date: "2014-1-14"
            )

    twitter = Company.create(
                name: "twitter",
                industry: "micro-blogging",
                employee_count: 4000,
                join_date: "2014-02-02"
              )

    Member.destroy_all
    Member.create(company: google, name: "larry page", title: "ceo")
    Member.create(company: google, name: "sergey brin", title: "president")
    Member.create(company: twitter, name: "dick costello", title: "ceo")
    Member.create(company: twitter, name: "jack dorsey", title: "board member")

  end

end
