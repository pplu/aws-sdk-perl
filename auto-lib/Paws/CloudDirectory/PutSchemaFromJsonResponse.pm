
package Paws::CloudDirectory::PutSchemaFromJsonResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::PutSchemaFromJsonResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the schema to update.


=head2 _request_id => Str


=cut

