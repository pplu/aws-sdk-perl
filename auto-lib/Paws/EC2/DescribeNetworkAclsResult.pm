
package Paws::EC2::DescribeNetworkAclsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_NetworkAcl/;
  has NetworkAcls => (is => 'ro', isa => ArrayRef[EC2_NetworkAcl]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'NetworkAcls' => {
                                  'class' => 'Paws::EC2::NetworkAcl',
                                  'type' => 'ArrayRef[EC2_NetworkAcl]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'NetworkAcls' => 'networkAclSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkAclsResult

=head1 ATTRIBUTES


=head2 NetworkAcls => ArrayRef[EC2_NetworkAcl]

Information about one or more network ACLs.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

