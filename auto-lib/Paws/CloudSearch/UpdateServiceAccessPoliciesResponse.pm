
package Paws::CloudSearch::UpdateServiceAccessPoliciesResponse;
  use Moose;
  has AccessPolicies => (is => 'ro', isa => 'Paws::CloudSearch::AccessPoliciesStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::UpdateServiceAccessPoliciesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessPolicies => L<Paws::CloudSearch::AccessPoliciesStatus>

The access rules configured for the domain.


=head2 _request_id => Str


=cut

