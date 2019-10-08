
package Paws::EC2::DescribeClientVpnEndpointsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ClientVpnEndpoint/;
  has ClientVpnEndpoints => (is => 'ro', isa => ArrayRef[EC2_ClientVpnEndpoint]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ClientVpnEndpoints' => {
                                         'class' => 'Paws::EC2::ClientVpnEndpoint',
                                         'type' => 'ArrayRef[EC2_ClientVpnEndpoint]'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ClientVpnEndpoints' => 'clientVpnEndpoint'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeClientVpnEndpointsResult

=head1 ATTRIBUTES


=head2 ClientVpnEndpoints => ArrayRef[EC2_ClientVpnEndpoint]

Information about the Client VPN endpoints.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

