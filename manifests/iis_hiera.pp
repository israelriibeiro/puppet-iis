#
# Class to manage iis with hiera
#
class iis::iis_hiera(
  $createpath_hash     = {},
  $app_pool_hash       = {},
  $binding_hash        = {},
  $site_state_hash     = {},
  $site_hash           = {},
  $vapplication_hash   = {},
  $vdirectory_hash     = {},
){
  
  if ( $createpath_hash != {} ){
    validate_hash($createpath_hash)
    create_resources('iis::createpath',$createpath_hash)
  }
  
  if ( $app_pool_hash != {} ){
    validate_hash($app_pool_hash)
    create_resources('iis::app_pool',$app_pool_hash)
  }
  
  if ( $binding_hash != {} ){
    validate_hash($binding_hash)
    create_resources('iis::binding',$binding_hash)
  }
  
  if ( $site_state_hash != {} ){
    validate_hash($site_state_hash)
    create_resources('iis::site_state',$site_state_hash)
  }
  
  if ( $site_hash != {} ){
    validate_hash($site_hash)
    create_resources('iis::site',$site_hash)
  }
  
  if ( $vapplication_hash != {} ){
    validate_hash($vapplication_hash)
    create_resources('iis::virtual_application',$vapplication_hash)
  }
  
  if ( $vdirectory_hash != {} ){
    validate_hash($vdirectory_hash)
    create_resources('iis::virtual_directory',$vdirectory_hash)
  }
}