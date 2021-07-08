
package Paws::SageMaker::CreateArtifact;
  use Moose;
  has ArtifactName => (is => 'ro', isa => 'Str');
  has ArtifactType => (is => 'ro', isa => 'Str', required => 1);
  has MetadataProperties => (is => 'ro', isa => 'Paws::SageMaker::MetadataProperties');
  has Properties => (is => 'ro', isa => 'Paws::SageMaker::LineageEntityParameters');
  has Source => (is => 'ro', isa => 'Paws::SageMaker::ArtifactSource', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateArtifact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateArtifactResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateArtifact - Arguments for method CreateArtifact on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateArtifact on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateArtifact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateArtifact.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateArtifactResponse = $api . sagemaker->CreateArtifact(
      ArtifactType => 'MyString256',
      Source       => {
        SourceUri   => 'MyString2048',    # max: 2048
        SourceTypes => [
          {
            SourceIdType =>
              'MD5Hash',    # values: MD5Hash, S3ETag, S3Version, Custom
            Value => 'MyString256',    # max: 256

          },
          ...
        ],    # OPTIONAL
      },
      ArtifactName       => 'MyExperimentEntityName',    # OPTIONAL
      MetadataProperties => {
        CommitId    => 'MyMetadataPropertyValue',        # max: 1024; OPTIONAL
        GeneratedBy => 'MyMetadataPropertyValue',        # max: 1024; OPTIONAL
        ProjectId   => 'MyMetadataPropertyValue',        # max: 1024; OPTIONAL
        Repository  => 'MyMetadataPropertyValue',        # max: 1024; OPTIONAL
      },    # OPTIONAL
      Properties => {
        'MyStringParameterValue' =>
          'MyStringParameterValue',    # key: max: 256, value: max: 256
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ArtifactArn = $CreateArtifactResponse->ArtifactArn;

    # Returns a L<Paws::SageMaker::CreateArtifactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateArtifact>

=head1 ATTRIBUTES


=head2 ArtifactName => Str

The name of the artifact. Must be unique to your account in an Amazon
Web Services Region.



=head2 B<REQUIRED> ArtifactType => Str

The artifact type.



=head2 MetadataProperties => L<Paws::SageMaker::MetadataProperties>





=head2 Properties => L<Paws::SageMaker::LineageEntityParameters>

A list of properties to add to the artifact.



=head2 B<REQUIRED> Source => L<Paws::SageMaker::ArtifactSource>

The ID, ID type, and URI of the source.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

A list of tags to apply to the artifact.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateArtifact in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

