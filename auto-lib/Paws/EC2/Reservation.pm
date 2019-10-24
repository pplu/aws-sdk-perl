
package Paws::EC2::Reservation;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_Instance EC2_GroupIdentifier/;
  has Groups => (is => 'ro', isa => ArrayRef[EC2_GroupIdentifier]);
  has Instances => (is => 'ro', isa => ArrayRef[EC2_Instance]);
  has OwnerId => (is => 'ro', isa => Str);
  has RequesterId => (is => 'ro', isa => Str);
  has ReservationId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Groups' => {
                             'class' => 'Paws::EC2::GroupIdentifier',
                             'type' => 'ArrayRef[EC2_GroupIdentifier]'
                           },
               'RequesterId' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Instances' => {
                                'class' => 'Paws::EC2::Instance',
                                'type' => 'ArrayRef[EC2_Instance]'
                              },
               'OwnerId' => {
                              'type' => 'Str'
                            },
               'ReservationId' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'Groups' => 'groupSet',
                       'RequesterId' => 'requesterId',
                       'Instances' => 'instancesSet',
                       'OwnerId' => 'ownerId',
                       'ReservationId' => 'reservationId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Reservation

=head1 ATTRIBUTES


=head2 Groups => ArrayRef[EC2_GroupIdentifier]

[EC2-Classic only] The security groups.


=head2 Instances => ArrayRef[EC2_Instance]

The instances.


=head2 OwnerId => Str

The ID of the AWS account that owns the reservation.


=head2 RequesterId => Str

The ID of the requester that launched the instances on your behalf (for
example, AWS Management Console or Auto Scaling).


=head2 ReservationId => Str

The ID of the reservation.


=head2 _request_id => Str


=cut

