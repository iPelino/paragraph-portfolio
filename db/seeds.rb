10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Lorem ipsum dolor sit amet, 
        consetetur sadipscing elitr, 
        sed diam nonumy eirmod tempor invidunt 
        ut labore et dolore magna aliquyam erat, 
        sed diam voluptua. At vero eos et accusam et
         justo duo dolores et ea rebum. Stet clita 
         kasd gubergren, no sea takimata sanctus
          est Lorem ipsum dolor sit amet. "
    )
end
puts "10 blog posts created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end
puts "5 skills created"

9.times do |portfolio|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio}" ,
        subtitle: "My great service" ,
        body: "Lorem ipsum dolor sit amet, 
        consetetur sadipscing elitr, 
        sed diam nonumy eirmod tempor invidunt 
        ut labore et dolore magna aliquyam erat, 
        sed diam voluptua.", 
        main_image: "https://via.placeholder.com/600x200" , 
        thumb_image: "https://via.placeholder.com/350x200"
    )
end
puts "9 skills created"
