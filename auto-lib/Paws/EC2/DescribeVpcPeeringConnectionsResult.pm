
package Paws::EC2::DescribeVpcPeeringConnectionsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_VpcPeeringConnection/;
  has NextToken => (is => 'ro', isa => Str);
  has VpcPeeringConnections => (is => 'ro', isa => ArrayRef[EC2_VpcPeeringConnection]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpcPeeringConnections' => {
                                            'class' => 'Paws::EC2::VpcPeeringConnection',
                                            'type' => 'ArrayRef[EC2_VpcPeeringConnection]'
                                          },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'VpcPeeringConnections' => 'vpcPeeringConnectionSet',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcPeeringConnectionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 VpcPeeringConnections => ArrayRef[EC2_VpcPeeringConnection]

Information about the VPC peering connections.


=head2 _request_id => Str


=cut

