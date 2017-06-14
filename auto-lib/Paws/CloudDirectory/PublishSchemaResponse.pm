
package Paws::CloudDirectory::PublishSchemaResponse;
  use Moose;
  has PublishedSchemaArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::PublishSchemaResponse

=head1 ATTRIBUTES


=head2 PublishedSchemaArn => Str

The ARN that is associated with the published schema. For more
information, see arns.


=head2 _request_id => Str


=cut

