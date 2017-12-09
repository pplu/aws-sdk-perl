
package Paws::CloudDirectory::GetAppliedSchemaVersionResponse;
  use Moose;
  has AppliedSchemaArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::GetAppliedSchemaVersionResponse

=head1 ATTRIBUTES


=head2 AppliedSchemaArn => Str

Current applied schema ARN, including the minor version in use if one
was provided.


=head2 _request_id => Str


=cut

