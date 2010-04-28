begin
  # load wirble
  require 'rubygems'
  require 'wirble'

  %w{hpricot open-uri htmlentities time}.each {|x| require x}
   
  # start wirble (with color)
 
  Wirble.init
  Wirble.colorize

rescue LoadError => err
  warn "Couldn't load Wirble: #{err}"
end
