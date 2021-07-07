
package Paws::SageMaker::DeleteArtifact;
  use Moose;
  has ArtifactArn => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Paws::SageMaker::ArtifactSource');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteArtifact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DeleteArtifactResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeleteArtifact - Arguments for method DeleteArtifact on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteArtifact on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DeleteArtifact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteArtifact.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DeleteArtifactResponse = $api . sagemaker->DeleteArtifact(
      ArtifactArn => 'MyArtifactArn',    # OPTIONAL
      Source      => {
        SourceUri   => 'MyString2048',    # max: 2048
        SourceTypes => [
          {
            SourceIdType =>
              'MD5Hash',    # values: MD5Hash, S3ETag, S3Version, Custom
            Value => 'MyString256',    # max: 256

          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ArtifactArn = $DeleteArtifactResponse->ArtifactArn;

    # Returns a L<Paws::SageMaker::DeleteArtifactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DeleteArtifact>

=head1 ATTRIBUTES


=head2 ArtifactArn => Str

The Amazon Resource Name (ARN) of the artifact to delete.



=head2 Source => L<Paws::SageMaker::ArtifactSource>

The URI of the source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteArtifact in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

