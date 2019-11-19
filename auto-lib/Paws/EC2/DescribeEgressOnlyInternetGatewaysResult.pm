
package Paws::EC2::DescribeEgressOnlyInternetGatewaysResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_EgressOnlyInternetGateway/;
  has EgressOnlyInternetGateways => (is => 'ro', isa => ArrayRef[EC2_EgressOnlyInternetGateway]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EgressOnlyInternetGateways' => {
                                                 'class' => 'Paws::EC2::EgressOnlyInternetGateway',
                                                 'type' => 'ArrayRef[EC2_EgressOnlyInternetGateway]'
                                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'EgressOnlyInternetGateways' => 'egressOnlyInternetGatewaySet',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeEgressOnlyInternetGatewaysResult

=head1 ATTRIBUTES


=head2 EgressOnlyInternetGateways => ArrayRef[EC2_EgressOnlyInternetGateway]

Information about the egress-only internet gateways.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

