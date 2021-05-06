
package Paws::Schemas::ListSchemaVersionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SchemaVersions => (is => 'ro', isa => 'ArrayRef[Paws::Schemas::SchemaVersionSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::ListSchemaVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that specifies the next page of results to return. To request
the first page, leave NextToken empty. The token will expire in 24
hours, and cannot be shared with other accounts.


=head2 SchemaVersions => ArrayRef[L<Paws::Schemas::SchemaVersionSummary>]

An array of schema version summaries.


=head2 _request_id => Str


=cut

