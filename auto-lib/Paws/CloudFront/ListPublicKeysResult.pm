
package Paws::CloudFront::ListPublicKeysResult;
  use Moose;
  has PublicKeyList => (is => 'ro', isa => 'Paws::CloudFront::PublicKeyList');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'PublicKeyList');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListPublicKeysResult

=head1 ATTRIBUTES


=head2 PublicKeyList => L<Paws::CloudFront::PublicKeyList>

Returns a list of all public keys that have been added to CloudFront
for this account.




=cut

