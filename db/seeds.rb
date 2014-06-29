Bookmark.delete_all

Bookmark.create!(
  url: 'http://reddit.com',
  title: 'Reddit, the front page of the internet',
  category: 'Funny',
  is_favorite: true
)

Bookmark.create!(
  url: 'http://arstechnica.com',
  title: "All the tech news that's fit to print",
  category: 'Useful',
  is_favorite: true,
  comment: 'Probably my favorite news site of all time'
)

Bookmark.create!(
  url: 'http://hackertyper.net',
  title: 'Type like in movies and look super productive',
  category: 'Funny'
)

Bookmark.create!(
  url: 'http://www.catb.org/jargon/html/',
  title: 'Jargon File, a reference for hacker culture',
  category: 'Serious',
  comment: 'Keep the switch flipped to "more magic"'
)
