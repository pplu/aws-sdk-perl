
package Paws::ServiceCatalogAppRegistry::ListAssociatedResourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalogAppRegistry::ResourceInfo]', traits => ['NameInRequest'], request_name => 'resources');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::ListAssociatedResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to get the next page of results after a previous API
call.


=head2 Resources => ArrayRef[L<Paws::ServiceCatalogAppRegistry::ResourceInfo>]

Information about the resources.


=head2 _request_id => Str


=cut

