
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

B<Note:> The size of the security token that STS APIs return is not
fixed. We strongly recommend that you make no assumptions about the
maximum size. As of this writing, the typical size is less than 4096
bytes, but that can vary. Also, future updates to AWS might require
larger sizes.


=head2 _request_id => Str


=cut

