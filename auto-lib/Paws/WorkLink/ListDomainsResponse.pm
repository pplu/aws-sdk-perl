
package Paws::WorkLink::ListDomainsResponse;
  use Moose;
  has Domains => (is => 'ro', isa => 'ArrayRef[Paws::WorkLink::DomainSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::ListDomainsResponse

=head1 ATTRIBUTES


=head2 Domains => ArrayRef[L<Paws::WorkLink::DomainSummary>]

Information about the domains.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

