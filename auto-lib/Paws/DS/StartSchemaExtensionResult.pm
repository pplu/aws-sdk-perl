
package Paws::DS::StartSchemaExtensionResult;
  use Moose;
  has SchemaExtensionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::StartSchemaExtensionResult

=head1 ATTRIBUTES


=head2 SchemaExtensionId => Str

The identifier of the schema extension that will be applied.


=head2 _request_id => Str


=cut

1;