
package Paws::DS::ListSchemaExtensionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SchemaExtensionsInfo => (is => 'ro', isa => 'ArrayRef[Paws::DS::SchemaExtensionInfo]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::ListSchemaExtensionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If not null, more results are available. Pass this value for the
C<NextToken> parameter in a subsequent call to C<ListSchemaExtensions>
to retrieve the next set of items.


=head2 SchemaExtensionsInfo => ArrayRef[L<Paws::DS::SchemaExtensionInfo>]

Information about the schema extensions applied to the directory.


=head2 _request_id => Str


=cut

1;