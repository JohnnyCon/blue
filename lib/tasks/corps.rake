namespace :data do

  task :corps => :environment do
    puts "running my corps task"

    now = DateTime.now
    current_time = DateTime.new(now.year,now.month,now.day,now.hour)

    Company.destroy_all
    Member.destroy_all
    Event.destroy_all

    # microsoft
    microsoft = Company.create(
              name: "microsoft",
              industry: "internet",
              employee_count: 50000,
              join_date: "2014-1-14"
            )

    Member.create(company: microsoft, name: "satya nadella", title: "ceo", email: "satya@example.com")
    Member.create(company: microsoft, name: "steve balmer", title: "ex-ceo", email: "steve@example.com")

    #oracle
    oracle = Company.create(
                name: "oracle",
                industry: "storage",
                employee_count: 15000,
                join_date: "2014-02-02"
              )
    Member.create(company: oracle, name: "larry ellison", title: "ceo", email: "larry@example.com")
    Member.create(company: oracle, name: "mark hurd", title: "president", email: "mark@example.com")

    # apple
    apple  = Company.create(
                name: "apple",
                industry: "internet",
                employee_count: 34000,
                join_date: "2014-01-19"
             )
    tim    = Member.create(company: apple, name: "tim cook",      title: "ceo", email: "tim@example.com")
    phil   = Member.create(company: apple, name: "phil schiller", title: "svp marketing", email: "phil@example.com")
    johnny = Member.create(company: apple, name: "johnny ive",    title: "svp design", email: "johnny@example.com")

    Event.create(
            member: phil,
            title: "iOS7 Features",
            description: Forgery(:lorem_ipsum).words(rand(20..50)),
            capacity: 20,
            start_at: current_time,
            end_at: current_time + 1.hour
          )

    current_time += 2.days
    Event.create(
            member: tim,
            title: "Apple State of Union",
            description: Forgery(:lorem_ipsum).words(rand(20..50)),
            capacity: 120,
            start_at: current_time,
            end_at: current_time + 90.minutes
          )

    current_time += (1.week + 4.hours)
    Event.create(
            member: johnny,
            title: "Death to Skeuomorphism",
            capacity: 300,
            description: Forgery(:lorem_ipsum).words(rand(20..50)),
            start_at: current_time,
            end_at: current_time + 2.hours
          )




  end

end
