namespace :quiz_master do
  desc "Initialize Quiz Master Database"
  task initialize_database: :environment do

    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
    Rake::Task['db:seed'].invoke

  end
end