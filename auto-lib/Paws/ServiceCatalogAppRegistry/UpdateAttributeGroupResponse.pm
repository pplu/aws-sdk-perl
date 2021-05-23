
package Paws::ServiceCatalogAppRegistry::UpdateAttributeGroupResponse;
  use Moose;
  has AttributeGroup => (is => 'ro', isa => 'Paws::ServiceCatalogAppRegistry::AttributeGroup', traits => ['NameInRequest'], request_name => 'attributeGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::UpdateAttributeGroupResponse

=head1 ATTRIBUTES


=head2 AttributeGroup => L<Paws::ServiceCatalogAppRegistry::AttributeGroup>

The updated information of the attribute group.


=head2 _request_id => Str


=cut

