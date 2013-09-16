module StampsHelper
  def add_asset_link(name) 
    link_to_function name do |stamp| 
      stamp.insert_html :bottom, :assets, :partial => 'asset', :object => Asset.new 
    end 
  end
  
  ##def duplicate
#    @existing_stamp = Stamp.find(params[:id])
#    #create new object with attributes of existing record 
#    Stamp.new
#    @stamp = Stamp.new(@existing_stamp.attributes)  
#  end
  
end
