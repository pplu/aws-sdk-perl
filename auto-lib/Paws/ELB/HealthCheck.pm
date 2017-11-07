package Paws::ELB::HealthCheck;
  use Moose;
  has HealthyThreshold => (is => 'ro', isa => 'Int', required => 1);
  has Interval => (is => 'ro', isa => 'Int', required => 1);
  has Target => (is => 'ro', isa => 'Str', required => 1);
  has Timeout => (is => 'ro', isa => 'Int', required => 1);
  has UnhealthyThreshold => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::HealthCheck

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELB::HealthCheck object:

  $service_obj->Method(Att1 => { HealthyThreshold => $value, ..., UnhealthyThreshold => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELB::HealthCheck object:

  $result = $service_obj->Method(...);
  $result->Att1->HealthyThreshold

=head1 DESCRIPTION

Information about a health check.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthyThreshold => Int

  The number of consecutive health checks successes required before
moving the instance to the C<Healthy> state.


=head2 B<REQUIRED> Interval => Int

  The approximate interval, in seconds, between health checks of an
individual instance.


=head2 B<REQUIRED> Target => Str

  The instance being checked. The protocol is either TCP, HTTP, HTTPS, or
SSL. The range of valid ports is one (1) through 65535.

TCP is the default, specified as a TCP: port pair, for example
"TCP:5000". In this case, a health check simply attempts to open a TCP
connection to the instance on the specified port. Failure to connect
within the configured timeout is considered unhealthy.

SSL is also specified as SSL: port pair, for example, SSL:5000.

For HTTP/HTTPS, you must include a ping path in the string. HTTP is
specified as a HTTP:port;/;PathToPing; grouping, for example
"HTTP:80/weather/us/wa/seattle". In this case, a HTTP GET request is
issued to the instance on the given port and path. Any answer other
than "200 OK" within the timeout period is considered unhealthy.

The total length of the HTTP ping target must be 1024 16-bit Unicode
characters or less.


=head2 B<REQUIRED> Timeout => Int

  The amount of time, in seconds, during which no response means a failed
health check.

This value must be less than the C<Interval> value.


=head2 B<REQUIRED> UnhealthyThreshold => Int

  The number of consecutive health check failures required before moving
the instance to the C<Unhealthy> state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

