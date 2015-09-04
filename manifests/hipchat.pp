# == Class: sensu_handlers::hipchat
#
# Sensu handler for sending to hipchat using hipchat gem
#
# == Parameters
#
# [*api_key*]
#
#  hipchat api key
class sensu_handlers::hipchat (
  $api_key
) inherits sensu_handlers {

 sensu::handler { 'hipchat':
    type    => 'pipe',
    source  => 'puppet:///modules/sensu_handlers/hipchat.rb',
    config  => {
      api_key => $api_key,
      teams   => $teams,
    }
  }

}
