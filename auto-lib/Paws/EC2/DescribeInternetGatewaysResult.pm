
package Paws::EC2::DescribeInternetGatewaysResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_InternetGateway/;
  has InternetGateways => (is => 'ro', isa => ArrayRef[EC2_InternetGateway]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InternetGateways' => {
                                       'class' => 'Paws::EC2::InternetGateway',
                                       'type' => 'ArrayRef[EC2_InternetGateway]'
                                     },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'InternetGateways' => 'internetGatewaySet',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInternetGatewaysResult

=head1 ATTRIBUTES


=head2 InternetGateways => ArrayRef[EC2_InternetGateway]

Information about one or more internet gateways.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

