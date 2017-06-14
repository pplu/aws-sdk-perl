
package Paws::CloudDirectory::CreateDirectoryResponse;
  use Moose;
  has AppliedSchemaArn => (is => 'ro', isa => 'Str', required => 1);
  has DirectoryArn => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ObjectIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::CreateDirectoryResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppliedSchemaArn => Str

The ARN of the published schema in the Directory. Once a published
schema is copied into the directory, it has its own ARN, which is
referred to applied schema ARN. For more information, see arns.


=head2 B<REQUIRED> DirectoryArn => Str

The ARN that is associated with the Directory. For more information,
see arns.


=head2 B<REQUIRED> Name => Str

The name of the Directory.


=head2 B<REQUIRED> ObjectIdentifier => Str

The root object node of the created directory.


=head2 _request_id => Str


=cut

