# Generated from callargs_class.tt

package Paws::AutoScaling::UpdateAutoScalingGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int Bool/;
  use Paws::AutoScaling::Types qw/AutoScaling_LaunchTemplateSpecification AutoScaling_MixedInstancesPolicy/;
  has AutoScalingGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has AvailabilityZones => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has DefaultCooldown => (is => 'ro', isa => Int, predicate => 1);
  has DesiredCapacity => (is => 'ro', isa => Int, predicate => 1);
  has HealthCheckGracePeriod => (is => 'ro', isa => Int, predicate => 1);
  has HealthCheckType => (is => 'ro', isa => Str, predicate => 1);
  has LaunchConfigurationName => (is => 'ro', isa => Str, predicate => 1);
  has LaunchTemplate => (is => 'ro', isa => AutoScaling_LaunchTemplateSpecification, predicate => 1);
  has MaxInstanceLifetime => (is => 'ro', isa => Int, predicate => 1);
  has MaxSize => (is => 'ro', isa => Int, predicate => 1);
  has MinSize => (is => 'ro', isa => Int, predicate => 1);
  has MixedInstancesPolicy => (is => 'ro', isa => AutoScaling_MixedInstancesPolicy, predicate => 1);
  has NewInstancesProtectedFromScaleIn => (is => 'ro', isa => Bool, predicate => 1);
  has PlacementGroup => (is => 'ro', isa => Str, predicate => 1);
  has ServiceLinkedRoleARN => (is => 'ro', isa => Str, predicate => 1);
  has TerminationPolicies => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has VPCZoneIdentifier => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateAutoScalingGroup');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'AutoScalingGroupName' => 1
                  },
  'types' => {
               'LaunchConfigurationName' => {
                                              'type' => 'Str'
                                            },
               'AvailabilityZones' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'AutoScalingGroupName' => {
                                           'type' => 'Str'
                                         },
               'LaunchTemplate' => {
                                     'type' => 'AutoScaling_LaunchTemplateSpecification',
                                     'class' => 'Paws::AutoScaling::LaunchTemplateSpecification'
                                   },
               'DesiredCapacity' => {
                                      'type' => 'Int'
                                    },
               'HealthCheckGracePeriod' => {
                                             'type' => 'Int'
                                           },
               'NewInstancesProtectedFromScaleIn' => {
                                                       'type' => 'Bool'
                                                     },
               'VPCZoneIdentifier' => {
                                        'type' => 'Str'
                                      },
               'ServiceLinkedRoleARN' => {
                                           'type' => 'Str'
                                         },
               'TerminationPolicies' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'PlacementGroup' => {
                                     'type' => 'Str'
                                   },
               'MixedInstancesPolicy' => {
                                           'type' => 'AutoScaling_MixedInstancesPolicy',
                                           'class' => 'Paws::AutoScaling::MixedInstancesPolicy'
                                         },
               'HealthCheckType' => {
                                      'type' => 'Str'
                                    },
               'DefaultCooldown' => {
                                      'type' => 'Int'
                                    },
               'MaxInstanceLifetime' => {
                                          'type' => 'Int'
                                        },
               'MaxSize' => {
                              'type' => 'Int'
                            },
               'MinSize' => {
                              'type' => 'Int'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::UpdateAutoScalingGroup - Arguments for method UpdateAutoScalingGroup on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAutoScalingGroup on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method UpdateAutoScalingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAutoScalingGroup.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
   # To update the launch configuration
   # This example updates the launch configuration of the specified Auto Scaling
   # group.
    $autoscaling->UpdateAutoScalingGroup(
      'AutoScalingGroupName'    => 'my-auto-scaling-group',
      'LaunchConfigurationName' => 'new-launch-config'
    );

    # To update the minimum and maximum size
    # This example updates the minimum size and maximum size of the specified
    # Auto Scaling group.
    $autoscaling->UpdateAutoScalingGroup(
      'AutoScalingGroupName' => 'my-auto-scaling-group',
      'MaxSize'              => 3,
      'MinSize'              => 1
    );

    # To enable instance protection
    # This example enables instance protection for the specified Auto Scaling
    # group.
    $autoscaling->UpdateAutoScalingGroup(
      'AutoScalingGroupName'             => 'my-auto-scaling-group',
      'NewInstancesProtectedFromScaleIn' => 1
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/UpdateAutoScalingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 AvailabilityZones => ArrayRef[Str|Undef]

One or more Availability Zones for the group.



=head2 DefaultCooldown => Int

The amount of time, in seconds, after a scaling activity completes
before another scaling activity can start. The default value is C<300>.
This cooldown period is not used when a scaling-specific cooldown is
specified.

Cooldown periods are not supported for target tracking scaling
policies, step scaling policies, or scheduled scaling. For more
information, see Scaling Cooldowns
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 DesiredCapacity => Int

The number of EC2 instances that should be running in the Auto Scaling
group. This number must be greater than or equal to the minimum size of
the group and less than or equal to the maximum size of the group.



=head2 HealthCheckGracePeriod => Int

The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
before checking the health status of an EC2 instance that has come into
service. The default value is C<0>.

For more information, see Health Check Grace Period
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html#health-check-grace-period)
in the I<Amazon EC2 Auto Scaling User Guide>.

Conditional: This parameter is required if you are adding an C<ELB>
health check.



=head2 HealthCheckType => Str

The service to use for the health checks. The valid values are C<EC2>
and C<ELB>. If you configure an Auto Scaling group to use ELB health
checks, it considers the instance unhealthy if it fails either the EC2
status checks or the load balancer health checks.



=head2 LaunchConfigurationName => Str

The name of the launch configuration. If you specify
C<LaunchConfigurationName> in your update request, you can't specify
C<LaunchTemplate> or C<MixedInstancesPolicy>.



=head2 LaunchTemplate => AutoScaling_LaunchTemplateSpecification

The launch template and version to use to specify the updates. If you
specify C<LaunchTemplate> in your update request, you can't specify
C<LaunchConfigurationName> or C<MixedInstancesPolicy>.

For more information, see LaunchTemplateSpecification
(https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_LaunchTemplateSpecification.html)
in the I<Amazon EC2 Auto Scaling API Reference>.



=head2 MaxInstanceLifetime => Int

The maximum amount of time, in seconds, that an instance can be in
service.

Valid Range: Minimum value of 604800.



=head2 MaxSize => Int

The maximum size of the Auto Scaling group.



=head2 MinSize => Int

The minimum size of the Auto Scaling group.



=head2 MixedInstancesPolicy => AutoScaling_MixedInstancesPolicy

An embedded object that specifies a mixed instances policy.

In your call to C<UpdateAutoScalingGroup>, you can make changes to the
policy that is specified. All optional parameters are left unchanged if
not specified.

For more information, see MixedInstancesPolicy
(https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_MixedInstancesPolicy.html)
in the I<Amazon EC2 Auto Scaling API Reference> and Auto Scaling Groups
with Multiple Instance Types and Purchase Options
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-purchase-options.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 NewInstancesProtectedFromScaleIn => Bool

Indicates whether newly launched instances are protected from
termination by Amazon EC2 Auto Scaling when scaling in.

For more information about preventing instances from terminating on
scale in, see Instance Protection
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 PlacementGroup => Str

The name of the placement group into which to launch your instances, if
any. A placement group is a logical grouping of instances within a
single Availability Zone. You cannot specify multiple Availability
Zones and a placement group. For more information, see Placement Groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
in the I<Amazon EC2 User Guide for Linux Instances>.



=head2 ServiceLinkedRoleARN => Str

The Amazon Resource Name (ARN) of the service-linked role that the Auto
Scaling group uses to call other AWS services on your behalf. For more
information, see Service-Linked Roles
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 TerminationPolicies => ArrayRef[Str|Undef]

A standalone termination policy or a list of termination policies used
to select the instance to terminate. The policies are executed in the
order that they are listed.

For more information, see Controlling Which Instances Auto Scaling
Terminates During Scale In
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 VPCZoneIdentifier => Str

A comma-separated list of subnet IDs for virtual private cloud (VPC).

If you specify C<VPCZoneIdentifier> with C<AvailabilityZones>, the
subnets that you specify for this parameter must reside in those
Availability Zones.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAutoScalingGroup in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

