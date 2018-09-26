3.times do |topic|
  Topic.create!(
           title: "Topic #{topic}"
  )
end

puts "3 topics created"

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
          est Lorem ipsum dolor sit amet. ",
        topic_id: Topic.last.id
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

8.times do |portfolio|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio}" ,
        subtitle: "Ruby on Rails" ,
        body: "Lorem ipsum dolor sit amet, 
        consetetur sadipscing elitr, 
        sed diam nonumy eirmod tempor invidunt 
        ut labore et dolore magna aliquyam erat, 
        sed diam voluptua.", 
        main_image: "https://via.placeholder.com/600x400" ,
        thumb_image: "https://via.placeholder.com/350x200"
    )
end
1.times do |portfolio|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio}" ,
        subtitle: "Angular JS" ,
        body: "Lorem ipsum dolor sit amet,
        consetetur sadipscing elitr,
        sed diam nonumy eirmod tempor invidunt
        ut labore et dolore magna aliquyam erat,
        sed diam voluptua.",
        main_image: "https://via.placeholder.com/600x400" ,
        thumb_image: "https://via.placeholder.com/350x200"
    )
end
puts "9 skills created"
