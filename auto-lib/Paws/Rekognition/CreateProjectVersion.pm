
package Paws::Rekognition::CreateProjectVersion;
  use Moose;
  has OutputConfig => (is => 'ro', isa => 'Paws::Rekognition::OutputConfig', required => 1);
  has ProjectArn => (is => 'ro', isa => 'Str', required => 1);
  has TestingData => (is => 'ro', isa => 'Paws::Rekognition::TestingData', required => 1);
  has TrainingData => (is => 'ro', isa => 'Paws::Rekognition::TrainingData', required => 1);
  has VersionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProjectVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::CreateProjectVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CreateProjectVersion - Arguments for method CreateProjectVersion on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProjectVersion on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method CreateProjectVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProjectVersion.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $CreateProjectVersionResponse = $rekognition->CreateProjectVersion(
      OutputConfig => {
        S3Bucket    => 'MyS3Bucket',       # min: 3, max: 255; OPTIONAL
        S3KeyPrefix => 'MyS3KeyPrefix',    # max: 1024; OPTIONAL
      },
      ProjectArn  => 'MyProjectArn',
      TestingData => {
        Assets => [
          {
            GroundTruthManifest => {
              S3Object => {
                Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
                Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
                Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        AutoCreate => 1,    # OPTIONAL
      },
      TrainingData => {
        Assets => [
          {
            GroundTruthManifest => {
              S3Object => {
                Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
                Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
                Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },
      VersionName => 'MyVersionName',

    );

    # Results:
    my $ProjectVersionArn = $CreateProjectVersionResponse->ProjectVersionArn;

    # Returns a L<Paws::Rekognition::CreateProjectVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/CreateProjectVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OutputConfig => L<Paws::Rekognition::OutputConfig>

The Amazon S3 location to store the results of training.



=head2 B<REQUIRED> ProjectArn => Str

The ARN of the Amazon Rekognition Custom Labels project that manages
the model that you want to train.



=head2 B<REQUIRED> TestingData => L<Paws::Rekognition::TestingData>

The dataset to use for testing.



=head2 B<REQUIRED> TrainingData => L<Paws::Rekognition::TrainingData>

The dataset to use for training.



=head2 B<REQUIRED> VersionName => Str

A name for the version of the model. This value must be unique.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProjectVersion in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

