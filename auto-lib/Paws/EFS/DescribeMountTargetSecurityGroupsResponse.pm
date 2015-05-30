
package Paws::EFS::DescribeMountTargetSecurityGroupsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DescribeMountTargetSecurityGroupsResponse

=head1 ATTRIBUTES

=head2 B<REQUIRED> SecurityGroups => ArrayRef[Str]

  

An array of security groups.











=cut

