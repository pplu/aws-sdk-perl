
package Paws::ServiceCatalogAppRegistry::AssociateAttributeGroupResponse;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationArn');
  has AttributeGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attributeGroupArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::AssociateAttributeGroupResponse

=head1 ATTRIBUTES


=head2 ApplicationArn => Str

The Amazon resource name (ARN) of the application that was augmented
with attributes.


=head2 AttributeGroupArn => Str

The Amazon resource name (ARN) of the attribute group that contains the
application's new attributes.


=head2 _request_id => Str


=cut

