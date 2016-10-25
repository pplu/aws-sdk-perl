
package Paws::ELBv2::ModifyTargetGroup;
  use Moose;
  has HealthCheckIntervalSeconds => (is => 'ro', isa => 'Int');
  has HealthCheckPath => (is => 'ro', isa => 'Str');
  has HealthCheckPort => (is => 'ro', isa => 'Str');
  has HealthCheckProtocol => (is => 'ro', isa => 'Str');
  has HealthCheckTimeoutSeconds => (is => 'ro', isa => 'Int');
  has HealthyThresholdCount => (is => 'ro', isa => 'Int');
  has Matcher => (is => 'ro', isa => 'Paws::ELBv2::Matcher');
  has TargetGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has UnhealthyThresholdCount => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyTargetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::ModifyTargetGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyTargetGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ModifyTargetGroup - Arguments for method ModifyTargetGroup on Paws::ELBv2

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyTargetGroup on the 
Elastic Load Balancing service. Use the attributes of this class
as arguments to method ModifyTargetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyTargetGroup.

As an example:

  $service_obj->ModifyTargetGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 HealthCheckIntervalSeconds => Int

The approximate amount of time, in seconds, between health checks of an
individual target.



=head2 HealthCheckPath => Str

The ping path that is the destination for the health check request.



=head2 HealthCheckPort => Str

The port to use to connect with the target.



=head2 HealthCheckProtocol => Str

The protocol to use to connect with the target.

Valid values are: C<"HTTP">, C<"HTTPS">

=head2 HealthCheckTimeoutSeconds => Int

The amount of time, in seconds, during which no response means a failed
health check.



=head2 HealthyThresholdCount => Int

The number of consecutive health checks successes required before
considering an unhealthy target healthy.



=head2 Matcher => L<Paws::ELBv2::Matcher>

The HTTP codes to use when checking for a successful response from a
target.



=head2 B<REQUIRED> TargetGroupArn => Str

The Amazon Resource Name (ARN) of the target group.



=head2 UnhealthyThresholdCount => Int

The number of consecutive health check failures required before
considering the target unhealthy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyTargetGroup in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

