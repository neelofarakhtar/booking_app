namespace :example_task do
	desc 'Greeting Message task'

	task greet_the_user: :environment do
		puts 'Hello User! Welcom to the rake world'
	end

	task say_bye_to_user: :environment do
		puts 'Hello User! Its time to say bye to user'
	end
end