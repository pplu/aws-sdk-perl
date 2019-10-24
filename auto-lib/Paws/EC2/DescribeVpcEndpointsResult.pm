
package Paws::EC2::DescribeVpcEndpointsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_VpcEndpoint/;
  has NextToken => (is => 'ro', isa => Str);
  has VpcEndpoints => (is => 'ro', isa => ArrayRef[EC2_VpcEndpoint]);

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
               'VpcEndpoints' => {
                                   'class' => 'Paws::EC2::VpcEndpoint',
                                   'type' => 'ArrayRef[EC2_VpcEndpoint]'
                                 }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'VpcEndpoints' => 'vpcEndpointSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcEndpointsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 VpcEndpoints => ArrayRef[EC2_VpcEndpoint]

Information about the endpoints.


=head2 _request_id => Str


=cut

