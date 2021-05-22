
package Paws::Macie2::BatchGetCustomDataIdentifiersResponse;
  use Moose;
  has CustomDataIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::BatchGetCustomDataIdentifierSummary]', traits => ['NameInRequest'], request_name => 'customDataIdentifiers');
  has NotFoundIdentifierIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'notFoundIdentifierIds');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::BatchGetCustomDataIdentifiersResponse

=head1 ATTRIBUTES


=head2 CustomDataIdentifiers => ArrayRef[L<Paws::Macie2::BatchGetCustomDataIdentifierSummary>]

An array of objects, one for each custom data identifier that meets the
criteria specified in the request.


=head2 NotFoundIdentifierIds => ArrayRef[Str|Undef]

An array of identifiers, one for each identifier that was specified in
the request, but doesn't correlate to an existing custom data
identifier.


=head2 _request_id => Str


=cut

