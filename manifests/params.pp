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
}
