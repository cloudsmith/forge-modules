# Creates an "instance of a platform"
# The README file from the demoplatform module is downloaded into
# /tmp/README-<instancename>
#
define demoplatform::instance($instance_location = '/tmp') {
  include demoplatform::internal::prerequisites
  $instance_alias = $name
	
  exec { "demo_download-${instance_alias}":
    command => "curl -sS \"https://raw.github.com/cloudsmith/public-puppetmodules/master/demoplatform/README\" > ${instance_location}/README-${instance_alias}",
    path => ['/usr/local/bin', '/bin', '/usr/bin'],
    creates => "${instance_location}/README-${instance_alias}",
    require => Package['curl'],
  }
 
}