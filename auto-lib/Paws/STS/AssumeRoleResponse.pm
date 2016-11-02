
package Paws::STS::AssumeRoleResponse;
  use Moose;
  has AssumedRoleUser => (is => 'ro', isa => 'Paws::STS::AssumedRoleUser');
  has Credentials => (is => 'ro', isa => 'Paws::STS::Credentials');
  has PackedPolicySize => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::AssumeRoleResponse

=head1 ATTRIBUTES


=head2 AssumedRoleUser => L<Paws::STS::AssumedRoleUser>

The Amazon Resource Name (ARN) and the assumed role ID, which are
identifiers that you can use to refer to the resulting temporary
security credentials. For example, you can reference these credentials
as a principal in a resource-based policy by using the ARN or assumed
role ID. The ARN and ID include the C<RoleSessionName> that you
specified when you called C<AssumeRole>.


=head2 Credentials => L<Paws::STS::Credentials>

The temporary security credentials, which include an access key ID, a
secret access key, and a security (or session) token.

B<Note:> The size of the security token that STS APIs return is not
fixed. We strongly recommend that you make no assumptions about the
maximum size. As of this writing, the typical size is less than 4096
bytes, but that can vary. Also, future updates to AWS might require
larger sizes.


=head2 PackedPolicySize => Int

A percentage value that indicates the size of the policy in packed
form. The service rejects any policy with a packed size greater than
100 percent, which means the policy exceeded the allowed space.


=head2 _request_id => Str


=cut

