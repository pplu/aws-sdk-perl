
package Paws::EC2::DescribeInstancesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_Reservation/;
  has NextToken => (is => 'ro', isa => Str);
  has Reservations => (is => 'ro', isa => ArrayRef[EC2_Reservation]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Reservations' => 'reservationSet'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Reservations' => {
                                   'class' => 'Paws::EC2::Reservation',
                                   'type' => 'ArrayRef[EC2_Reservation]'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstancesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Reservations => ArrayRef[EC2_Reservation]

Information about the reservations.


=head2 _request_id => Str


=cut

