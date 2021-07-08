
package Paws::EKS::ListAddonsResponse;
  use Moose;
  has Addons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'addons');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListAddonsResponse

=head1 ATTRIBUTES


=head2 Addons => ArrayRef[Str|Undef]

A list of available add-ons.


=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListAddonsResponse> where C<maxResults> was used and the results
exceeded the value of that parameter. Pagination continues from the end
of the previous results that returned the C<nextToken> value.

This token should be treated as an opaque identifier that is used only
to retrieve the next items in a list and not for other programmatic
purposes.


=head2 _request_id => Str


=cut

