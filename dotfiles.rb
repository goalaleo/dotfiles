module Dotfiles
  extend self
  HOME_DIRECTORY = Pathname.new(ENV["HOME"])

  # Get instructions for which files to link
  def link_lists
    Dir
      .glob("./**/linklist", File::FNM_DOTMATCH)
      .map(&File.method(:realpath))
  end

  # Create symlinks to homedir
  def create(dotfile_path)
    symlink_path = HOME_DIRECTORY + "#{dotfile_path.basename}"

    link_str = "%s -> %s" % [symlink_path, dotfile_path]
    puts "linking #{symlink_path}"
    result = system(%Q{ln -i -s "#{dotfile_path}" "#{symlink_path}"})
    if result
      puts link_str
    end
  end
end
