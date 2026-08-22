# frozen_string_literal: true

require "cgi"

module RobotsMeta
  def self.inject(item)
    directives = item.data["robots"].to_s.strip
    return if directives.empty? || !item.output.include?("</head>")
    return if item.output.match?(/<meta\s+name=["']robots["']/i)

    tag = %(<meta name="robots" content="#{CGI.escapeHTML(directives)}">)
    item.output.sub!("</head>", "  #{tag}\n</head>")
  end
end

Jekyll::Hooks.register :pages, :post_render do |page|
  RobotsMeta.inject(page)
end

Jekyll::Hooks.register :documents, :post_render do |document|
  RobotsMeta.inject(document)
end
