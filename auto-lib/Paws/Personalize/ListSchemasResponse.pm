
package Paws::Personalize::ListSchemasResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Schemas => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::DatasetSchemaSummary]', traits => ['NameInRequest'], request_name => 'schemas' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListSchemasResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token used to get the next set of schemas (if they exist).


=head2 Schemas => ArrayRef[L<Paws::Personalize::DatasetSchemaSummary>]

A list of schemas.


=head2 _request_id => Str


=cut

1;