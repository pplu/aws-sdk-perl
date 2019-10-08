
package Paws::EC2::DescribeTransitGatewaysResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_TransitGateway/;
  has NextToken => (is => 'ro', isa => Str);
  has TransitGateways => (is => 'ro', isa => ArrayRef[EC2_TransitGateway]);

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
               'TransitGateways' => {
                                      'class' => 'Paws::EC2::TransitGateway',
                                      'type' => 'ArrayRef[EC2_TransitGateway]'
                                    }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'TransitGateways' => 'transitGatewaySet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTransitGatewaysResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 TransitGateways => ArrayRef[EC2_TransitGateway]

Information about the transit gateways.


=head2 _request_id => Str


=cut

