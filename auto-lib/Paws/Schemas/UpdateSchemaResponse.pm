
package Paws::Schemas::UpdateSchemaResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has SchemaArn => (is => 'ro', isa => 'Str');
  has SchemaName => (is => 'ro', isa => 'Str');
  has SchemaVersion => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Schemas::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str');
  has VersionCreatedDate => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::UpdateSchemaResponse

=head1 ATTRIBUTES


=head2 Description => Str

The description of the schema.


=head2 LastModified => Str

The date and time that schema was modified.


=head2 SchemaArn => Str

The ARN of the schema.


=head2 SchemaName => Str

The name of the schema.


=head2 SchemaVersion => Str

The version number of the schema


=head2 Tags => L<Paws::Schemas::Tags>




=head2 Type => Str

The type of the schema.


=head2 VersionCreatedDate => Str

The date the schema version was created.


=head2 _request_id => Str


=cut

