
package Paws::IAM::CreateServiceSpecificCredentialResponse;
  use Moose;
  has ServiceSpecificCredential => (is => 'ro', isa => 'Paws::IAM::ServiceSpecificCredential');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateServiceSpecificCredentialResponse

=head1 ATTRIBUTES


=head2 ServiceSpecificCredential => L<Paws::IAM::ServiceSpecificCredential>

A structure that contains information about the newly created
service-specific credential.

This is the only time that the password for this credential set is
available. It cannot be recovered later. Instead, you will have to
reset the password with ResetServiceSpecificCredential.


=head2 _request_id => Str


=cut

