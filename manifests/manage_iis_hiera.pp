#
# Class to manage iis with hiera
#
class iis::manage_iis_hiera(
  $createpath_hash          = {},
  $manage_app_pool_hash     = {},
  $manage_binding_hash      = {},
  $manage_site_state_hash   = {},
  $manage_site_hash         = {},
  $manage_vapplication_hash = {},
  $manage_vdirectory_hash   = {},
){
  
  if ( $createpath_hash != {} ){
    validate_hash($createpath_hash)
    create_resources('iis::createpath',$createpath_hash)
  }
  
  if ( $manage_app_pool_hash != {} ){
    validate_hash($manage_app_pool_hash)
    create_resources('iis::manage_app_pool',$manage_app_pool_hash)
  }
  
  if ( $manage_binding_hash != {} ){
    validate_hash($manage_binding_hash)
    create_resources('iis::manage_binding',$manage_binding_hash)
  }
  
  if ( $manage_site_state_hash != {} ){
    validate_hash($manage_site_state_hash)
    create_resources('iis::manage_site_state',$manage_site_state_hash)
  }
  
  if ( $manage_site_hash != {} ){
    validate_hash($manage_site_hash)
    create_resources('iis::manage_site',$manage_site_hash)
  }
  
  if ( $manage_vapplication_hash != {} ){
    validate_hash($manage_vapplication_hash)
    create_resources('iis::manage_virtual_application',$manage_vapplication_hash)
  }
  
  if ( $manage_vdirectory_hash != {} ){
    validate_hash($manage_vdirectory_hash)
    create_resources('iis::manage_virtual_directory',$manage_vdirectory_hash)
  }
}