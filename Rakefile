require "./dotfiles.rb"

task default: %i(install)

desc "install dotfiles"
task :install do
  puts "Looking for link lists..."
  link_lists = Dotfiles.link_lists
  puts "Found:\n#{link_lists}"

  link_lists.each do |link_list|
    link_list_path = Pathname.new(link_list)
    dotfiles = File.readlines(link_list_path, chomp: true).to_a

    puts "\n=========="
    puts "Creating symlinks from #{link_list}"
    dotfiles.each do |dotfile|
      Dotfiles.create(link_list_path.dirname + dotfile)
    end
  end
end
