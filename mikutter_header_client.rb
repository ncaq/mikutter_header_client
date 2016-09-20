Plugin.create(:mikutter_header_client) {
  class Gdk::MiraclePainter
    alias :orig_header_left :header_left
    def header_left(context = dummy_context)
      layout = orig_header_left(context)
      layout.text += " via " + message[:source]
      layout
    end
  end
}
