# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Server.destroy_all
ServerUser.destroy_all
Message.destroy_all

# users

u1 = User.create(username: "demo-chan", email: "demo@uwu.com", password: "passwod")
u2 = User.create(username: "pwesident wagyu", email: "ryan@aa.io", password: "password")
u3 = User.create(username: "eggie mcmuffie", email: "vic@uwu.com", password: "password")
u4 = User.create(username: "nerdlover", email: "oli@uwu.com", password: "password")
u5 = User.create(username: "sailboi", email: "jon@uwu.com", password: "password")
u6 = User.create(username: "nwate mwendes", email: "nate@uwu.com", password: "password")
u7 = User.create(username: "recruiter-kun", email: "recruiter@uwu.com", password: "passwod")
u8 = User.create(username: "boss-san", email: "boss@uwu.com", password: "passwod")

# servers and memberships

s1 = Server.create(name: "wyan dweams of suwushi", private: false, owner_id: u2.id)
    ServerUser.create(server_id: s1.id, user_id: u2.id)
    ServerUser.create(server_id: s1.id, user_id: u3.id)
    ServerUser.create(server_id: s1.id, user_id: u4.id)
    ServerUser.create(server_id: s1.id, user_id: u5.id)
    ServerUser.create(server_id: s1.id, user_id: u6.id)
s2 = Server.create(name: "memes and dweams", private: false, owner_id: u3.id)
    ServerUser.create(server_id: s2.id, user_id: u3.id)
    ServerUser.create(server_id: s2.id, user_id: u1.id)
    ServerUser.create(server_id: s2.id, user_id: u2.id)
    ServerUser.create(server_id: s2.id, user_id: u3.id)
    ServerUser.create(server_id: s2.id, user_id: u4.id)
    ServerUser.create(server_id: s2.id, user_id: u7.id)
s3 = Server.create(name: "boats and sails", private: false, owner_id: u4.id)
    ServerUser.create(server_id: s3.id, user_id: u4.id)
    ServerUser.create(server_id: s3.id, user_id: u3.id)
    ServerUser.create(server_id: s3.id, user_id: u5.id)
    ServerUser.create(server_id: s3.id, user_id: u6.id)
s4 = Server.create(name: "animes & weeabaes", private: false, owner_id: u5.id)
    ServerUser.create(server_id: s4.id, user_id: u5.id)
    ServerUser.create(server_id: s4.id, user_id: u4.id)
    ServerUser.create(server_id: s4.id, user_id: u2.id)
    ServerUser.create(server_id: s4.id, user_id: u3.id)
    ServerUser.create(server_id: s4.id, user_id: u1.id)
    ServerUser.create(server_id: s4.id, user_id: u7.id)
s5 = Server.create(name: "welcome dweebs !! uwu", private: false, owner_id: u4.id)
    ServerUser.create(server_id: s5.id, user_id: u4.id)
    ServerUser.create(server_id: s5.id, user_id: u1.id)
    ServerUser.create(server_id: s5.id, user_id: u5.id)
    ServerUser.create(server_id: s5.id, user_id: u7.id)
    ServerUser.create(server_id: s5.id, user_id: u8.id)
    ServerUser.create(server_id: s5.id, user_id: u5.id)
    ServerUser.create(server_id: s5.id, user_id: u3.id)
s6 = Server.create(name: "dis iz demo's server !! uwu", private: false, owner_id: u1.id)
    ServerUser.create(server_id: s6.id, user_id: u1.id)
    ServerUser.create(server_id: s6.id, user_id: u7.id)
    ServerUser.create(server_id: s6.id, user_id: u8.id)
    ServerUser.create(server_id: s6.id, user_id: u2.id)
    ServerUser.create(server_id: s6.id, user_id: u3.id)
    ServerUser.create(server_id: s6.id, user_id: u4.id)
    ServerUser.create(server_id: s6.id, user_id: u5.id)
    ServerUser.create(server_id: s6.id, user_id: u6.id)
