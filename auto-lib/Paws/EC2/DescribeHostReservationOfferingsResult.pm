
package Paws::EC2::DescribeHostReservationOfferingsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_HostOffering/;
  has NextToken => (is => 'ro', isa => Str);
  has OfferingSet => (is => 'ro', isa => ArrayRef[EC2_HostOffering]);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OfferingSet' => {
                                  'class' => 'Paws::EC2::HostOffering',
                                  'type' => 'ArrayRef[EC2_HostOffering]'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'OfferingSet' => 'offeringSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeHostReservationOfferingsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 OfferingSet => ArrayRef[EC2_HostOffering]

Information about the offerings.


=head2 _request_id => Str


=cut

