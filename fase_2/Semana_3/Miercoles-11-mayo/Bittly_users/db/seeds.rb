user = User.create(name: "aldo", email: "email", password: "pass")
Url.create(user_id: user.id, long_url: "http://www.google.com", short_url: "bit.fly/sdfsdf")
Url.create(user_id: user.id, long_url: "http://www.youtube.com", short_url: "bit.fly/sdfasf")
