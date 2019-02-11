package Paws::Robomaker::DeploymentLaunchConfig;
  use Moose;
  has EnvironmentVariables => (is => 'ro', isa => 'Paws::Robomaker::EnvironmentVariableMap', request_name => 'environmentVariables', traits => ['NameInRequest']);
  has LaunchFile => (is => 'ro', isa => 'Str', request_name => 'launchFile', traits => ['NameInRequest'], required => 1);
  has PackageName => (is => 'ro', isa => 'Str', request_name => 'packageName', traits => ['NameInRequest'], required => 1);
  has PostLaunchFile => (is => 'ro', isa => 'Str', request_name => 'postLaunchFile', traits => ['NameInRequest']);
  has PreLaunchFile => (is => 'ro', isa => 'Str', request_name => 'preLaunchFile', traits => ['NameInRequest']);
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


=head2 EnvironmentVariables => L<Paws::Robomaker::EnvironmentVariableMap>

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

