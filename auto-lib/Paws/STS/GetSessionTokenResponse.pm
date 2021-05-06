
package Paws::STS::GetSessionTokenResponse;
  use Moose;
  has Credentials => (is => 'ro', isa => 'Paws::STS::Credentials');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::GetSessionTokenResponse

=head1 ATTRIBUTES


=head2 Credentials => L<Paws::STS::Credentials>

The temporary security credentials, which include an access key ID, a
secret access key, and a security (or session) token.

The size of the security token that STS API operations return is not
fixed. We strongly recommend that you make no assumptions about the
maximum size.


=head2 _request_id => Str


=cut

