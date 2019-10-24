# Generated from default/object.tt
package Paws::AutoScaling::AutoScalingGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int Bool/;
  use Paws::AutoScaling::Types qw/AutoScaling_LaunchTemplateSpecification AutoScaling_EnabledMetric AutoScaling_TagDescription AutoScaling_MixedInstancesPolicy AutoScaling_Instance AutoScaling_SuspendedProcess/;
  has AutoScalingGroupARN => (is => 'ro', isa => Str);
  has AutoScalingGroupName => (is => 'ro', isa => Str, required => 1);
  has AvailabilityZones => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has CreatedTime => (is => 'ro', isa => Str, required => 1);
  has DefaultCooldown => (is => 'ro', isa => Int, required => 1);
  has DesiredCapacity => (is => 'ro', isa => Int, required => 1);
  has EnabledMetrics => (is => 'ro', isa => ArrayRef[AutoScaling_EnabledMetric]);
  has HealthCheckGracePeriod => (is => 'ro', isa => Int);
  has HealthCheckType => (is => 'ro', isa => Str, required => 1);
  has Instances => (is => 'ro', isa => ArrayRef[AutoScaling_Instance]);
  has LaunchConfigurationName => (is => 'ro', isa => Str);
  has LaunchTemplate => (is => 'ro', isa => AutoScaling_LaunchTemplateSpecification);
  has LoadBalancerNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has MaxSize => (is => 'ro', isa => Int, required => 1);
  has MinSize => (is => 'ro', isa => Int, required => 1);
  has MixedInstancesPolicy => (is => 'ro', isa => AutoScaling_MixedInstancesPolicy);
  has NewInstancesProtectedFromScaleIn => (is => 'ro', isa => Bool);
  has PlacementGroup => (is => 'ro', isa => Str);
  has ServiceLinkedRoleARN => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has SuspendedProcesses => (is => 'ro', isa => ArrayRef[AutoScaling_SuspendedProcess]);
  has Tags => (is => 'ro', isa => ArrayRef[AutoScaling_TagDescription]);
  has TargetGroupARNs => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has TerminationPolicies => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has VPCZoneIdentifier => (is => 'ro', isa => Str);

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
               'CreatedTime' => {
                                  'type' => 'Str'
                                },
               'AutoScalingGroupARN' => {
                                          'type' => 'Str'
                                        },
               'Status' => {
                             'type' => 'Str'
                           },
               'MinSize' => {
                              'type' => 'Int'
                            },
               'LoadBalancerNames' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'EnabledMetrics' => {
                                     'class' => 'Paws::AutoScaling::EnabledMetric',
                                     'type' => 'ArrayRef[AutoScaling_EnabledMetric]'
                                   },
               'AutoScalingGroupName' => {
                                           'type' => 'Str'
                                         },
               'SuspendedProcesses' => {
                                         'class' => 'Paws::AutoScaling::SuspendedProcess',
                                         'type' => 'ArrayRef[AutoScaling_SuspendedProcess]'
                                       },
               'Instances' => {
                                'class' => 'Paws::AutoScaling::Instance',
                                'type' => 'ArrayRef[AutoScaling_Instance]'
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
                           'class' => 'Paws::AutoScaling::TagDescription',
                           'type' => 'ArrayRef[AutoScaling_TagDescription]'
                         }
             },
  'IsRequired' => {
                    'MaxSize' => 1,
                    'CreatedTime' => 1,
                    'MinSize' => 1,
                    'AvailabilityZones' => 1,
                    'DesiredCapacity' => 1,
                    'AutoScalingGroupName' => 1,
                    'DefaultCooldown' => 1,
                    'HealthCheckType' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::AutoScalingGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::AutoScalingGroup object:

  $service_obj->Method(Att1 => { AutoScalingGroupARN => $value, ..., VPCZoneIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::AutoScalingGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingGroupARN

=head1 DESCRIPTION

Describes an Auto Scaling group.

=head1 ATTRIBUTES


=head2 AutoScalingGroupARN => Str

  The Amazon Resource Name (ARN) of the Auto Scaling group.


=head2 B<REQUIRED> AutoScalingGroupName => Str

  The name of the Auto Scaling group.


=head2 B<REQUIRED> AvailabilityZones => ArrayRef[Str|Undef]

  One or more Availability Zones for the group.


=head2 B<REQUIRED> CreatedTime => Str

  The date and time the group was created.


=head2 B<REQUIRED> DefaultCooldown => Int

  The amount of time, in seconds, after a scaling activity completes
before another scaling activity can start.


=head2 B<REQUIRED> DesiredCapacity => Int

  The desired size of the group.


=head2 EnabledMetrics => ArrayRef[AutoScaling_EnabledMetric]

  The metrics enabled for the group.


=head2 HealthCheckGracePeriod => Int

  The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
before checking the health status of an EC2 instance that has come into
service.


=head2 B<REQUIRED> HealthCheckType => Str

  The service to use for the health checks. The valid values are C<EC2>
and C<ELB>. If you configure an Auto Scaling group to use ELB health
checks, it considers the instance unhealthy if it fails either the EC2
status checks or the load balancer health checks.


=head2 Instances => ArrayRef[AutoScaling_Instance]

  The EC2 instances associated with the group.


=head2 LaunchConfigurationName => Str

  The name of the associated launch configuration.


=head2 LaunchTemplate => AutoScaling_LaunchTemplateSpecification

  The launch template for the group.


=head2 LoadBalancerNames => ArrayRef[Str|Undef]

  One or more load balancers associated with the group.


=head2 B<REQUIRED> MaxSize => Int

  The maximum size of the group.


=head2 B<REQUIRED> MinSize => Int

  The minimum size of the group.


=head2 MixedInstancesPolicy => AutoScaling_MixedInstancesPolicy

  The mixed instances policy for the group.


=head2 NewInstancesProtectedFromScaleIn => Bool

  Indicates whether newly launched instances are protected from
termination by Amazon EC2 Auto Scaling when scaling in.


=head2 PlacementGroup => Str

  The name of the placement group into which to launch your instances, if
any.


=head2 ServiceLinkedRoleARN => Str

  The Amazon Resource Name (ARN) of the service-linked role that the Auto
Scaling group uses to call other AWS services on your behalf.


=head2 Status => Str

  The current state of the group when DeleteAutoScalingGroup is in
progress.


=head2 SuspendedProcesses => ArrayRef[AutoScaling_SuspendedProcess]

  The suspended processes associated with the group.


=head2 Tags => ArrayRef[AutoScaling_TagDescription]

  The tags for the group.


=head2 TargetGroupARNs => ArrayRef[Str|Undef]

  The Amazon Resource Names (ARN) of the target groups for your load
balancer.


=head2 TerminationPolicies => ArrayRef[Str|Undef]

  The termination policies for the group.


=head2 VPCZoneIdentifier => Str

  One or more subnet IDs, if applicable, separated by commas.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

