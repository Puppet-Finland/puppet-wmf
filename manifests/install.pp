# == Class: wmf::install
#
# This class installs wmf
#
class wmf::install
(
    $ensure

) inherits wmf::params
{
    package { $::wmf::params::package_name:
        ensure   => $ensure,
        provider => $::wmf::params::package_provider,
    }
}
