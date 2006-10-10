require 'libglade2'

class MainWindow
  def initialize
    @glade = GladeXML.new("ttime.glade") { |handler| method(handler) }

    @main_window = @glade["MainWindow"]
  end

  def on_quit_activate
    Gtk.main_quit
  end

  def on_about_activate
    @glade["AboutDialog"].run
  end
end

Gtk.init
MainWindow.new
Gtk.main
