package Paws::EC2::FleetData;
  use Moo;  use Types::Standard qw/Str ArrayRef Num Bool/;
  use Paws::EC2::Types qw/EC2_DescribeFleetError EC2_OnDemandOptions EC2_TargetCapacitySpecification EC2_FleetLaunchTemplateConfig EC2_SpotOptions EC2_DescribeFleetsInstances EC2_Tag/;
  has ActivityStatus => (is => 'ro', isa => Str);
  has ClientToken => (is => 'ro', isa => Str);
  has CreateTime => (is => 'ro', isa => Str);
  has Errors => (is => 'ro', isa => ArrayRef[EC2_DescribeFleetError]);
  has ExcessCapacityTerminationPolicy => (is => 'ro', isa => Str);
  has FleetId => (is => 'ro', isa => Str);
  has FleetState => (is => 'ro', isa => Str);
  has FulfilledCapacity => (is => 'ro', isa => Num);
  has FulfilledOnDemandCapacity => (is => 'ro', isa => Num);
  has Instances => (is => 'ro', isa => ArrayRef[EC2_DescribeFleetsInstances]);
  has LaunchTemplateConfigs => (is => 'ro', isa => ArrayRef[EC2_FleetLaunchTemplateConfig]);
  has OnDemandOptions => (is => 'ro', isa => EC2_OnDemandOptions);
  has ReplaceUnhealthyInstances => (is => 'ro', isa => Bool);
  has SpotOptions => (is => 'ro', isa => EC2_SpotOptions);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has TargetCapacitySpecification => (is => 'ro', isa => EC2_TargetCapacitySpecification);
  has TerminateInstancesWithExpiration => (is => 'ro', isa => Bool);
  has Type => (is => 'ro', isa => Str);
  has ValidFrom => (is => 'ro', isa => Str);
  has ValidUntil => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SpotOptions' => 'spotOptions',
                       'Type' => 'type',
                       'LaunchTemplateConfigs' => 'launchTemplateConfigs',
                       'CreateTime' => 'createTime',
                       'TerminateInstancesWithExpiration' => 'terminateInstancesWithExpiration',
                       'ActivityStatus' => 'activityStatus',
                       'Tags' => 'tagSet',
                       'OnDemandOptions' => 'onDemandOptions',
                       'ReplaceUnhealthyInstances' => 'replaceUnhealthyInstances',
                       'Instances' => 'fleetInstanceSet',
                       'ValidUntil' => 'validUntil',
                       'FleetState' => 'fleetState',
                       'FleetId' => 'fleetId',
                       'FulfilledOnDemandCapacity' => 'fulfilledOnDemandCapacity',
                       'TargetCapacitySpecification' => 'targetCapacitySpecification',
                       'ValidFrom' => 'validFrom',
                       'ClientToken' => 'clientToken',
                       'FulfilledCapacity' => 'fulfilledCapacity',
                       'ExcessCapacityTerminationPolicy' => 'excessCapacityTerminationPolicy',
                       'Errors' => 'errorSet'
                     },
  'types' => {
               'FulfilledOnDemandCapacity' => {
                                                'type' => 'Num'
                                              },
               'FleetId' => {
                              'type' => 'Str'
                            },
               'FleetState' => {
                                 'type' => 'Str'
                               },
               'TargetCapacitySpecification' => {
                                                  'type' => 'EC2_TargetCapacitySpecification',
                                                  'class' => 'Paws::EC2::TargetCapacitySpecification'
                                                },
               'FulfilledCapacity' => {
                                        'type' => 'Num'
                                      },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'ValidFrom' => {
                                'type' => 'Str'
                              },
               'Errors' => {
                             'type' => 'ArrayRef[EC2_DescribeFleetError]',
                             'class' => 'Paws::EC2::DescribeFleetError'
                           },
               'ExcessCapacityTerminationPolicy' => {
                                                      'type' => 'Str'
                                                    },
               'CreateTime' => {
                                 'type' => 'Str'
                               },
               'TerminateInstancesWithExpiration' => {
                                                       'type' => 'Bool'
                                                     },
               'Type' => {
                           'type' => 'Str'
                         },
               'SpotOptions' => {
                                  'type' => 'EC2_SpotOptions',
                                  'class' => 'Paws::EC2::SpotOptions'
                                },
               'LaunchTemplateConfigs' => {
                                            'type' => 'ArrayRef[EC2_FleetLaunchTemplateConfig]',
                                            'class' => 'Paws::EC2::FleetLaunchTemplateConfig'
                                          },
               'ActivityStatus' => {
                                     'type' => 'Str'
                                   },
               'Instances' => {
                                'class' => 'Paws::EC2::DescribeFleetsInstances',
                                'type' => 'ArrayRef[EC2_DescribeFleetsInstances]'
                              },
               'ValidUntil' => {
                                 'type' => 'Str'
                               },
               'Tags' => {
                           'type' => 'ArrayRef[EC2_Tag]',
                           'class' => 'Paws::EC2::Tag'
                         },
               'OnDemandOptions' => {
                                      'class' => 'Paws::EC2::OnDemandOptions',
                                      'type' => 'EC2_OnDemandOptions'
                                    },
               'ReplaceUnhealthyInstances' => {
                                                'type' => 'Bool'
                                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::FleetData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::FleetData object:

  $service_obj->Method(Att1 => { ActivityStatus => $value, ..., ValidUntil => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::FleetData object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivityStatus

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ActivityStatus => Str

  The progress of the EC2 Fleet. If there is an error, the status is
C<error>. After all requests are placed, the status is
C<pending_fulfillment>. If the size of the EC2 Fleet is equal to or
greater than its target capacity, the status is C<fulfilled>. If the
size of the EC2 Fleet is decreased, the status is
C<pending_termination> while instances are terminating.


=head2 ClientToken => Str

  Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. For more information, see Ensuring Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).

Constraints: Maximum 64 ASCII characters


=head2 CreateTime => Str

  The creation date and time of the EC2 Fleet.


=head2 Errors => ArrayRef[EC2_DescribeFleetError]

  Information about the instances that could not be launched by the
fleet. Valid only when B<Type> is set to C<instant>.


=head2 ExcessCapacityTerminationPolicy => Str

  Indicates whether running instances should be terminated if the target
capacity of the EC2 Fleet is decreased below the current size of the
EC2 Fleet.


=head2 FleetId => Str

  The ID of the EC2 Fleet.


=head2 FleetState => Str

  The state of the EC2 Fleet.


=head2 FulfilledCapacity => Num

  The number of units fulfilled by this request compared to the set
target capacity.


=head2 FulfilledOnDemandCapacity => Num

  The number of units fulfilled by this request compared to the set
target On-Demand capacity.


=head2 Instances => ArrayRef[EC2_DescribeFleetsInstances]

  Information about the instances that were launched by the fleet. Valid
only when B<Type> is set to C<instant>.


=head2 LaunchTemplateConfigs => ArrayRef[EC2_FleetLaunchTemplateConfig]

  The launch template and overrides.


=head2 OnDemandOptions => EC2_OnDemandOptions

  The allocation strategy of On-Demand Instances in an EC2 Fleet.


=head2 ReplaceUnhealthyInstances => Bool

  Indicates whether EC2 Fleet should replace unhealthy instances.


=head2 SpotOptions => EC2_SpotOptions

  The configuration of Spot Instances in an EC2 Fleet.


=head2 Tags => ArrayRef[EC2_Tag]

  The tags for an EC2 Fleet resource.


=head2 TargetCapacitySpecification => EC2_TargetCapacitySpecification

  The number of units to request. You can choose to set the target
capacity in terms of instances or a performance characteristic that is
important to your application workload, such as vCPUs, memory, or I/O.
If the request type is C<maintain>, you can specify a target capacity
of 0 and add capacity later.


=head2 TerminateInstancesWithExpiration => Bool

  Indicates whether running instances should be terminated when the EC2
Fleet expires.


=head2 Type => Str

  The type of request. Indicates whether the EC2 Fleet only C<requests>
the target capacity, or also attempts to C<maintain> it. If you request
a certain target capacity, EC2 Fleet only places the required requests;
it does not attempt to replenish instances if capacity is diminished,
and does not submit requests in alternative capacity pools if capacity
is unavailable. To maintain a certain target capacity, EC2 Fleet places
the required requests to meet this target capacity. It also
automatically replenishes any interrupted Spot Instances. Default:
C<maintain>.


=head2 ValidFrom => Str

  The start date and time of the request, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). The default is to start
fulfilling the request immediately.


=head2 ValidUntil => Str

  The end date and time of the request, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). At this point, no new instance
requests are placed or able to fulfill the request. The default end
date is 7 days from the current date.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
