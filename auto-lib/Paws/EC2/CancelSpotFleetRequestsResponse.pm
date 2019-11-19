
package Paws::EC2::CancelSpotFleetRequestsResponse;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_CancelSpotFleetRequestsErrorItem EC2_CancelSpotFleetRequestsSuccessItem/;
  has SuccessfulFleetRequests => (is => 'ro', isa => ArrayRef[EC2_CancelSpotFleetRequestsSuccessItem]);
  has UnsuccessfulFleetRequests => (is => 'ro', isa => ArrayRef[EC2_CancelSpotFleetRequestsErrorItem]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SuccessfulFleetRequests' => 'successfulFleetRequestSet',
                       'UnsuccessfulFleetRequests' => 'unsuccessfulFleetRequestSet'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SuccessfulFleetRequests' => {
                                              'class' => 'Paws::EC2::CancelSpotFleetRequestsSuccessItem',
                                              'type' => 'ArrayRef[EC2_CancelSpotFleetRequestsSuccessItem]'
                                            },
               'UnsuccessfulFleetRequests' => {
                                                'class' => 'Paws::EC2::CancelSpotFleetRequestsErrorItem',
                                                'type' => 'ArrayRef[EC2_CancelSpotFleetRequestsErrorItem]'
                                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelSpotFleetRequestsResponse

=head1 ATTRIBUTES


=head2 SuccessfulFleetRequests => ArrayRef[EC2_CancelSpotFleetRequestsSuccessItem]

Information about the Spot Fleet requests that are successfully
canceled.


=head2 UnsuccessfulFleetRequests => ArrayRef[EC2_CancelSpotFleetRequestsErrorItem]

Information about the Spot Fleet requests that are not successfully
canceled.


=head2 _request_id => Str


=cut

