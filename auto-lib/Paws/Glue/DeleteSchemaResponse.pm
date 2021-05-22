
package Paws::Glue::DeleteSchemaResponse;
  use Moose;
  has SchemaArn => (is => 'ro', isa => 'Str');
  has SchemaName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteSchemaResponse

=head1 ATTRIBUTES


=head2 SchemaArn => Str

The Amazon Resource Name (ARN) of the schema being deleted.


=head2 SchemaName => Str

The name of the schema being deleted.


=head2 Status => Str

The status of the schema.

Valid values are: C<"AVAILABLE">, C<"PENDING">, C<"DELETING">
=head2 _request_id => Str


=cut

1;