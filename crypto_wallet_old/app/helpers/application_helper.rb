module ApplicationHelper
    
    def locale
        I18n.locale == :en ? "English-US" : "Português do Brasil"        
    end

    def data_us(data)
        data.strftime("%m/%d/%Y") 
    end

end
