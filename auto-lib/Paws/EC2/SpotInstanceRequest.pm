package Paws::EC2::SpotInstanceRequest;
  use Moo;  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::EC2::Types qw/EC2_SpotInstanceStateFault EC2_SpotInstanceStatus EC2_LaunchSpecification EC2_Tag/;
  has ActualBlockHourlyPrice => (is => 'ro', isa => Str);
  has AvailabilityZoneGroup => (is => 'ro', isa => Str);
  has BlockDurationMinutes => (is => 'ro', isa => Int);
  has CreateTime => (is => 'ro', isa => Str);
  has Fault => (is => 'ro', isa => EC2_SpotInstanceStateFault);
  has InstanceId => (is => 'ro', isa => Str);
  has InstanceInterruptionBehavior => (is => 'ro', isa => Str);
  has LaunchedAvailabilityZone => (is => 'ro', isa => Str);
  has LaunchGroup => (is => 'ro', isa => Str);
  has LaunchSpecification => (is => 'ro', isa => EC2_LaunchSpecification);
  has ProductDescription => (is => 'ro', isa => Str);
  has SpotInstanceRequestId => (is => 'ro', isa => Str);
  has SpotPrice => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => EC2_SpotInstanceStatus);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has Type => (is => 'ro', isa => Str);
  has ValidFrom => (is => 'ro', isa => Str);
  has ValidUntil => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LaunchGroup' => {
                                  'type' => 'Str'
                                },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'Status' => {
                             'class' => 'Paws::EC2::SpotInstanceStatus',
                             'type' => 'EC2_SpotInstanceStatus'
                           },
               'State' => {
                            'type' => 'Str'
                          },
               'SpotInstanceRequestId' => {
                                            'type' => 'Str'
                                          },
               'Type' => {
                           'type' => 'Str'
                         },
               'ProductDescription' => {
                                         'type' => 'Str'
                                       },
               'AvailabilityZoneGroup' => {
                                            'type' => 'Str'
                                          },
               'LaunchSpecification' => {
                                          'class' => 'Paws::EC2::LaunchSpecification',
                                          'type' => 'EC2_LaunchSpecification'
                                        },
               'BlockDurationMinutes' => {
                                           'type' => 'Int'
                                         },
               'Fault' => {
                            'class' => 'Paws::EC2::SpotInstanceStateFault',
                            'type' => 'EC2_SpotInstanceStateFault'
                          },
               'ValidUntil' => {
                                 'type' => 'Str'
                               },
               'CreateTime' => {
                                 'type' => 'Str'
                               },
               'ValidFrom' => {
                                'type' => 'Str'
                              },
               'InstanceInterruptionBehavior' => {
                                                   'type' => 'Str'
                                                 },
               'SpotPrice' => {
                                'type' => 'Str'
                              },
               'LaunchedAvailabilityZone' => {
                                               'type' => 'Str'
                                             },
               'ActualBlockHourlyPrice' => {
                                             'type' => 'Str'
                                           },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         }
             },
  'NameInRequest' => {
                       'LaunchGroup' => 'launchGroup',
                       'InstanceId' => 'instanceId',
                       'Status' => 'status',
                       'State' => 'state',
                       'SpotInstanceRequestId' => 'spotInstanceRequestId',
                       'Type' => 'type',
                       'ProductDescription' => 'productDescription',
                       'AvailabilityZoneGroup' => 'availabilityZoneGroup',
                       'LaunchSpecification' => 'launchSpecification',
                       'BlockDurationMinutes' => 'blockDurationMinutes',
                       'Fault' => 'fault',
                       'ValidUntil' => 'validUntil',
                       'CreateTime' => 'createTime',
                       'ValidFrom' => 'validFrom',
                       'InstanceInterruptionBehavior' => 'instanceInterruptionBehavior',
                       'SpotPrice' => 'spotPrice',
                       'LaunchedAvailabilityZone' => 'launchedAvailabilityZone',
                       'ActualBlockHourlyPrice' => 'actualBlockHourlyPrice',
                       'Tags' => 'tagSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SpotInstanceRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SpotInstanceRequest object:

  $service_obj->Method(Att1 => { ActualBlockHourlyPrice => $value, ..., ValidUntil => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SpotInstanceRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->ActualBlockHourlyPrice

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ActualBlockHourlyPrice => Str

  If you specified a duration and your Spot Instance request was
fulfilled, this is the fixed hourly price in effect for the Spot
Instance while it runs.


=head2 AvailabilityZoneGroup => Str

  The Availability Zone group. If you specify the same Availability Zone
group for all Spot Instance requests, all Spot Instances are launched
in the same Availability Zone.


=head2 BlockDurationMinutes => Int

  The duration for the Spot Instance, in minutes.


=head2 CreateTime => Str

  The date and time when the Spot Instance request was created, in UTC
format (for example, I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z).


=head2 Fault => EC2_SpotInstanceStateFault

  The fault codes for the Spot Instance request, if any.


=head2 InstanceId => Str

  The instance ID, if an instance has been launched to fulfill the Spot
Instance request.


=head2 InstanceInterruptionBehavior => Str

  The behavior when a Spot Instance is interrupted.


=head2 LaunchedAvailabilityZone => Str

  The Availability Zone in which the request is launched.


=head2 LaunchGroup => Str

  The instance launch group. Launch groups are Spot Instances that launch
together and terminate together.


=head2 LaunchSpecification => EC2_LaunchSpecification

  Additional information for launching instances.


=head2 ProductDescription => Str

  The product description associated with the Spot Instance.


=head2 SpotInstanceRequestId => Str

  The ID of the Spot Instance request.


=head2 SpotPrice => Str

  The maximum price per hour that you are willing to pay for a Spot
Instance.


=head2 State => Str

  The state of the Spot Instance request. Spot status information helps
track your Spot Instance requests. For more information, see Spot
Status
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-bid-status.html)
in the I<Amazon EC2 User Guide for Linux Instances>.


=head2 Status => EC2_SpotInstanceStatus

  The status code and status message describing the Spot Instance
request.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the resource.


=head2 Type => Str

  The Spot Instance request type.


=head2 ValidFrom => Str

  The start date of the request, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). The request becomes active at
this date and time.


=head2 ValidUntil => Str

  The end date of the request, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). If this is a one-time request,
it remains active until all instances launch, the request is canceled,
or this date is reached. If the request is persistent, it remains
active until it is canceled or this date is reached. The default end
date is 7 days from the current date.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
