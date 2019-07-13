
package Paws::MediaLive::PurchaseOfferingResponse;
  use Moose;
  has Reservation => (is => 'ro', isa => 'Paws::MediaLive::Reservation', traits => ['NameInRequest'], request_name => 'reservation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::PurchaseOfferingResponse

=head1 ATTRIBUTES


=head2 Reservation => L<Paws::MediaLive::Reservation>




=head2 _request_id => Str


=cut

