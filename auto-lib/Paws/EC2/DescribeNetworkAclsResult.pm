
package Paws::EC2::DescribeNetworkAclsResult;
  use Moose;
  has NetworkAcls => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NetworkAcl]', request_name => 'networkAclSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkAclsResult

=head1 ATTRIBUTES


=head2 NetworkAcls => ArrayRef[L<Paws::EC2::NetworkAcl>]

Information about one or more network ACLs.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

