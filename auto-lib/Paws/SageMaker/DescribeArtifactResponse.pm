
package Paws::SageMaker::DescribeArtifactResponse;
  use Moose;
  has ArtifactArn => (is => 'ro', isa => 'Str');
  has ArtifactName => (is => 'ro', isa => 'Str');
  has ArtifactType => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has MetadataProperties => (is => 'ro', isa => 'Paws::SageMaker::MetadataProperties');
  has Properties => (is => 'ro', isa => 'Paws::SageMaker::LineageEntityParameters');
  has Source => (is => 'ro', isa => 'Paws::SageMaker::ArtifactSource');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeArtifactResponse

=head1 ATTRIBUTES


=head2 ArtifactArn => Str

The Amazon Resource Name (ARN) of the artifact.


=head2 ArtifactName => Str

The name of the artifact.


=head2 ArtifactType => Str

The type of the artifact.


=head2 CreatedBy => L<Paws::SageMaker::UserContext>




=head2 CreationTime => Str

When the artifact was created.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>




=head2 LastModifiedTime => Str

When the artifact was last modified.


=head2 MetadataProperties => L<Paws::SageMaker::MetadataProperties>




=head2 Properties => L<Paws::SageMaker::LineageEntityParameters>

A list of the artifact's properties.


=head2 Source => L<Paws::SageMaker::ArtifactSource>

The source of the artifact.


=head2 _request_id => Str


=cut

1;