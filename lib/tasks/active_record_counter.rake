namespace :active_record_counter do
  desc "Display the Movie Model"
  task movies_count: :environment do
    puts "Movies Count = #{Movie.count}"
  end

  desc "Display the Theatre Model"
  task theatres_count: :environment do
    puts "Theatres Count = #{Theatre.count}"
  end

  desc "Display the Screening Model"
  task screenings_count: :environment do
    puts "Screenings Count = #{Screening.count}"
  end

end
