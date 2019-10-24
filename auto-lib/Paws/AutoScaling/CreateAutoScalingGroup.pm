# Generated from callargs_class.tt

package Paws::AutoScaling::CreateAutoScalingGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int Bool/;
  use Paws::AutoScaling::Types qw/AutoScaling_Tag AutoScaling_LaunchTemplateSpecification AutoScaling_MixedInstancesPolicy AutoScaling_LifecycleHookSpecification/;
  has AutoScalingGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has AvailabilityZones => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has DefaultCooldown => (is => 'ro', isa => Int, predicate => 1);
  has DesiredCapacity => (is => 'ro', isa => Int, predicate => 1);
  has HealthCheckGracePeriod => (is => 'ro', isa => Int, predicate => 1);
  has HealthCheckType => (is => 'ro', isa => Str, predicate => 1);
  has InstanceId => (is => 'ro', isa => Str, predicate => 1);
  has LaunchConfigurationName => (is => 'ro', isa => Str, predicate => 1);
  has LaunchTemplate => (is => 'ro', isa => AutoScaling_LaunchTemplateSpecification, predicate => 1);
  has LifecycleHookSpecificationList => (is => 'ro', isa => ArrayRef[AutoScaling_LifecycleHookSpecification], predicate => 1);
  has LoadBalancerNames => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has MaxSize => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has MinSize => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has MixedInstancesPolicy => (is => 'ro', isa => AutoScaling_MixedInstancesPolicy, predicate => 1);
  has NewInstancesProtectedFromScaleIn => (is => 'ro', isa => Bool, predicate => 1);
  has PlacementGroup => (is => 'ro', isa => Str, predicate => 1);
  has ServiceLinkedRoleARN => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[AutoScaling_Tag], predicate => 1);
  has TargetGroupARNs => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has TerminationPolicies => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has VPCZoneIdentifier => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateAutoScalingGroup');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TerminationPolicies' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'LaunchTemplate' => {
                                     'class' => 'Paws::AutoScaling::LaunchTemplateSpecification',
                                     'type' => 'AutoScaling_LaunchTemplateSpecification'
                                   },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'MinSize' => {
                              'type' => 'Int'
                            },
               'LoadBalancerNames' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'AutoScalingGroupName' => {
                                           'type' => 'Str'
                                         },
               'LifecycleHookSpecificationList' => {
                                                     'class' => 'Paws::AutoScaling::LifecycleHookSpecification',
                                                     'type' => 'ArrayRef[AutoScaling_LifecycleHookSpecification]'
                                                   },
               'HealthCheckType' => {
                                      'type' => 'Str'
                                    },
               'VPCZoneIdentifier' => {
                                        'type' => 'Str'
                                      },
               'TargetGroupARNs' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'ServiceLinkedRoleARN' => {
                                           'type' => 'Str'
                                         },
               'PlacementGroup' => {
                                     'type' => 'Str'
                                   },
               'MixedInstancesPolicy' => {
                                           'class' => 'Paws::AutoScaling::MixedInstancesPolicy',
                                           'type' => 'AutoScaling_MixedInstancesPolicy'
                                         },
               'MaxSize' => {
                              'type' => 'Int'
                            },
               'NewInstancesProtectedFromScaleIn' => {
                                                       'type' => 'Bool'
                                                     },
               'AvailabilityZones' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'DesiredCapacity' => {
                                      'type' => 'Int'
                                    },
               'LaunchConfigurationName' => {
                                              'type' => 'Str'
                                            },
               'HealthCheckGracePeriod' => {
                                             'type' => 'Int'
                                           },
               'DefaultCooldown' => {
                                      'type' => 'Int'
                                    },
               'Tags' => {
                           'class' => 'Paws::AutoScaling::Tag',
                           'type' => 'ArrayRef[AutoScaling_Tag]'
                         }
             },
  'IsRequired' => {
                    'MaxSize' => 1,
                    'MinSize' => 1,
                    'AutoScalingGroupName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::CreateAutoScalingGroup - Arguments for method CreateAutoScalingGroup on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAutoScalingGroup on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method CreateAutoScalingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAutoScalingGroup.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To create an Auto Scaling group
    # This example creates an Auto Scaling group.
    $autoscaling->CreateAutoScalingGroup(
      'AutoScalingGroupName'    => 'my-auto-scaling-group',
      'LaunchConfigurationName' => 'my-launch-config',
      'MaxSize'                 => 3,
      'MinSize'                 => 1,
      'VPCZoneIdentifier'       => 'subnet-4176792c'
    );

    # To create an Auto Scaling group with an attached load balancer
    # This example creates an Auto Scaling group and attaches the specified
    # Classic Load Balancer.
    $autoscaling->CreateAutoScalingGroup(
      'AutoScalingGroupName'    => 'my-auto-scaling-group',
      'AvailabilityZones'       => ['us-west-2c'],
      'HealthCheckGracePeriod'  => 120,
      'HealthCheckType'         => 'ELB',
      'LaunchConfigurationName' => 'my-launch-config',
      'LoadBalancerNames'       => ['my-load-balancer'],
      'MaxSize'                 => 3,
      'MinSize'                 => 1
    );

    # To create an Auto Scaling group with an attached target group
    # This example creates an Auto Scaling group and attaches the specified
    # target group.
    $autoscaling->CreateAutoScalingGroup(
      'AutoScalingGroupName'    => 'my-auto-scaling-group',
      'HealthCheckGracePeriod'  => 120,
      'HealthCheckType'         => 'ELB',
      'LaunchConfigurationName' => 'my-launch-config',
      'MaxSize'                 => 3,
      'MinSize'                 => 1,
      'TargetGroupARNs'         => [
'arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067'
      ],
      'VPCZoneIdentifier' => 'subnet-4176792c, subnet-65ea5f08'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/CreateAutoScalingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group. This name must be unique within the
scope of your AWS account.



=head2 AvailabilityZones => ArrayRef[Str|Undef]

One or more Availability Zones for the group. This parameter is
optional if you specify one or more subnets for C<VPCZoneIdentifier>.

Conditional: If your account supports EC2-Classic and VPC, this
parameter is required to launch instances into EC2-Classic.



=head2 DefaultCooldown => Int

The amount of time, in seconds, after a scaling activity completes
before another scaling activity can start. The default value is C<300>.

For more information, see Scaling Cooldowns
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 DesiredCapacity => Int

The number of EC2 instances that should be running in the group. This
number must be greater than or equal to the minimum size of the group
and less than or equal to the maximum size of the group. If you do not
specify a desired capacity, the default is the minimum size of the
group.



=head2 HealthCheckGracePeriod => Int

The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
before checking the health status of an EC2 instance that has come into
service. During this time, any health check failures for the instance
are ignored. The default value is C<0>.

For more information, see Health Checks for Auto Scaling Instances
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

Conditional: This parameter is required if you are adding an C<ELB>
health check.



=head2 HealthCheckType => Str

The service to use for the health checks. The valid values are C<EC2>
and C<ELB>. The default value is C<EC2>. If you configure an Auto
Scaling group to use ELB health checks, it considers the instance
unhealthy if it fails either the EC2 status checks or the load balancer
health checks.

For more information, see Health Checks for Auto Scaling Instances
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 InstanceId => Str

The ID of the instance used to create a launch configuration for the
group. This parameter, a launch configuration, a launch template, or a
mixed instances policy must be specified.

When you specify an ID of an instance, Amazon EC2 Auto Scaling creates
a new launch configuration and associates it with the group. This
launch configuration derives its attributes from the specified
instance, except for the block device mapping.

For more information, see Create an Auto Scaling Group Using an EC2
Instance
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 LaunchConfigurationName => Str

The name of the launch configuration. This parameter, a launch
template, a mixed instances policy, or an EC2 instance must be
specified.

For more information, see Creating an Auto Scaling Group Using a Launch
Configuration
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 LaunchTemplate => AutoScaling_LaunchTemplateSpecification

The launch template to use to launch instances. This parameter, a
launch configuration, a mixed instances policy, or an EC2 instance must
be specified.

For more information, see Creating an Auto Scaling Group Using a Launch
Template
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-launch-template.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 LifecycleHookSpecificationList => ArrayRef[AutoScaling_LifecycleHookSpecification]

One or more lifecycle hooks.



=head2 LoadBalancerNames => ArrayRef[Str|Undef]

One or more Classic Load Balancers. To specify an Application Load
Balancer or a Network Load Balancer, use C<TargetGroupARNs> instead.

For more information, see Using a Load Balancer With an Auto Scaling
Group
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 B<REQUIRED> MaxSize => Int

The maximum size of the group.



=head2 B<REQUIRED> MinSize => Int

The minimum size of the group.



=head2 MixedInstancesPolicy => AutoScaling_MixedInstancesPolicy

The mixed instances policy to use to launch instances. This parameter,
a launch template, a launch configuration, or an EC2 instance must be
specified.

For more information, see Auto Scaling Groups with Multiple Instance
Types and Purchase Options
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
Scaling group uses to call other AWS services on your behalf. By
default, Amazon EC2 Auto Scaling uses a service-linked role named
AWSServiceRoleForAutoScaling, which it creates if it does not exist.
For more information, see Service-Linked Roles
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 Tags => ArrayRef[AutoScaling_Tag]

One or more tags.

For more information, see Tagging Auto Scaling Groups and Instances
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 TargetGroupARNs => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the target groups.



=head2 TerminationPolicies => ArrayRef[Str|Undef]

One or more termination policies used to select the instance to
terminate. These policies are executed in the order that they are
listed.

For more information, see Controlling Which Instances Auto Scaling
Terminates During Scale In
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 VPCZoneIdentifier => Str

A comma-separated list of subnet IDs for your virtual private cloud
(VPC).

If you specify C<VPCZoneIdentifier> with C<AvailabilityZones>, the
subnets that you specify for this parameter must reside in those
Availability Zones.

Conditional: If your account supports EC2-Classic and VPC, this
parameter is required to launch instances into a VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAutoScalingGroup in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

