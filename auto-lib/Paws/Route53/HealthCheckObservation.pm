package Paws::Route53::HealthCheckObservation;
  use Moose;
  has IPAddress => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
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

A complex type that contains the last failure reason as reported by one
Amazon Route 53 health checker.

=head1 ATTRIBUTES


=head2 IPAddress => Str

  The IP address of the Amazon Route 53 health checker that provided the
failure reason in C<StatusReport>.


=head2 Region => Str

  The region of the Amazon Route 53 health checker that provided the
status in C<StatusReport>.


=head2 StatusReport => L<Paws::Route53::StatusReport>

  A complex type that contains the last failure reason as reported by one
Amazon Route 53 health checker and the time of the failed health check.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

