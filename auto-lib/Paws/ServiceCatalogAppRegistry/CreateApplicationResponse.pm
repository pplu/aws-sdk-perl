
package Paws::ServiceCatalogAppRegistry::CreateApplicationResponse;
  use Moose;
  has Application => (is => 'ro', isa => 'Paws::ServiceCatalogAppRegistry::Application', traits => ['NameInRequest'], request_name => 'application');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::CreateApplicationResponse

=head1 ATTRIBUTES


=head2 Application => L<Paws::ServiceCatalogAppRegistry::Application>

Information about the application.


=head2 _request_id => Str


=cut

