
package Paws::GlobalAccelerator::UpdateEndpointGroup;
  use Moose;
  has EndpointConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::EndpointConfiguration]');
  has EndpointGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has HealthCheckIntervalSeconds => (is => 'ro', isa => 'Int');
  has HealthCheckPath => (is => 'ro', isa => 'Str');
  has HealthCheckPort => (is => 'ro', isa => 'Int');
  has HealthCheckProtocol => (is => 'ro', isa => 'Str');
  has ThresholdCount => (is => 'ro', isa => 'Int');
  has TrafficDialPercentage => (is => 'ro', isa => 'Num');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEndpointGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::UpdateEndpointGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::UpdateEndpointGroup - Arguments for method UpdateEndpointGroup on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEndpointGroup on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method UpdateEndpointGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEndpointGroup.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $UpdateEndpointGroupResponse = $globalaccelerator->UpdateEndpointGroup(
      EndpointGroupArn       => 'MyGenericString',
      EndpointConfigurations => [
        {
          EndpointId => 'MyGenericString',    # max: 255
          Weight     => 1,                    # max: 255; OPTIONAL
        },
        ...
      ],                                      # OPTIONAL
      HealthCheckIntervalSeconds => 1,                    # OPTIONAL
      HealthCheckPath            => 'MyGenericString',    # OPTIONAL
      HealthCheckPort            => 1,                    # OPTIONAL
      HealthCheckProtocol        => 'TCP',                # OPTIONAL
      ThresholdCount             => 1,                    # OPTIONAL
      TrafficDialPercentage      => 1.0,                  # OPTIONAL
    );

    # Results:
    my $EndpointGroup = $UpdateEndpointGroupResponse->EndpointGroup;

    # Returns a L<Paws::GlobalAccelerator::UpdateEndpointGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/UpdateEndpointGroup>

=head1 ATTRIBUTES


=head2 EndpointConfigurations => ArrayRef[L<Paws::GlobalAccelerator::EndpointConfiguration>]

The list of endpoint objects.



=head2 B<REQUIRED> EndpointGroupArn => Str

The Amazon Resource Name (ARN) of the endpoint group.



=head2 HealthCheckIntervalSeconds => Int

The timeE<mdash>10 seconds or 30 secondsE<mdash>between each health
check for an endpoint. The default value is 30.



=head2 HealthCheckPath => Str

If the protocol is HTTP/S, then this specifies the path that is the
destination for health check targets. The default value is slash (/).



=head2 HealthCheckPort => Int

The port that AWS Global Accelerator uses to check the health of
endpoints that are part of this endpoint group. The default port is the
listener port that this endpoint group is associated with. If the
listener port is a list of ports, Global Accelerator uses the first
port in the list.



=head2 HealthCheckProtocol => Str

The protocol that AWS Global Accelerator uses to check the health of
endpoints that are part of this endpoint group. The default value is
TCP.

Valid values are: C<"TCP">, C<"HTTP">, C<"HTTPS">

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

This class forms part of L<Paws>, documenting arguments for method UpdateEndpointGroup in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

