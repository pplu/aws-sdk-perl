
package Paws::Lightsail::GetKeyPairResult;
  use Moose;
  has KeyPair => (is => 'ro', isa => 'Paws::Lightsail::KeyPair', traits => ['NameInRequest'], request_name => 'keyPair' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetKeyPairResult

=head1 ATTRIBUTES


=head2 KeyPair => L<Paws::Lightsail::KeyPair>

An array of key-value pairs containing information about the key pair.


=head2 _request_id => Str


=cut

1;