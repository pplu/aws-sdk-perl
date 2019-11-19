
package Paws::EC2::RejectVpcEndpointConnectionsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_UnsuccessfulItem/;
  has Unsuccessful => (is => 'ro', isa => ArrayRef[EC2_UnsuccessfulItem]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Unsuccessful' => {
                                   'class' => 'Paws::EC2::UnsuccessfulItem',
                                   'type' => 'ArrayRef[EC2_UnsuccessfulItem]'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Unsuccessful' => 'unsuccessful'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RejectVpcEndpointConnectionsResult

=head1 ATTRIBUTES


=head2 Unsuccessful => ArrayRef[EC2_UnsuccessfulItem]

Information about the endpoints that were not rejected, if applicable.


=head2 _request_id => Str


=cut

