
package Paws::EC2::CreateSecurityGroupResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has GroupId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupId');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateSecurityGroupResult

=head1 ATTRIBUTES

=head2 GroupId => Str

  

The ID of the security group.











=cut

