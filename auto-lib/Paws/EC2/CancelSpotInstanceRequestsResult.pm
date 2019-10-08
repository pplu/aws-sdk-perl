
package Paws::EC2::CancelSpotInstanceRequestsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_CancelledSpotInstanceRequest/;
  has CancelledSpotInstanceRequests => (is => 'ro', isa => ArrayRef[EC2_CancelledSpotInstanceRequest]);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CancelledSpotInstanceRequests' => {
                                                    'class' => 'Paws::EC2::CancelledSpotInstanceRequest',
                                                    'type' => 'ArrayRef[EC2_CancelledSpotInstanceRequest]'
                                                  }
             },
  'NameInRequest' => {
                       'CancelledSpotInstanceRequests' => 'spotInstanceRequestSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelSpotInstanceRequestsResult

=head1 ATTRIBUTES


=head2 CancelledSpotInstanceRequests => ArrayRef[EC2_CancelledSpotInstanceRequest]

One or more Spot Instance requests.


=head2 _request_id => Str


=cut

