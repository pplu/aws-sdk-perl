
package Paws::ServiceCatalogAppRegistry::DeleteApplicationResponse;
  use Moose;
  has Application => (is => 'ro', isa => 'Paws::ServiceCatalogAppRegistry::ApplicationSummary', traits => ['NameInRequest'], request_name => 'application');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::DeleteApplicationResponse

=head1 ATTRIBUTES


=head2 Application => L<Paws::ServiceCatalogAppRegistry::ApplicationSummary>

Information about the deleted application.


=head2 _request_id => Str


=cut

