
package Paws::EC2::DescribeHostReservationsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_HostReservation/;
  has HostReservationSet => (is => 'ro', isa => ArrayRef[EC2_HostReservation]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'HostReservationSet' => 'hostReservationSet'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'HostReservationSet' => {
                                         'type' => 'ArrayRef[EC2_HostReservation]',
                                         'class' => 'Paws::EC2::HostReservation'
                                       },
               '_request_id' => {
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

Paws::EC2::DescribeHostReservationsResult

=head1 ATTRIBUTES


=head2 HostReservationSet => ArrayRef[EC2_HostReservation]

Details about the reservation's configuration.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

