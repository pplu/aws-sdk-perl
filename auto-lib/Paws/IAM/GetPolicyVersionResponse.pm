
package Paws::IAM::GetPolicyVersionResponse;
  use Moose;
  has PolicyVersion => (is => 'ro', isa => 'Paws::IAM::PolicyVersion');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetPolicyVersionResponse

=head1 ATTRIBUTES


=head2 PolicyVersion => L<Paws::IAM::PolicyVersion>

A structure containing details about the policy version.


=head2 _request_id => Str


=cut

