
package Paws::ServiceCatalogAppRegistry::GetApplicationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has AssociatedResourceCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'associatedResourceCount');
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

Paws::ServiceCatalogAppRegistry::GetApplicationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon resource name (ARN) that specifies the application across
services.


=head2 AssociatedResourceCount => Int

The number of top-level resources that were registered as part of this
application.


=head2 CreationTime => Str

The ISO-8601 formatted timestamp of the moment when the application was
created.


=head2 Description => Str

The description of the application.


=head2 Id => Str

The identifier of the application.


=head2 LastUpdateTime => Str

The ISO-8601 formatted timestamp of the moment when the application was
last updated.


=head2 Name => Str

The name of the application. The name must be unique in the region in
which you are creating the application.


=head2 Tags => L<Paws::ServiceCatalogAppRegistry::Tags>

Key-value pairs associated with the application.


=head2 _request_id => Str


=cut

