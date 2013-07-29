module StampsHelper
  def add_asset_link(name) 
    link_to_function name do |stamp| 
      stamp.insert_html :bottom, :assets, :partial => 'asset', :object => Asset.new 
    end 
  end
end
