package Paws::ELBv2::TargetGroup;
  use Moose;
  has HealthCheckEnabled => (is => 'ro', isa => 'Bool');
  has HealthCheckIntervalSeconds => (is => 'ro', isa => 'Int');
  has HealthCheckPath => (is => 'ro', isa => 'Str');
  has HealthCheckPort => (is => 'ro', isa => 'Str');
  has HealthCheckProtocol => (is => 'ro', isa => 'Str');
  has HealthCheckTimeoutSeconds => (is => 'ro', isa => 'Int');
  has HealthyThresholdCount => (is => 'ro', isa => 'Int');
  has LoadBalancerArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Matcher => (is => 'ro', isa => 'Paws::ELBv2::Matcher');
  has Port => (is => 'ro', isa => 'Int');
  has Protocol => (is => 'ro', isa => 'Str');
  has TargetGroupArn => (is => 'ro', isa => 'Str');
  has TargetGroupName => (is => 'ro', isa => 'Str');
  has TargetType => (is => 'ro', isa => 'Str');
  has UnhealthyThresholdCount => (is => 'ro', isa => 'Int');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::TargetGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::TargetGroup object:

  $service_obj->Method(Att1 => { HealthCheckEnabled => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::TargetGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->HealthCheckEnabled

=head1 DESCRIPTION

Information about a target group.

=head1 ATTRIBUTES


=head2 HealthCheckEnabled => Bool

  Indicates whether health checks are enabled.


=head2 HealthCheckIntervalSeconds => Int

  The approximate amount of time, in seconds, between health checks of an
individual target.


=head2 HealthCheckPath => Str

  The destination for the health check request.


=head2 HealthCheckPort => Str

  The port to use to connect with the target.


=head2 HealthCheckProtocol => Str

  The protocol to use to connect with the target.


=head2 HealthCheckTimeoutSeconds => Int

  The amount of time, in seconds, during which no response means a failed
health check.


=head2 HealthyThresholdCount => Int

  The number of consecutive health checks successes required before
considering an unhealthy target healthy.


=head2 LoadBalancerArns => ArrayRef[Str|Undef]

  The Amazon Resource Names (ARN) of the load balancers that route
traffic to this target group.


=head2 Matcher => L<Paws::ELBv2::Matcher>

  The HTTP codes to use when checking for a successful response from a
target.


=head2 Port => Int

  The port on which the targets are listening.


=head2 Protocol => Str

  The protocol to use for routing traffic to the targets.


=head2 TargetGroupArn => Str

  The Amazon Resource Name (ARN) of the target group.


=head2 TargetGroupName => Str

  The name of the target group.


=head2 TargetType => Str

  The type of target that you must specify when registering targets with
this target group. The possible values are C<instance> (targets are
specified by instance ID) or C<ip> (targets are specified by IP
address).


=head2 UnhealthyThresholdCount => Int

  The number of consecutive health check failures required before
considering the target unhealthy.


=head2 VpcId => Str

  The ID of the VPC for the targets.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

