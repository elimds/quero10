# Customize
Time::DATE_FORMATS[:custon] = "%d/%m/%Y"
Date::DATE_FORMATS[:custom] = "%d/%m/%Y"


Date::MONTHNAMES = [nil] + %w(Janeiro Fevereiro Março Abril Maio Junho Julho Agosto Setembro Outubro Novembro Dezembro)
Date::DAYNAMES = %w(Domingo Segunda-Feira Terça-Feira Quarta-Feira Quinta-Feira Sexta-Feira Sábado)
Date::ABBR_MONTHNAMES = [nil] + %w(Jan Fev Mar Abr Mai Jun Jul Aug Set Out Nov Dez)
Date::ABBR_DAYNAMES = %w(Dom Seg Ter Qua Qui Sex Sab)


# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!


 

