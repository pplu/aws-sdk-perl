
package Paws::MediaLive::ListReservationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaLive::Types qw/MediaLive_Reservation/;
  has NextToken => (is => 'ro', isa => Str);
  has Reservations => (is => 'ro', isa => ArrayRef[MediaLive_Reservation]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Reservations' => 'reservations'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Reservations' => {
                                   'class' => 'Paws::MediaLive::Reservation',
                                   'type' => 'ArrayRef[MediaLive_Reservation]'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListReservationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token to retrieve the next page of results


=head2 Reservations => ArrayRef[MediaLive_Reservation]

List of reservations


=head2 _request_id => Str


=cut

