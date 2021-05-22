
package Paws::SecretsManager::ValidateResourcePolicyResponse;
  use Moose;
  has PolicyValidationPassed => (is => 'ro', isa => 'Bool');
  has ValidationErrors => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::ValidationErrorsEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::ValidateResourcePolicyResponse

=head1 ATTRIBUTES


=head2 PolicyValidationPassed => Bool

Returns a message stating that your Reource Policy passed validation.


=head2 ValidationErrors => ArrayRef[L<Paws::SecretsManager::ValidationErrorsEntry>]

Returns an error message if your policy doesn't pass validatation.


=head2 _request_id => Str


=cut

1;