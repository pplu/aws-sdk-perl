
package Paws::EC2::DescribeCapacityReservationsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_CapacityReservation/;
  has CapacityReservations => (is => 'ro', isa => ArrayRef[EC2_CapacityReservation]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'CapacityReservations' => 'capacityReservationSet',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'CapacityReservations' => {
                                           'type' => 'ArrayRef[EC2_CapacityReservation]',
                                           'class' => 'Paws::EC2::CapacityReservation'
                                         },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::EC2::DescribeCapacityReservationsResult

=head1 ATTRIBUTES


=head2 CapacityReservations => ArrayRef[EC2_CapacityReservation]

Information about the Capacity Reservations.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

