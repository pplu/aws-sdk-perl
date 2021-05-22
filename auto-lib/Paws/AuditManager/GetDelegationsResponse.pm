
package Paws::AuditManager::GetDelegationsResponse;
  use Moose;
  has Delegations => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::DelegationMetadata]', traits => ['NameInRequest'], request_name => 'delegations');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetDelegationsResponse

=head1 ATTRIBUTES


=head2 Delegations => ArrayRef[L<Paws::AuditManager::DelegationMetadata>]

The list of delegations returned by the C<GetDelegations> API.


=head2 NextToken => Str

The pagination token used to fetch the next set of results.


=head2 _request_id => Str


=cut

