
package Paws::EC2::DescribeSpotPriceHistoryResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_SpotPrice/;
  has NextToken => (is => 'ro', isa => Str);
  has SpotPriceHistory => (is => 'ro', isa => ArrayRef[EC2_SpotPrice]);

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
               'SpotPriceHistory' => {
                                       'class' => 'Paws::EC2::SpotPrice',
                                       'type' => 'ArrayRef[EC2_SpotPrice]'
                                     }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'SpotPriceHistory' => 'spotPriceHistorySet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSpotPriceHistoryResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
null or an empty string when there are no more results to return.


=head2 SpotPriceHistory => ArrayRef[EC2_SpotPrice]

The historical Spot prices.


=head2 _request_id => Str


=cut

