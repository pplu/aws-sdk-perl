package Paws::Robomaker::LaunchConfig;
  use Moose;
  has EnvironmentVariables => (is => 'ro', isa => 'Paws::Robomaker::EnvironmentVariableMap', request_name => 'environmentVariables', traits => ['NameInRequest']);
  has LaunchFile => (is => 'ro', isa => 'Str', request_name => 'launchFile', traits => ['NameInRequest'], required => 1);
  has PackageName => (is => 'ro', isa => 'Str', request_name => 'packageName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::LaunchConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::LaunchConfig object:

  $service_obj->Method(Att1 => { EnvironmentVariables => $value, ..., PackageName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::LaunchConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->EnvironmentVariables

=head1 DESCRIPTION

Information about a launch configuration.

=head1 ATTRIBUTES


=head2 EnvironmentVariables => L<Paws::Robomaker::EnvironmentVariableMap>

  The environment variables for the application launch.


=head2 B<REQUIRED> LaunchFile => Str

  The launch file name.


=head2 B<REQUIRED> PackageName => Str

  The package name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

