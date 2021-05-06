
package Paws::CloudTrail::ListPublicKeysResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PublicKeyList => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::PublicKey]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListPublicKeysResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Reserved for future use.


=head2 PublicKeyList => ArrayRef[L<Paws::CloudTrail::PublicKey>]

Contains an array of PublicKey objects.

The returned public keys may have validity time ranges that overlap.


=head2 _request_id => Str


=cut

1;