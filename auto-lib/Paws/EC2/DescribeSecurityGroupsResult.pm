
package Paws::EC2::DescribeSecurityGroupsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SecurityGroup]', request_name => 'securityGroupInfo', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSecurityGroupsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 SecurityGroups => ArrayRef[L<Paws::EC2::SecurityGroup>]

Information about one or more security groups.


=head2 _request_id => Str


=cut

