
package Paws::ES::GetCompatibleElasticsearchVersionsResponse;
  use Moose;
  has CompatibleElasticsearchVersions => (is => 'ro', isa => 'ArrayRef[Paws::ES::CompatibleVersionsMap]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::GetCompatibleElasticsearchVersionsResponse

=head1 ATTRIBUTES


=head2 CompatibleElasticsearchVersions => ArrayRef[L<Paws::ES::CompatibleVersionsMap>]

A map of compatible Elasticsearch versions returned as part of the C<
GetCompatibleElasticsearchVersions > operation.


=head2 _request_id => Str


=cut

