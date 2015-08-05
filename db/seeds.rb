Book.destroy_all
Genre.destroy_all



fiction = Genre.create(name: 'fiction' )
non_fiction =Genre.create(name: 'non_fiction')
travel =Genre.create(name: 'travel')


Book.create!([
  {title: "happy", author: "tom", description: "The principle difference between Ruby on Rails and other frameworks for development lies in the speed and ease of use that developers working within the environment enjoy. Changes made to applications are immediately applied, avoiding the time consuming steps normally associated with the web development cycle. According to David Geary, a Java expert, the Ruby-based framework is five to 10 times faster than comparable Java-based frameworks. In a blog posting, Geary predicted that Rails would be widely adopted in the near future.

", amazon_id: "1937785491", rating: 5, finished_on: 10.days.ago,genres: [fiction,travel]},
  {title: "hello", author: "code", description: "Rails can run on most Web servers that support CGI. The framework also supports MySQL, PostgreSQL, SQLite, SQL Server, DB2 and Oracle. Rails is also an MVC (model, view, controller) framework where all layers are provided by Rails, as opposed to reliance on other, additional frameworks to achieve full MVC support. Invented by David Heinemeier Hanss, Ruby On Rails has been developed as an open-source project, with distributions available through rubyonrails.org.", amazon_id: "0596516177", rating: 1, finished_on: 5.days.ago,genres: [non_fiction,travel]},
  {title: "ggggg", author: "ggg", description: "According to the Agile test automation pyramid, first introduced by Mike Cohn in his book, Succeeding with Agile, the majority of automated tests should be written at the unit test level, preferably using test driven development (TDD). Although it's not necessary to employ TDD techniques to write automated unit tests, by doing so the team ensures the automated tests are written, even before the code. These automated unit tests, written in the same programming language as the system under test, form the basis for regression tests that are executed with each build and are required for continuous integration or continuous deployment.", amazon_id: "1937785564", rating: 1, finished_on: 1.days.ago,genres: [non_fiction]}
])
