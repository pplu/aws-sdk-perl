package Paws::Route53::HealthCheckObservation;
  use Moose;
  has IPAddress => (is => 'ro', isa => 'Str');
  has StatusReport => (is => 'ro', isa => 'Paws::Route53::StatusReport');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::HealthCheckObservation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::HealthCheckObservation object:

  $service_obj->Method(Att1 => { IPAddress => $value, ..., StatusReport => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::HealthCheckObservation object:

  $result = $service_obj->Method(...);
  $result->Att1->IPAddress

=head1 DESCRIPTION

A complex type that contains the IP address of a Route 53 health
checker and the reason for the health check status.

=head1 ATTRIBUTES


=head2 IPAddress => Str

  The IP address of the Route 53 health checker that performed the health
check.


=head2 StatusReport => L<Paws::Route53::StatusReport>

  A complex type that contains information about the health check status
for the current observation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

