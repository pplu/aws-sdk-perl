package Paws::GlobalAccelerator::EndpointGroup;
  use Moose;
  has EndpointDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::EndpointDescription]');
  has EndpointGroupArn => (is => 'ro', isa => 'Str');
  has EndpointGroupRegion => (is => 'ro', isa => 'Str');
  has HealthCheckIntervalSeconds => (is => 'ro', isa => 'Int');
  has HealthCheckPath => (is => 'ro', isa => 'Str');
  has HealthCheckPort => (is => 'ro', isa => 'Int');
  has HealthCheckProtocol => (is => 'ro', isa => 'Str');
  has ThresholdCount => (is => 'ro', isa => 'Int');
  has TrafficDialPercentage => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::EndpointGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GlobalAccelerator::EndpointGroup object:

  $service_obj->Method(Att1 => { EndpointDescriptions => $value, ..., TrafficDialPercentage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GlobalAccelerator::EndpointGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->EndpointDescriptions

=head1 DESCRIPTION

A complex type for the endpoint group. An AWS Region can have only one
endpoint group for a specific listener.

=head1 ATTRIBUTES


=head2 EndpointDescriptions => ArrayRef[L<Paws::GlobalAccelerator::EndpointDescription>]

  The list of endpoint objects.


=head2 EndpointGroupArn => Str

  The Amazon Resource Name (ARN) of the endpoint group.


=head2 EndpointGroupRegion => Str

  The AWS Region that this endpoint group belongs.


=head2 HealthCheckIntervalSeconds => Int

  The timeE<mdash>10 seconds or 30 secondsE<mdash>between health checks
for each endpoint. The default value is 30.


=head2 HealthCheckPath => Str

  If the protocol is HTTP/S, then this value provides the ping path that
Global Accelerator uses for the destination on the endpoints for health
checks. The default is slash (/).


=head2 HealthCheckPort => Int

  The port that Global Accelerator uses to perform health checks on
endpoints that are part of this endpoint group.

The default port is the port for the listener that this endpoint group
is associated with. If the listener port is a list, Global Accelerator
uses the first specified port in the list of ports.


=head2 HealthCheckProtocol => Str

  The protocol that Global Accelerator uses to perform health checks on
endpoints that are part of this endpoint group. The default value is
TCP.


=head2 ThresholdCount => Int

  The number of consecutive health checks required to set the state of a
healthy endpoint to unhealthy, or to set an unhealthy endpoint to
healthy. The default value is 3.


=head2 TrafficDialPercentage => Num

  The percentage of traffic to send to an AWS Region. Additional traffic
is distributed to other endpoint groups for this listener.

Use this action to increase (dial up) or decrease (dial down) traffic
to a specific Region. The percentage is applied to the traffic that
would otherwise have been routed to the Region based on optimal
routing.

The default value is 100.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

