#
# == Class: wmf::params
#
# Defines some variables based on the operating system
#
class wmf::params {

    case $::osfamily {
        'windows': {
            $package_name = 'powershell'
            $package_provider = 'chocolatey'
        }

        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }

    $ensure = $facts['os']['release']['full'] ? {
        default   => 'present',
        '2008 R2' => '5.0.10586.20170115',
    }

}
