# Generated from callargs_class.tt

package Paws::ELBv2::ModifyTargetGroup;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::ELBv2::Types qw/ELBv2_Matcher/;
  has HealthCheckEnabled => (is => 'ro', isa => Bool, predicate => 1);
  has HealthCheckIntervalSeconds => (is => 'ro', isa => Int, predicate => 1);
  has HealthCheckPath => (is => 'ro', isa => Str, predicate => 1);
  has HealthCheckPort => (is => 'ro', isa => Str, predicate => 1);
  has HealthCheckProtocol => (is => 'ro', isa => Str, predicate => 1);
  has HealthCheckTimeoutSeconds => (is => 'ro', isa => Int, predicate => 1);
  has HealthyThresholdCount => (is => 'ro', isa => Int, predicate => 1);
  has Matcher => (is => 'ro', isa => ELBv2_Matcher, predicate => 1);
  has TargetGroupArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UnhealthyThresholdCount => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ModifyTargetGroup');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ELBv2::ModifyTargetGroupOutput');
  class_has _result_key => (isa => Str, is => 'ro', default => 'ModifyTargetGroupResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HealthCheckTimeoutSeconds' => {
                                                'type' => 'Int'
                                              },
               'HealthCheckPath' => {
                                      'type' => 'Str'
                                    },
               'UnhealthyThresholdCount' => {
                                              'type' => 'Int'
                                            },
               'HealthCheckProtocol' => {
                                          'type' => 'Str'
                                        },
               'TargetGroupArn' => {
                                     'type' => 'Str'
                                   },
               'HealthCheckEnabled' => {
                                         'type' => 'Bool'
                                       },
               'HealthCheckPort' => {
                                      'type' => 'Str'
                                    },
               'Matcher' => {
                              'class' => 'Paws::ELBv2::Matcher',
                              'type' => 'ELBv2_Matcher'
                            },
               'HealthCheckIntervalSeconds' => {
                                                 'type' => 'Int'
                                               },
               'HealthyThresholdCount' => {
                                            'type' => 'Int'
                                          }
             },
  'IsRequired' => {
                    'TargetGroupArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ModifyTargetGroup - Arguments for method ModifyTargetGroup on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyTargetGroup on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method ModifyTargetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyTargetGroup.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    # To modify the health check configuration for a target group
    # This example changes the configuration of the health checks used to
    # evaluate the health of the targets for the specified target group.
    my $ModifyTargetGroupOutput = $elasticloadbalancing->ModifyTargetGroup(
      'HealthCheckPort'     => 443,
      'HealthCheckProtocol' => 'HTTPS',
      'TargetGroupArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-https-targets/2453ed029918f21f'
    );

    # Results:
    my $TargetGroups = $ModifyTargetGroupOutput->TargetGroups;

    # Returns a L<Paws::ELBv2::ModifyTargetGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/ModifyTargetGroup>

=head1 ATTRIBUTES


=head2 HealthCheckEnabled => Bool

Indicates whether health checks are enabled.



=head2 HealthCheckIntervalSeconds => Int

The approximate amount of time, in seconds, between health checks of an
individual target. For Application Load Balancers, the range is 5 to
300 seconds. For Network Load Balancers, the supported values are 10 or
30 seconds.

If the protocol of the target group is TCP, you can't modify this
setting.



=head2 HealthCheckPath => Str

[HTTP/HTTPS health checks] The ping path that is the destination for
the health check request.



=head2 HealthCheckPort => Str

The port the load balancer uses when performing health checks on
targets.



=head2 HealthCheckProtocol => Str

The protocol the load balancer uses when performing health checks on
targets. The TCP protocol is supported for health checks only if the
protocol of the target group is TCP, TLS, UDP, or TCP_UDP. The TLS,
UDP, and TCP_UDP protocols are not supported for health checks.

If the protocol of the target group is TCP, you can't modify this
setting.

Valid values are: C<"HTTP">, C<"HTTPS">, C<"TCP">, C<"TLS">, C<"UDP">, C<"TCP_UDP">

=head2 HealthCheckTimeoutSeconds => Int

[HTTP/HTTPS health checks] The amount of time, in seconds, during which
no response means a failed health check.

If the protocol of the target group is TCP, you can't modify this
setting.



=head2 HealthyThresholdCount => Int

The number of consecutive health checks successes required before
considering an unhealthy target healthy.



=head2 Matcher => ELBv2_Matcher

[HTTP/HTTPS health checks] The HTTP codes to use when checking for a
successful response from a target.

If the protocol of the target group is TCP, you can't modify this
setting.



=head2 B<REQUIRED> TargetGroupArn => Str

The Amazon Resource Name (ARN) of the target group.



=head2 UnhealthyThresholdCount => Int

The number of consecutive health check failures required before
considering the target unhealthy. For Network Load Balancers, this
value must be the same as the healthy threshold count.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyTargetGroup in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

