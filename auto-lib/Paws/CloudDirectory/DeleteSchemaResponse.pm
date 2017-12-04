
package Paws::CloudDirectory::DeleteSchemaResponse;
  use Moose;
  has SchemaArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::DeleteSchemaResponse

=head1 ATTRIBUTES


=head2 SchemaArn => Str

The input ARN that is returned as part of the response. For more
information, see arns.


=head2 _request_id => Str


=cut

