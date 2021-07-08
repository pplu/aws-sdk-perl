
package Paws::AuditManager::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::AuditManager::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::AuditManager::TagMap>

The list of tags returned by the C<ListTagsForResource> API.


=head2 _request_id => Str


=cut

