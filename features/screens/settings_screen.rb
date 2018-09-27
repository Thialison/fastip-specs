#================Classe Settings Sreen====================================#
class Settings

    def initialize
        @percentage = "tipPercentageEditText"
        @btn_save = "saveSettingsButton"
    end

    def home_screen
        @home ||= Home.new
    end

    def change_tip_percentage
        home_screen.tap_settings
        id(@percentage).clear
        id(@percentage).send_keys "20.0"
        id(@btn_save).click
    end

end