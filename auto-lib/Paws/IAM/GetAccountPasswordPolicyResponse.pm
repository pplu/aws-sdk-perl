
package Paws::IAM::GetAccountPasswordPolicyResponse;
  use Moose;
  has PasswordPolicy => (is => 'ro', isa => 'Paws::IAM::PasswordPolicy', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetAccountPasswordPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> PasswordPolicy => L<Paws::IAM::PasswordPolicy>




=head2 _request_id => Str


=cut

