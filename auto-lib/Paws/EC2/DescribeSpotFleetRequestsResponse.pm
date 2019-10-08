
package Paws::EC2::DescribeSpotFleetRequestsResponse;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_SpotFleetRequestConfig/;
  has NextToken => (is => 'ro', isa => Str);
  has SpotFleetRequestConfigs => (is => 'ro', isa => ArrayRef[EC2_SpotFleetRequestConfig]);

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
               'SpotFleetRequestConfigs' => {
                                              'class' => 'Paws::EC2::SpotFleetRequestConfig',
                                              'type' => 'ArrayRef[EC2_SpotFleetRequestConfig]'
                                            }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'SpotFleetRequestConfigs' => 'spotFleetRequestConfigSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSpotFleetRequestsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
C<null> when there are no more results to return.


=head2 SpotFleetRequestConfigs => ArrayRef[EC2_SpotFleetRequestConfig]

Information about the configuration of your Spot Fleet.


=head2 _request_id => Str


=cut

