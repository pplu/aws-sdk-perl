
package Paws::EC2::DescribeVpcEndpointConnectionsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_VpcEndpointConnection/;
  has NextToken => (is => 'ro', isa => Str);
  has VpcEndpointConnections => (is => 'ro', isa => ArrayRef[EC2_VpcEndpointConnection]);

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
               'VpcEndpointConnections' => {
                                             'class' => 'Paws::EC2::VpcEndpointConnection',
                                             'type' => 'ArrayRef[EC2_VpcEndpointConnection]'
                                           }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'VpcEndpointConnections' => 'vpcEndpointConnectionSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcEndpointConnectionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 VpcEndpointConnections => ArrayRef[EC2_VpcEndpointConnection]

Information about one or more VPC endpoint connections.


=head2 _request_id => Str


=cut

