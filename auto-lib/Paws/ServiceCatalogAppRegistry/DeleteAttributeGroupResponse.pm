
package Paws::ServiceCatalogAppRegistry::DeleteAttributeGroupResponse;
  use Moose;
  has AttributeGroup => (is => 'ro', isa => 'Paws::ServiceCatalogAppRegistry::AttributeGroupSummary', traits => ['NameInRequest'], request_name => 'attributeGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::DeleteAttributeGroupResponse

=head1 ATTRIBUTES


=head2 AttributeGroup => L<Paws::ServiceCatalogAppRegistry::AttributeGroupSummary>

Information about the deleted attribute group.


=head2 _request_id => Str


=cut

