#
# == Class: gwx
#
# Remove GWX
#
# == Parameters
#
# [*ensure*]
#   The status of GWX in the system. The only valid value and the default is 
#   'absent'. Microsoft may periodically try to switch this back to 'enabled'.
#
class gwx
(
    $ensure = 'absent'
)
{

    validate_re("${ensure}", '^absent$')

    if $::kernel == 'windows' {
        exec { 'gwx-remove':
            command  => template('gwx/remove.ps1.erb'),
            onlyif   => template('gwx/test.ps1.erb'),
            cwd      => 'C:\Windows\System32',
            provider => 'powershell',
        }
    } else {
        fail("Unsupported operating system ${::kernel}")
    }
}
