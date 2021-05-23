
package Paws::ServiceCatalogAppRegistry::GetAttributeGroupResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Attributes => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attributes');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has LastUpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdateTime');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Tags => (is => 'ro', isa => 'Paws::ServiceCatalogAppRegistry::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::GetAttributeGroupResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon resource name (ARN) that specifies the attribute group
across services.


=head2 Attributes => Str

A JSON string in the form of nested key-value pairs that represent the
attributes in the group and describes an application and its
components.


=head2 CreationTime => Str

The ISO-8601 formatted timestamp of the moment the attribute group was
created.


=head2 Description => Str

The description of the attribute group that the user provides.


=head2 Id => Str

The identifier of the attribute group.


=head2 LastUpdateTime => Str

The ISO-8601 formatted timestamp of the moment the attribute group was
last updated. This time is the same as the creationTime for a newly
created attribute group.


=head2 Name => Str

The name of the attribute group.


=head2 Tags => L<Paws::ServiceCatalogAppRegistry::Tags>

Key-value pairs associated with the attribute group.


=head2 _request_id => Str


=cut

