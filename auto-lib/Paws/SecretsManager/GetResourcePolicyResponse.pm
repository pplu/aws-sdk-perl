
package Paws::SecretsManager::GetResourcePolicyResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ResourcePolicy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::GetResourcePolicyResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the secret that the resource-based policy was retrieved for.


=head2 Name => Str

The friendly name of the secret that the resource-based policy was
retrieved for.


=head2 ResourcePolicy => Str

A JSON-formatted string that describes the permissions that are
associated with the attached secret. These permissions are combined
with any permissions that are associated with the user or role that
attempts to access this secret. The combined permissions specify who
can access the secret and what actions they can perform. For more
information, see Authentication and Access Control for AWS Secrets
Manager
(http://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html)
in the I<AWS Secrets Manager User Guide>.


=head2 _request_id => Str


=cut

1;