# Generated from default/object.tt
package Paws::Robomaker::DeploymentLaunchConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Robomaker::Types qw/Robomaker_EnvironmentVariableMap/;
  has EnvironmentVariables => (is => 'ro', isa => Robomaker_EnvironmentVariableMap);
  has LaunchFile => (is => 'ro', isa => Str, required => 1);
  has PackageName => (is => 'ro', isa => Str, required => 1);
  has PostLaunchFile => (is => 'ro', isa => Str);
  has PreLaunchFile => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PackageName' => {
                                  'type' => 'Str'
                                },
               'LaunchFile' => {
                                 'type' => 'Str'
                               },
               'PreLaunchFile' => {
                                    'type' => 'Str'
                                  },
               'EnvironmentVariables' => {
                                           'class' => 'Paws::Robomaker::EnvironmentVariableMap',
                                           'type' => 'Robomaker_EnvironmentVariableMap'
                                         },
               'PostLaunchFile' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'PreLaunchFile' => 'preLaunchFile',
                       'EnvironmentVariables' => 'environmentVariables',
                       'PostLaunchFile' => 'postLaunchFile',
                       'PackageName' => 'packageName',
                       'LaunchFile' => 'launchFile'
                     },
  'IsRequired' => {
                    'PackageName' => 1,
                    'LaunchFile' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DeploymentLaunchConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::DeploymentLaunchConfig object:

  $service_obj->Method(Att1 => { EnvironmentVariables => $value, ..., PreLaunchFile => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::DeploymentLaunchConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->EnvironmentVariables

=head1 DESCRIPTION

Configuration information for a deployment launch.

=head1 ATTRIBUTES


=head2 EnvironmentVariables => Robomaker_EnvironmentVariableMap

  An array of key/value pairs specifying environment variables for the
robot application


=head2 B<REQUIRED> LaunchFile => Str

  The launch file name.


=head2 B<REQUIRED> PackageName => Str

  The package name.


=head2 PostLaunchFile => Str

  The deployment post-launch file. This file will be executed after the
launch file.


=head2 PreLaunchFile => Str

  The deployment pre-launch file. This file will be executed prior to the
launch file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

