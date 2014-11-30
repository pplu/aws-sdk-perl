
package Paws::CloudSearch::UpdateServiceAccessPoliciesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has AccessPolicies => (is => 'ro', isa => 'Paws::CloudSearch::AccessPoliciesStatus', required => 1);

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::UpdateServiceAccessPoliciesResponse

=head1 ATTRIBUTES

=head2 B<REQUIRED> AccessPolicies => Paws::CloudSearch::AccessPoliciesStatus

  

The access rules configured for the domain.











=cut

