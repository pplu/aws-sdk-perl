
package Paws::EC2::Reservation {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Instance]', traits => ['Unwrapped'], xmlname => 'instancesSet');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has RequesterId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'requesterId');
  has ReservationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservationId');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Reservation

=head1 ATTRIBUTES

=head2 Groups => ArrayRef[Paws::EC2::GroupIdentifier]

  

One or more security groups.









=head2 Instances => ArrayRef[Paws::EC2::Instance]

  

One or more instances.









=head2 OwnerId => Str

  

The ID of the AWS account that owns the reservation.









=head2 RequesterId => Str

  

The ID of the requester that launched the instances on your behalf (for
example, AWS Management Console or Auto Scaling).









=head2 ReservationId => Str

  

The ID of the reservation.











=cut

