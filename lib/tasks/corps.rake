namespace :data do

  task :corps => :environment do
    puts "running my corps task"

    Company.destroy_all
    Member.destroy_all

    # microsoft
    microsoft = Company.create(
              name: "microsoft",
              industry: "internet",
              employee_count: 50000,
              join_date: "2014-1-14"
            )

    Member.create(company: microsoft, name: "s. nadella", title: "ceo")
    Member.create(company: microsoft, name: "steve balmer", title: "ex-ceo")

    #oracle
    oracle = Company.create(
                name: "oracle",
                industry: "storage",
                employee_count: 15000,
                join_date: "2014-02-02"
              )
    Member.create(company: oracle, name: "larry ellison", title: "ceo")
    Member.create(company: oracle, name: "dr. who", title: "strategist")

    # apple
    apple  = Company.create(
                name: "apple",
                industry: "internet",
                employee_count: 34000,
                join_date: "2014-01-19"
             )
    Member.create(company: apple, name: "tim cook", title: "ceo")
    Member.create(company: apple, name: "phil schiller", title: "svp marketing")
    Member.create(company: apple, name: "johnny ive", title: "svp design")




  end

end
