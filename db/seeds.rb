# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Product.destroy_all
User.destroy_all

@admin = User.create!(username: 'Garrett', email: 'garrett@garrett.com', password: 'Garrett', is_admin: true)
@admin2 = User.create!(username: 'Admin', email: 'Admin@admin.com', password: 'Admin55', is_admin: true)

Post.create!(title: 'What to expect on your first day', content: Faker::Lorem.paragraphs(sentence_count: rand(2..8)))
Post.create!(title: 'The Golden Rule of sparring', content: Faker::Lorem.paragraphs(sentence_count: rand(2..8)))
Post.create!(title: 'How to be respectful', content: Faker::Lorem.paragraphs(sentence_count: rand(2..8)))

@posts = Post.all

Product.create!(name: 'Head Gear', type: 'Gear', brand: 'Everlast', image_url: 'everlast_head_gear.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Heavy Bag', type: 'Equipment', brand: 'Everlast', image_url: 'everlast_heavy_bag.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Thai Pads', type: 'Gear', brand: 'Everlast', image_url: 'everlast_pads.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Speed Bag', type: 'Equipment', brand: 'Everlast', image_url: 'everlast_speed_bag.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Wall Mount Training Bag', type: 'Equipment', brand: 'Everlast',
                image_url: 'everlast_wall_mount.jpeg', review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Hand Wraps', type: 'Gear', brand: 'Everlast', image_url: 'everlast_wraps.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: '16oz Gloves(Red/Black)', type: 'Gear', brand: 'Everlast', image_url: 'everlast16.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Mouth Guard', type: 'Gear', brand: 'Everlast', image_url: 'everlast_mouthguard.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Rash Guard', type: 'Apparel', brand: 'Everlast', image_url: 'everlast_rashguard.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Shin Pads', type: 'Gear', brand: 'Everlast', image_url: 'everlast_shin_pads.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: '16oz Gloves(Dark Green)', type: 'Gear', brand: 'Fairtex', image_url: 'fairtex_gloves.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Thai Shorts', type: 'Apparel', brand: 'Fairtex', image_url: 'fairtex_shorts.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Shin Pads', type: 'Gear', brand: 'Fairtex', image_url: 'fairtex_shinpads.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Belly Pad', type: 'Gear', brand: 'Fairtex', image_url: 'fairtex_bellypad.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Focus Mitts', type: 'Gear', brand: 'Fairtex', image_url: 'fairtex_focus_mitts.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Heavy Bag', type: 'Equipment', brand: 'Fairtex', image_url: 'fairtex_heavybag.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Duffel Bag', type: 'Apparel', brand: 'Fairtex', image_url: 'fairtex_bag.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Tear Drop Bag', type: 'Equipment', brand: 'Fairtex', image_url: 'fairtex_teardrop.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: '16oz Gloves(White)', type: 'Gear', brand: 'Fairtex', image_url: 'fairtex_mygloves.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Thai Shorts', type: 'Apparel', brand: 'Yokkao', image_url: 'Yokkao_shorts.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: '16oz Gloves(Blue)', type: 'Gear', brand: 'Yokkao', image_url: 'muay-thai-boxing-gloves-yokkao-matrix-blue.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Shin Pads', type: 'Gear', brand: 'Yokkao', image_url: 'shin-guards-muay-thai-yokkao-matrix-red-3.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Thai Pads', type: 'Gear', brand: 'Yokkao', image_url: 'kicking-pads-curved-muay-thai-yokkao-matrix-island-hot-pink-3.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Low Kick Pad', type: 'Gear', brand: 'Yokkao', image_url: 'low-kick-muay-thai-yokkao-orange-tiger-eden-1.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Tear Drop Bag', type: 'Equipment', brand: 'Yokkao', image_url: 'tear-drop-heavy-bags-muay-thai-yokkao-thai-flag.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))
Product.create!(name: 'Heavy Bag', type: 'Equipment', brand: 'Yokkao', image_url: 'heavy-bags-muay-thai-yokkao-biking-red-white.jpeg',
                review: Faker::Lorem.paragraphs(sentence_count: rand(2..4)))

@products = Product.all

puts "#{User.count} users created!"
puts "#{Post.count} posts created!"
puts "#{Product.count} products created!"
