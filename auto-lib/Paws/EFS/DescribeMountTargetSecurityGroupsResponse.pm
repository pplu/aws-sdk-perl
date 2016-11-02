
package Paws::EFS::DescribeMountTargetSecurityGroupsResponse;
  use Moose;
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DescribeMountTargetSecurityGroupsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecurityGroups => ArrayRef[Str|Undef]

Array of security groups.


=head2 _request_id => Str


=cut

