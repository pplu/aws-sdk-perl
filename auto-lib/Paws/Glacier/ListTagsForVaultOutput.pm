
package Paws::Glacier::ListTagsForVaultOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Glacier::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ListTagsForVaultOutput

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Glacier::TagMap>

The tags attached to the vault. Each tag is composed of a key and a
value.


=head2 _request_id => Str


=cut

