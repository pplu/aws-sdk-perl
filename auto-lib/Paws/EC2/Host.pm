package Paws::EC2::Host;
  use Moo;  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_HostInstance EC2_AvailableCapacity EC2_Tag EC2_HostProperties/;
  has AllocationTime => (is => 'ro', isa => Str);
  has AutoPlacement => (is => 'ro', isa => Str);
  has AvailabilityZone => (is => 'ro', isa => Str);
  has AvailableCapacity => (is => 'ro', isa => EC2_AvailableCapacity);
  has ClientToken => (is => 'ro', isa => Str);
  has HostId => (is => 'ro', isa => Str);
  has HostProperties => (is => 'ro', isa => EC2_HostProperties);
  has HostRecovery => (is => 'ro', isa => Str);
  has HostReservationId => (is => 'ro', isa => Str);
  has Instances => (is => 'ro', isa => ArrayRef[EC2_HostInstance]);
  has ReleaseTime => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HostRecovery' => {
                                   'type' => 'Str'
                                 },
               'HostProperties' => {
                                     'class' => 'Paws::EC2::HostProperties',
                                     'type' => 'EC2_HostProperties'
                                   },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'ReleaseTime' => {
                                  'type' => 'Str'
                                },
               'HostId' => {
                             'type' => 'Str'
                           },
               'State' => {
                            'type' => 'Str'
                          },
               'HostReservationId' => {
                                        'type' => 'Str'
                                      },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'AvailableCapacity' => {
                                        'class' => 'Paws::EC2::AvailableCapacity',
                                        'type' => 'EC2_AvailableCapacity'
                                      },
               'AllocationTime' => {
                                     'type' => 'Str'
                                   },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'Instances' => {
                                'class' => 'Paws::EC2::HostInstance',
                                'type' => 'ArrayRef[EC2_HostInstance]'
                              },
               'AutoPlacement' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'HostRecovery' => 'hostRecovery',
                       'HostProperties' => 'hostProperties',
                       'ClientToken' => 'clientToken',
                       'ReleaseTime' => 'releaseTime',
                       'HostId' => 'hostId',
                       'State' => 'state',
                       'HostReservationId' => 'hostReservationId',
                       'AvailabilityZone' => 'availabilityZone',
                       'AvailableCapacity' => 'availableCapacity',
                       'AllocationTime' => 'allocationTime',
                       'Tags' => 'tagSet',
                       'Instances' => 'instances',
                       'AutoPlacement' => 'autoPlacement'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Host

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Host object:

  $service_obj->Method(Att1 => { AllocationTime => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Host object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllocationTime => Str

  The time that the Dedicated Host was allocated.


=head2 AutoPlacement => Str

  Whether auto-placement is on or off.


=head2 AvailabilityZone => Str

  The Availability Zone of the Dedicated Host.


=head2 AvailableCapacity => EC2_AvailableCapacity

  The number of new instances that can be launched onto the Dedicated
Host.


=head2 ClientToken => Str

  Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


=head2 HostId => Str

  The ID of the Dedicated Host.


=head2 HostProperties => EC2_HostProperties

  The hardware specifications of the Dedicated Host.


=head2 HostRecovery => Str

  Indicates whether host recovery is enabled or disabled for the
Dedicated Host.


=head2 HostReservationId => Str

  The reservation ID of the Dedicated Host. This returns a C<null>
response if the Dedicated Host doesn't have an associated reservation.


=head2 Instances => ArrayRef[EC2_HostInstance]

  The IDs and instance type that are currently running on the Dedicated
Host.


=head2 ReleaseTime => Str

  The time that the Dedicated Host was released.


=head2 State => Str

  The Dedicated Host's state.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the Dedicated Host.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
