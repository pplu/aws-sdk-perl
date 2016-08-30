
package Paws::ELBv2::CreateTargetGroup;
  use Moose;
  has HealthCheckIntervalSeconds => (is => 'ro', isa => 'Int');
  has HealthCheckPath => (is => 'ro', isa => 'Str');
  has HealthCheckPort => (is => 'ro', isa => 'Str');
  has HealthCheckProtocol => (is => 'ro', isa => 'Str');
  has HealthCheckTimeoutSeconds => (is => 'ro', isa => 'Int');
  has HealthyThresholdCount => (is => 'ro', isa => 'Int');
  has Matcher => (is => 'ro', isa => 'Paws::ELBv2::Matcher');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Port => (is => 'ro', isa => 'Int', required => 1);
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has UnhealthyThresholdCount => (is => 'ro', isa => 'Int');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTargetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::CreateTargetGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTargetGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::CreateTargetGroup - Arguments for method CreateTargetGroup on Paws::ELBv2

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTargetGroup on the 
Elastic Load Balancing service. Use the attributes of this class
as arguments to method CreateTargetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTargetGroup.

As an example:

  $service_obj->CreateTargetGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 HealthCheckIntervalSeconds => Int

The approximate amount of time, in seconds, between health checks of an
individual target. The default is 30 seconds.



=head2 HealthCheckPath => Str

The ping path that is the destination on the targets for health checks.
The default is /.



=head2 HealthCheckPort => Str

The port the load balancer uses when performing health checks on
targets. The default is C<traffic-port>, which indicates the port on
which each target receives traffic from the load balancer.



=head2 HealthCheckProtocol => Str

The protocol the load balancer uses when performing health checks on
targets. The default is the HTTP protocol.

Valid values are: C<"HTTP">, C<"HTTPS">

=head2 HealthCheckTimeoutSeconds => Int

The amount of time, in seconds, during which no response from a target
means a failed health check. The default is 5 seconds.



=head2 HealthyThresholdCount => Int

The number of consecutive health checks successes required before
considering an unhealthy target healthy. The default is 5.



=head2 Matcher => L<Paws::ELBv2::Matcher>

The HTTP codes to use when checking for a successful response from a
target. The default is 200.



=head2 B<REQUIRED> Name => Str

The name of the target group.



=head2 B<REQUIRED> Port => Int

The port on which the targets receive traffic. This port is used unless
you specify a port override when registering the target.



=head2 B<REQUIRED> Protocol => Str

The protocol to use for routing traffic to the targets.

Valid values are: C<"HTTP">, C<"HTTPS">

=head2 UnhealthyThresholdCount => Int

The number of consecutive health check failures required before
considering a target unhealthy. The default is 2.



=head2 B<REQUIRED> VpcId => Str

The identifier of the virtual private cloud (VPC).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTargetGroup in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

