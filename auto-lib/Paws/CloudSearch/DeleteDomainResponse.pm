
package Paws::CloudSearch::DeleteDomainResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DomainStatus => (is => 'ro', isa => 'Paws::CloudSearch::DomainStatus');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DeleteDomainResponse

=head1 ATTRIBUTES

=head2 DomainStatus => Paws::CloudSearch::DomainStatus

  


=cut

