users = [
  {
    username: "jdoe",
    location: "San Francisco",
    first_name: "John",
    last_name: "Doe",
    email: "jdoe@routetodo.com"
  },
  {
    username: "pepito perez",
    location: "San Francisco",
    first_name: "Pepito",
    last_name: "Perez",
    email: "pperez@routetodo.com"
  }
]

categories = [
  {name: "Nightlife", image_url: "https://upload.wikimedia.org/wikipedia/commons/8/8b/Nightlife-in-Vancouver.jpg"},
  {name: "Exploring", image_url: "https://c2.staticflickr.com/6/5345/9826378233_d1843cd9fa_b.jpg"}
]

places = [
  {
    name: "Mikkeller Bar", location: "San Francisco",
    address: "55 Cyril Magnin St, San Francisco, CA 94102",
    full_description: "The first American outpost for the popular Denmark brewhouse, this 42-tapped beauty has both local and European brews on the list (including several exclusive-to-this-spot Mikkellers), plus, they even have a secret downstairs room devoted entirely to sour beers.",
    image_url: "http://33.media.tumblr.com/b6ed58627630bb8652ab6c3068be565b/tumblr_inline_n91a7hHpIp1qb3qcf.jpg",
    lat: 37.784719, lng: -122.409203
  },
  {
    name: "Toronado", location: "San Francisco",
    address: "547 Haight St,San Francisco, CA 94117",
    full_description: "Like beer, but hate people? Cool, so do the bartenders at this iconic Lower Haight establishment that boasts a seriously impressive tap list. Pro tip: know what you're ordering before the bartender looks at you. Or you look at him. Or the guy next to you looks at him. Literally, if anyone is looking anywhere, know what you're going to order. Also: have cash. Also also: make sure you hit their Annual Barleywine Festival.",
    image_url: "http://i1142.photobucket.com/albums/n607/Gettingdark/Misc/IMG_20140507_214921_1_zpsk7jolnth.jpg",
    lat: 37.772055, lng: -122.431186
  },
  {
    name: "Pi Bar", location: "San Francisco",
    address: "1432 Valencia St,San Francisco, CA 94110",
    full_description: "This Mission spot not only opens at 3:14pm every day, but also serves a unique, basically never-repeating rotation of beers on tap that could very well make you the irrational one (math joke, +1!).",
    image_url: "https://backoftheferry.files.wordpress.com/2014/10/sf-pi-bar.jpg",
    lat: 37.750128, lng: -122.420743
  }
]

routes = [
  {
    title: "The Beer Route",
    location: "San Francisco",
    full_description: "There are plenty of bars in SF where you can grab a beer, but less-plenty of bars in SF that you can call bona fide beer bars. Here're eight that we think not only make the cut, but make it better than anyone else.",
    image_url: "http://33.media.tumblr.com/b6ed58627630bb8652ab6c3068be565b/tumblr_inline_n91a7hHpIp1qb3qcf.jpg",
    user_id: 1
  }
]

ratings = [
  {user_id: 1, route_id: 1, rating: 5.0},
  {user_id: 2, route_id: 1, rating: 4.0}
]

users.each do |params|
  User.find_or_create_by!(params)
end

categories.each do |params|
  Category.find_or_create_by!(params)
end

places.each do |params|
  Place.find_or_create_by!(params)
end

routes.each do |params|
  Route.find_or_create_by!(params)
end

route = Route.first
Place.first(3).each_with_index do |place, position|
  RoutePlace.find_or_create_by!(route: route, place: place, position: position)
end

ratings.each do |params|
  Rating.find_or_create_by!(params)
end
