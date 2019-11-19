
package Paws::EC2::RequestSpotInstancesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_SpotInstanceRequest/;
  has SpotInstanceRequests => (is => 'ro', isa => ArrayRef[EC2_SpotInstanceRequest]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SpotInstanceRequests' => 'spotInstanceRequestSet'
                     },
  'types' => {
               'SpotInstanceRequests' => {
                                           'type' => 'ArrayRef[EC2_SpotInstanceRequest]',
                                           'class' => 'Paws::EC2::SpotInstanceRequest'
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

Paws::EC2::RequestSpotInstancesResult

=head1 ATTRIBUTES


=head2 SpotInstanceRequests => ArrayRef[EC2_SpotInstanceRequest]

One or more Spot Instance requests.


=head2 _request_id => Str


=cut

