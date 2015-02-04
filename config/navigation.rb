SimpleNavigation::Configuration.run do |navigation|  
  navigation.items do |primary|
    primary.item :home, 'home', '/'
    primary.item :posts, 'posts', posts_path
    primary.item :portfolios, 'portfolios', portfolios_path
    primary.item :studies, 'studies', studies_path
    primary.item :users, 'users', users_path
    primary.auto_highlight = true
    primary.dom_class = 'nav navbar-nav pull-left'
  end
end