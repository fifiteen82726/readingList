Book.destroy_all
Genre.destroy_all


fiction = Genre.create(name: 'fiction' )
non_fiction =Genre.create(name: 'non_fiction')
travel =Genre.create(name: 'travel')



Book.create!([
  {title: "happy", author: "tom", description: "tom book", amazon_id: "1937785491", rating: 5, finished_on: 10.days.ago,genres: [fiction,travel]},
  {title: "hello", author: "code", description: "fuck", amazon_id: "0596516177", rating: 1, finished_on: 5.days.ago,genres: [non_fiction,travel]},
  {title: "ggggg", author: "ggg", description: "ggg", amazon_id: "1937785564", rating: 1, finished_on: 1.days.ago,genres: [non_fiction]}
])
