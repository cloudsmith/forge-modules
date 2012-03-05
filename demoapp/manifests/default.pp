# The default way we want to install our demoapp is to use the demoplatform
# and create an instance of it called 'fordemoapp'.
#
class demoapp::default {
  demoplatform::instance { 'fordemoapp':
    # NOTE: demo-error - location is not a parameter of demoplatform
    # (it should be instance_location)
    location +> '/var-www/demoapp' 
  }
}