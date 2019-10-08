
package Paws::EC2::DescribeSpotInstanceRequestsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_SpotInstanceRequest/;
  has NextToken => (is => 'ro', isa => Str);
  has SpotInstanceRequests => (is => 'ro', isa => ArrayRef[EC2_SpotInstanceRequest]);

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
               'SpotInstanceRequests' => {
                                           'class' => 'Paws::EC2::SpotInstanceRequest',
                                           'type' => 'ArrayRef[EC2_SpotInstanceRequest]'
                                         }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'SpotInstanceRequests' => 'spotInstanceRequestSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSpotInstanceRequestsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next set of results. This value is
C<null> when there are no more results to return.


=head2 SpotInstanceRequests => ArrayRef[EC2_SpotInstanceRequest]

One or more Spot Instance requests.


=head2 _request_id => Str


=cut

