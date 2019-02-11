package Paws::Robomaker::SimulationApplicationConfig;
  use Moose;
  has Application => (is => 'ro', isa => 'Str', request_name => 'application', traits => ['NameInRequest'], required => 1);
  has ApplicationVersion => (is => 'ro', isa => 'Str', request_name => 'applicationVersion', traits => ['NameInRequest']);
  has LaunchConfig => (is => 'ro', isa => 'Paws::Robomaker::LaunchConfig', request_name => 'launchConfig', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::SimulationApplicationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::SimulationApplicationConfig object:

  $service_obj->Method(Att1 => { Application => $value, ..., LaunchConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::SimulationApplicationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Application

=head1 DESCRIPTION

Information about a simulation application configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => Str

  The application information for the simulation application.


=head2 ApplicationVersion => Str

  The version of the simulation application.


=head2 B<REQUIRED> LaunchConfig => L<Paws::Robomaker::LaunchConfig>

  The launch configuration for the simulation application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

