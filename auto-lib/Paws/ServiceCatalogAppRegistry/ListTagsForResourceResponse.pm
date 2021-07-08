
package Paws::ServiceCatalogAppRegistry::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::ServiceCatalogAppRegistry::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::ServiceCatalogAppRegistry::Tags>

The tags on the resource.


=head2 _request_id => Str


=cut

