
package Paws::MediaLive::UpdateReservationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaLive::Types qw/MediaLive_Reservation/;
  has Reservation => (is => 'ro', isa => MediaLive_Reservation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Reservation' => 'reservation'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Reservation' => {
                                  'class' => 'Paws::MediaLive::Reservation',
                                  'type' => 'MediaLive_Reservation'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateReservationResponse

=head1 ATTRIBUTES


=head2 Reservation => MediaLive_Reservation




=head2 _request_id => Str


=cut

