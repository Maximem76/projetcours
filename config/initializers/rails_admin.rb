RailsAdmin.config do |config|

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end


RailsAdmin.config do |config|
  config.model 'Article' do
    edit do
      field :title
      field :body
      field :author
      field :image
      field :created_at
      field :tag_list 
    end
  end
end

