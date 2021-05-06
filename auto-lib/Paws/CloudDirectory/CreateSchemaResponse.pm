
package Paws::CloudDirectory::CreateSchemaResponse;
  use Moose;
  has SchemaArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::CreateSchemaResponse

=head1 ATTRIBUTES


=head2 SchemaArn => Str

The Amazon Resource Name (ARN) that is associated with the schema. For
more information, see arns.


=head2 _request_id => Str


=cut

