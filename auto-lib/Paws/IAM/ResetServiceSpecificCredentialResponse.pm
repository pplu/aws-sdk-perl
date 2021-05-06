
package Paws::IAM::ResetServiceSpecificCredentialResponse;
  use Moose;
  has ServiceSpecificCredential => (is => 'ro', isa => 'Paws::IAM::ServiceSpecificCredential');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ResetServiceSpecificCredentialResponse

=head1 ATTRIBUTES


=head2 ServiceSpecificCredential => L<Paws::IAM::ServiceSpecificCredential>

A structure with details about the updated service-specific credential,
including the new password.

This is the B<only> time that you can access the password. You cannot
recover the password later, but you can reset it again.


=head2 _request_id => Str


=cut

