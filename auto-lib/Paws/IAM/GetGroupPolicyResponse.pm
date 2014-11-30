
package Paws::IAM::GetGroupPolicyResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetGroupPolicyResponse

=head1 ATTRIBUTES

=head2 B<REQUIRED> GroupName => Str

  

The group the policy is associated with.









=head2 B<REQUIRED> PolicyDocument => Str

  

The policy document.









=head2 B<REQUIRED> PolicyName => Str

  

The name of the policy.











=cut

