
package Paws::CloudDirectory::UpdateSchemaResponse;
  use Moose;
  has SchemaArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::UpdateSchemaResponse

=head1 ATTRIBUTES


=head2 SchemaArn => Str

The ARN that is associated with the updated schema. For more
information, see arns.


=head2 _request_id => Str


=cut

