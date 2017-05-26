
package Paws::Route53Domains::GetDomainSuggestionsResponse;
  use Moose;
  has SuggestionsList => (is => 'ro', isa => 'ArrayRef[Paws::Route53Domains::DomainSuggestion]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::GetDomainSuggestionsResponse

=head1 ATTRIBUTES


=head2 SuggestionsList => ArrayRef[L<Paws::Route53Domains::DomainSuggestion>]

A list of possible domain names. If you specified C<true> for
C<OnlyAvailable> in the request, the list contains only domains that
are available for registration.


=head2 _request_id => Str


=cut

1;