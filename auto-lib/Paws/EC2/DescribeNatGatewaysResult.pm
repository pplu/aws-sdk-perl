
package Paws::EC2::DescribeNatGatewaysResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_NatGateway/;
  has NatGateways => (is => 'ro', isa => ArrayRef[EC2_NatGateway]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'NatGateways' => 'natGatewaySet'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'NatGateways' => {
                                  'type' => 'ArrayRef[EC2_NatGateway]',
                                  'class' => 'Paws::EC2::NatGateway'
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

Paws::EC2::DescribeNatGatewaysResult

=head1 ATTRIBUTES


=head2 NatGateways => ArrayRef[EC2_NatGateway]

Information about the NAT gateways.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

