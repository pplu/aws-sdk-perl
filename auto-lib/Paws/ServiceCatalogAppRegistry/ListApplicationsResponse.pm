
package Paws::ServiceCatalogAppRegistry::ListApplicationsResponse;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalogAppRegistry::ApplicationSummary]', traits => ['NameInRequest'], request_name => 'applications');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::ListApplicationsResponse

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[L<Paws::ServiceCatalogAppRegistry::ApplicationSummary>]

This list of applications.


=head2 NextToken => Str

The token to use to get the next page of results after a previous API
call.


=head2 _request_id => Str


=cut

