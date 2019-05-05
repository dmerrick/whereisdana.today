###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# Define 404 page
page '/404.html', directory_index: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Activate directory indexes for pretty urls
activate :directory_indexes

activate :title, site: 'Where is Dana today?'

# Active sitemap generator
set :url_root, 'http://whereisdana.today'
activate :search_engine_sitemap,
  default_change_frequency: 'weekly',
  exclude_attr: 'private'

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify HTML on build
  activate :minify_html

  # Minify Javascript on build
  # activate :minify_javascript
end

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

