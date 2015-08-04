#
# Class to manage iis with hiera
#
class iis::manage_iis_hiera(
  $iis_data_hash = {},
){
  
   validate_re($iis_data_hash['resource'], '^(iis::createpath|iis::manage_app_pool|iis::manage_binding|iis::manage_site_state|iis::manage_site|iis::manage_virtual_application|iis::manage_virtual_directory)$', 'ensure to use one already create resource(define)')

  if ( $iis_data_hash != {} ){
    validate_hash($iis_data_hash)
    create_resources($iis_data_hash['resource'],$iis_data_hash['hash_resource'])
  }
  
}