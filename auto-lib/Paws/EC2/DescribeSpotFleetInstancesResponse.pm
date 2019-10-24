
package Paws::EC2::DescribeSpotFleetInstancesResponse;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ActiveInstance/;
  has ActiveInstances => (is => 'ro', isa => ArrayRef[EC2_ActiveInstance]);
  has NextToken => (is => 'ro', isa => Str);
  has SpotFleetRequestId => (is => 'ro', isa => Str);

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
               'ActiveInstances' => {
                                      'class' => 'Paws::EC2::ActiveInstance',
                                      'type' => 'ArrayRef[EC2_ActiveInstance]'
                                    },
               'SpotFleetRequestId' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ActiveInstances' => 'activeInstanceSet',
                       'SpotFleetRequestId' => 'spotFleetRequestId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSpotFleetInstancesResponse

=head1 ATTRIBUTES


=head2 ActiveInstances => ArrayRef[EC2_ActiveInstance]

The running instances. This list is refreshed periodically and might be
out of date.


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
C<null> when there are no more results to return.


=head2 SpotFleetRequestId => Str

The ID of the Spot Fleet request.


=head2 _request_id => Str


=cut

