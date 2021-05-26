
package Paws::NetworkManager::ListTagsForResourceResponse;
  use Moose;
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[L<Paws::NetworkManager::Tag>]

The list of tags.


=head2 _request_id => Str


=cut