s7 = Server.create(name: "dis iz recruiter's server !! uwu", private: false, owner_id: u7.id)
    ServerUser.create(server_id: s7.id, user_id: u1.id)
    ServerUser.create(server_id: s7.id, user_id: u7.id)
    ServerUser.create(server_id: s7.id, user_id: u8.id)
    ServerUser.create(server_id: s7.id, user_id: u2.id)
    ServerUser.create(server_id: s7.id, user_id: u3.id)
    ServerUser.create(server_id: s7.id, user_id: u4.id)
    ServerUser.create(server_id: s7.id, user_id: u5.id)
    ServerUser.create(server_id: s7.id, user_id: u6.id)
s8 = Server.create(name: "dis iz boss' server !! uwu", private: false, owner_id: u8.id)
    ServerUser.create(server_id: s8.id, user_id: u1.id)
    ServerUser.create(server_id: s8.id, user_id: u7.id)
    ServerUser.create(server_id: s8.id, user_id: u8.id)
    ServerUser.create(server_id: s8.id, user_id: u2.id)
    ServerUser.create(server_id: s8.id, user_id: u3.id)
    ServerUser.create(server_id: s8.id, user_id: u4.id)
    ServerUser.create(server_id: s8.id, user_id: u5.id)
    ServerUser.create(server_id: s8.id, user_id: u6.id)

# channels & messages

c1 = Channel.create(server_id: s1.id, name: "omakases in SF", is_dm?: false)
    Message.create(author_id: u1.id, channel_id: c1.id, body: "whewe's da best pwace for suwushi ?")
    Message.create(author_id: u2.id, channel_id: c1.id, body: "shota 5sure owo")
    Message.create(author_id: u2.id, channel_id: c1.id, body: "must get the uni ~!")
    Message.create(author_id: u4.id, channel_id: c1.id, body: "i wuv uni uwu")
    Message.create(author_id: u4.id, channel_id: c1.id, body: "u shud check out omakase too !!")
c2 = Channel.create(server_id: s2.id, name: "only memes", is_dm?: false)
    Message.create(author_id: u3.id, channel_id: c2.id, body: "i onwy wive for memes >:3")
    Message.create(author_id: u4.id, channel_id: c2.id, body: "u are out of contwol")
    Message.create(author_id: u5.id, channel_id: c2.id, body: "cud u pws send me a mweme")
c4 = Channel.create(server_id: s3.id, name: "fishing tips", is_dm?: false)
    Message.create(author_id: u7.id, channel_id: c4.id, body: "i reawwy want to eat cwabs !!")
    Message.create(author_id: u4.id, channel_id: c4.id, body: "have u been to boiwing pwoint ?")
    Message.create(author_id: u4.id, channel_id: c4.id, body: "it's so yummeh ! uwu")
    Message.create(author_id: u4.id, channel_id: c4.id, body: "i recommend the shrimp and potatoes and corn mmm")
c5 = Channel.create(server_id: s4.id, name: "husbandos and waifus", is_dm?: false)
    Message.create(author_id: u6.id, channel_id: c5.id, body: "winwy is da bwest waifu")
    Message.create(author_id: u6.id, channel_id: c5.id, body: "don't @me")
    Message.create(author_id: u1.id, channel_id: c5.id, body: "LOL ~!")
    Message.create(author_id: u3.id, channel_id: c5.id, body: "u r a bwaka uwu")
    Message.create(author_id: u4.id, channel_id: c5.id, body: "^ x 10000")
c6 = Channel.create(server_id: s6.id, name: "test test", is_dm?: false)
    Message.create(author_id: u1.id, channel_id: c6.id, body: "just testing messages ! uwu")
c7 = Channel.create(server_id: s7.id, name: "resumes or bust", is_dm?: false)
    Message.create(author_id: u7.id, channel_id: c7.id, body: "send me yer resumes so you can get a job !! :3")
    Message.create(author_id: u4.id, channel_id: c7.id, body: "YES PWEASE")
    Message.create(author_id: u5.id, channel_id: c7.id, body: "pwease hire us, recruiter-kun ~~")
c8 = Channel.create(server_id: s5.id, name: "animaw cwossing", is_dm?: false)
    Message.create(author_id: u6.id, channel_id: c8.id, body: "awwight, who has high tuwnip pwices ?")
    Message.create(author_id: u6.id, channel_id: c8.id, body: "I NEED TO PWOFIT")
