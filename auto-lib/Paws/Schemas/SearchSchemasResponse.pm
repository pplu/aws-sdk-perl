
package Paws::Schemas::SearchSchemasResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Schemas => (is => 'ro', isa => 'ArrayRef[Paws::Schemas::SearchSchemaSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::SearchSchemasResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that specifies the next page of results to return. To request
the first page, leave NextToken empty. The token will expire in 24
hours, and cannot be shared with other accounts.


=head2 Schemas => ArrayRef[L<Paws::Schemas::SearchSchemaSummary>]

An array of SearchSchemaSummary information.


=head2 _request_id => Str


=cut

