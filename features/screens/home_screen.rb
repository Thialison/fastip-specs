#================Classe Home Sreen====================================#
class Home
    include RSpec::Matchers

    def initialize
        @home_screen = "home"
        @bills_amount = "billAmtEditText"
        @btn_calc = "calcTipButton"
        @total_amount = "totalAmtTextView"
        @settings = "menu_settings"
        @tip_percentage = "tipPctTextView"
    end

    def screen_loaded?
        id(@home_screen).displayed?
    end

    def fill_bills_amount(value)
        id(@bills_amount).send_keys value
        id(@btn_calc).click
    end

    def tap_settings
        id(@settings).click
    end

    def validate_total_amount(value)
        total = id(@total_amount).text
        expect(total).to eq(value)
    end

    def validade_new_tip_percentage
        teste = id(@tip_percentage).text
        expect(teste).to eq("20.0%")
    end

end