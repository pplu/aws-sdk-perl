
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
  has TargetType => (is => 'ro', isa => 'Str');
  has UnhealthyThresholdCount => (is => 'ro', isa => 'Int');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTargetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::CreateTargetGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTargetGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::CreateTargetGroup - Arguments for method CreateTargetGroup on L<Paws::ELBv2>

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
individual target. For Application Load Balancers, the range is 5 to
300 seconds. For Network Load Balancers, the supported values are 10 or
30 seconds. The default is 30 seconds.



=head2 HealthCheckPath => Str

[HTTP/HTTPS health checks] The ping path that is the destination on the
targets for health checks. The default is /.



=head2 HealthCheckPort => Str

The port the load balancer uses when performing health checks on
targets. The default is C<traffic-port>, which is the port on which
each target receives traffic from the load balancer.



=head2 HealthCheckProtocol => Str

The protocol the load balancer uses when performing health checks on
targets. The TCP protocol is supported only if the protocol of the
target group is TCP. For Application Load Balancers, the default is
HTTP. For Network Load Balancers, the default is TCP.

Valid values are: C<"HTTP">, C<"HTTPS">, C<"TCP">

=head2 HealthCheckTimeoutSeconds => Int

The amount of time, in seconds, during which no response from a target
means a failed health check. For Application Load Balancers, the range
is 2 to 60 seconds and the default is 5 seconds. For Network Load
Balancers, this is 10 seconds for TCP and HTTPS health checks and 6
seconds for HTTP health checks.



=head2 HealthyThresholdCount => Int

The number of consecutive health checks successes required before
considering an unhealthy target healthy. For Application Load
Balancers, the default is 5. For Network Load Balancers, the default is
3.



=head2 Matcher => L<Paws::ELBv2::Matcher>

[HTTP/HTTPS health checks] The HTTP codes to use when checking for a
successful response from a target.



=head2 B<REQUIRED> Name => Str

The name of the target group.

This name must be unique per region per account, can have a maximum of
32 characters, must contain only alphanumeric characters or hyphens,
and must not begin or end with a hyphen.



=head2 B<REQUIRED> Port => Int

The port on which the targets receive traffic. This port is used unless
you specify a port override when registering the target.



=head2 B<REQUIRED> Protocol => Str

The protocol to use for routing traffic to the targets. For Application
Load Balancers, the supported protocols are HTTP and HTTPS. For Network
Load Balancers, the supported protocol is TCP.

Valid values are: C<"HTTP">, C<"HTTPS">, C<"TCP">

=head2 TargetType => Str

The type of target that you must specify when registering targets with
this target group. The possible values are C<instance> (targets are
specified by instance ID) or C<ip> (targets are specified by IP
address). The default is C<instance>. Note that you can't specify
targets for a target group using both instance IDs and IP addresses.

If the target type is C<ip>, specify IP addresses from the subnets of
the virtual private cloud (VPC) for the target group, the RFC 1918
range (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598
range (100.64.0.0/10). You can't specify publicly routable IP
addresses.

Valid values are: C<"instance">, C<"ip">

=head2 UnhealthyThresholdCount => Int

The number of consecutive health check failures required before
considering a target unhealthy. For Application Load Balancers, the
default is 2. For Network Load Balancers, this value must be the same
as the healthy threshold count.



=head2 B<REQUIRED> VpcId => Str

The identifier of the virtual private cloud (VPC).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTargetGroup in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

