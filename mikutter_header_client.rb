Plugin.create(:mikutter_header_client) {
  class Gdk::MiraclePainter
    alias :orig_header_right :header_right
    def header_right(context = dummy_context)
      layout = orig_header_right(context)
      layout.text += " via " + message[:source]
      layout
    end
  end
}
