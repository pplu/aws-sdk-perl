
package Paws::Glue::UpdateSchemaResponse;
  use Moose;
  has RegistryName => (is => 'ro', isa => 'Str');
  has SchemaArn => (is => 'ro', isa => 'Str');
  has SchemaName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateSchemaResponse

=head1 ATTRIBUTES


=head2 RegistryName => Str

The name of the registry that contains the schema.


=head2 SchemaArn => Str

The Amazon Resource Name (ARN) of the schema.


=head2 SchemaName => Str

The name of the schema.


=head2 _request_id => Str


=cut

1;