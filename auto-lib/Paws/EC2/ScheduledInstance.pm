package Paws::EC2::ScheduledInstance;
  use Moo;  use Types::Standard qw/Str Int/;
  use Paws::EC2::Types qw/EC2_ScheduledInstanceRecurrence/;
  has AvailabilityZone => (is => 'ro', isa => Str);
  has CreateDate => (is => 'ro', isa => Str);
  has HourlyPrice => (is => 'ro', isa => Str);
  has InstanceCount => (is => 'ro', isa => Int);
  has InstanceType => (is => 'ro', isa => Str);
  has NetworkPlatform => (is => 'ro', isa => Str);
  has NextSlotStartTime => (is => 'ro', isa => Str);
  has Platform => (is => 'ro', isa => Str);
  has PreviousSlotEndTime => (is => 'ro', isa => Str);
  has Recurrence => (is => 'ro', isa => EC2_ScheduledInstanceRecurrence);
  has ScheduledInstanceId => (is => 'ro', isa => Str);
  has SlotDurationInHours => (is => 'ro', isa => Int);
  has TermEndDate => (is => 'ro', isa => Str);
  has TermStartDate => (is => 'ro', isa => Str);
  has TotalScheduledInstanceHours => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Recurrence' => 'recurrence',
                       'TotalScheduledInstanceHours' => 'totalScheduledInstanceHours',
                       'InstanceCount' => 'instanceCount',
                       'TermEndDate' => 'termEndDate',
                       'AvailabilityZone' => 'availabilityZone',
                       'ScheduledInstanceId' => 'scheduledInstanceId',
                       'NextSlotStartTime' => 'nextSlotStartTime',
                       'Platform' => 'platform',
                       'NetworkPlatform' => 'networkPlatform',
                       'InstanceType' => 'instanceType',
                       'PreviousSlotEndTime' => 'previousSlotEndTime',
                       'CreateDate' => 'createDate',
                       'SlotDurationInHours' => 'slotDurationInHours',
                       'HourlyPrice' => 'hourlyPrice',
                       'TermStartDate' => 'termStartDate'
                     },
  'types' => {
               'NextSlotStartTime' => {
                                        'type' => 'Str'
                                      },
               'Platform' => {
                               'type' => 'Str'
                             },
               'NetworkPlatform' => {
                                      'type' => 'Str'
                                    },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'PreviousSlotEndTime' => {
                                          'type' => 'Str'
                                        },
               'CreateDate' => {
                                 'type' => 'Str'
                               },
               'SlotDurationInHours' => {
                                          'type' => 'Int'
                                        },
               'HourlyPrice' => {
                                  'type' => 'Str'
                                },
               'TermStartDate' => {
                                    'type' => 'Str'
                                  },
               'Recurrence' => {
                                 'type' => 'EC2_ScheduledInstanceRecurrence',
                                 'class' => 'Paws::EC2::ScheduledInstanceRecurrence'
                               },
               'TotalScheduledInstanceHours' => {
                                                  'type' => 'Int'
                                                },
               'TermEndDate' => {
                                  'type' => 'Str'
                                },
               'InstanceCount' => {
                                    'type' => 'Int'
                                  },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'ScheduledInstanceId' => {
                                          'type' => 'Str'
                                        }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ScheduledInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ScheduledInstance object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., TotalScheduledInstanceHours => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ScheduledInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone.


=head2 CreateDate => Str

  The date when the Scheduled Instance was purchased.


=head2 HourlyPrice => Str

  The hourly price for a single instance.


=head2 InstanceCount => Int

  The number of instances.


=head2 InstanceType => Str

  The instance type.


=head2 NetworkPlatform => Str

  The network platform (C<EC2-Classic> or C<EC2-VPC>).


=head2 NextSlotStartTime => Str

  The time for the next schedule to start.


=head2 Platform => Str

  The platform (C<Linux/UNIX> or C<Windows>).


=head2 PreviousSlotEndTime => Str

  The time that the previous schedule ended or will end.


=head2 Recurrence => EC2_ScheduledInstanceRecurrence

  The schedule recurrence.


=head2 ScheduledInstanceId => Str

  The Scheduled Instance ID.


=head2 SlotDurationInHours => Int

  The number of hours in the schedule.


=head2 TermEndDate => Str

  The end date for the Scheduled Instance.


=head2 TermStartDate => Str

  The start date for the Scheduled Instance.


=head2 TotalScheduledInstanceHours => Int

  The total number of hours for a single instance for the entire term.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
