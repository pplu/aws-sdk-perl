
package Paws::EC2::DescribeStaleSecurityGroupsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has StaleSecurityGroupSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::StaleSecurityGroup]', request_name => 'staleSecurityGroupSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeStaleSecurityGroupsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 StaleSecurityGroupSet => ArrayRef[L<Paws::EC2::StaleSecurityGroup>]

Information about the stale security groups.


=head2 _request_id => Str


=cut

