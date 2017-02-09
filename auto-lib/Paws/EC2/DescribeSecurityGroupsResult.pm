
package Paws::EC2::DescribeSecurityGroupsResult;
  use Moose;
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SecurityGroup]', request_name => 'securityGroupInfo', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSecurityGroupsResult

=head1 ATTRIBUTES


=head2 SecurityGroups => ArrayRef[L<Paws::EC2::SecurityGroup>]

Information about one or more security groups.


=head2 _request_id => Str


=cut

