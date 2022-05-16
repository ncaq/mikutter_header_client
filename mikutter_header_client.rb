Plugin.create(:mikutter_header_client) {
  class Plugin::Gtk3::MiraclePainter
    def header_left_markup
      header =
        "<b>#{Pango.escape(message.user.idname || '')}</b> #{Pango.escape(message.user.name || '')}"
      if message[:source]
        header += " <b>via #{Pango.escape(message[:source] || '')}</b>"
      end
      Pango.parse_markup(header)
    end
  end
}
