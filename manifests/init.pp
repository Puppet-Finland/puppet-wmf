# == Class: wmf
#
# This class sets up wmf
#
# Currently functionality is limited to installing or removing the package.
#
# == Parameters
#
# [*manage*]
#   Whether to manage wmf using Puppet. Valid values are true (default) 
#   and false.
# [*ensure*]
#   Status of Windows Management Framework. Valid values are 'present' (default)
#   and 'absent'.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class wmf
(
    Boolean                  $manage = true,
    Enum['present','absent'] $ensure = 'present'

) inherits wmf::params
{

if $manage {
    class { '::wmf::install':
        ensure => $ensure,
    }
}
}
