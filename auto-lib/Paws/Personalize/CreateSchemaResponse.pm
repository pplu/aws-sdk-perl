
package Paws::Personalize::CreateSchemaResponse;
  use Moose;
  has SchemaArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schemaArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateSchemaResponse

=head1 ATTRIBUTES


=head2 SchemaArn => Str

The Amazon Resource Name (ARN) of the created schema.


=head2 _request_id => Str


=cut

1;