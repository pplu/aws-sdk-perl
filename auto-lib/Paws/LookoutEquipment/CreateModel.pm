
package Paws::LookoutEquipment::CreateModel;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has DataPreProcessingConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::DataPreProcessingConfiguration');
  has DatasetName => (is => 'ro', isa => 'Str', required => 1);
  has DatasetSchema => (is => 'ro', isa => 'Paws::LookoutEquipment::DatasetSchema');
  has EvaluationDataEndTime => (is => 'ro', isa => 'Str');
  has EvaluationDataStartTime => (is => 'ro', isa => 'Str');
  has LabelsInputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::LabelsInputConfiguration');
  has ModelName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');
  has ServerSideKmsKeyId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::LookoutEquipment::Tag]');
  has TrainingDataEndTime => (is => 'ro', isa => 'Str');
  has TrainingDataStartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateModel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::CreateModelResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::CreateModel - Arguments for method CreateModel on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModel on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method CreateModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModel.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $CreateModelResponse = $lookoutequipment->CreateModel(
      ClientToken                    => 'MyIdempotenceToken',
      DatasetName                    => 'MyDatasetIdentifier',
      ModelName                      => 'MyModelName',
      DataPreProcessingConfiguration => {
        TargetSamplingRate => 'PT1S'
        , # values: PT1S, PT5S, PT10S, PT15S, PT30S, PT1M, PT5M, PT10M, PT15M, PT30M, PT1H; OPTIONAL
      },    # OPTIONAL
      DatasetSchema => {
        InlineDataSchema =>
          'MyInlineDataSchema',    # min: 1, max: 1000000; OPTIONAL
      },    # OPTIONAL
      EvaluationDataEndTime    => '1970-01-01T01:00:00',    # OPTIONAL
      EvaluationDataStartTime  => '1970-01-01T01:00:00',    # OPTIONAL
      LabelsInputConfiguration => {
        S3InputConfiguration => {
          Bucket => 'MyS3Bucket',    # min: 3, max: 63
          Prefix => 'MyS3Prefix',    # max: 1024; OPTIONAL
        },

      },    # OPTIONAL
      RoleArn            => 'MyIamRoleArn',    # OPTIONAL
      ServerSideKmsKeyId => 'MyNameOrArn',     # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',                 # min: 1, max: 128
          Value => 'MyTagValue',               # max: 256

        },
        ...
      ],                                       # OPTIONAL
      TrainingDataEndTime   => '1970-01-01T01:00:00',    # OPTIONAL
      TrainingDataStartTime => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $ModelArn = $CreateModelResponse->ModelArn;
    my $Status   = $CreateModelResponse->Status;

    # Returns a L<Paws::LookoutEquipment::CreateModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/CreateModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique identifier for the request. If you do not set the client
request token, Amazon Lookout for Equipment generates one.



=head2 DataPreProcessingConfiguration => L<Paws::LookoutEquipment::DataPreProcessingConfiguration>

The configuration is the C<TargetSamplingRate>, which is the sampling
rate of the data after post processing by Amazon Lookout for Equipment.
For example, if you provide data that has been collected at a 1 second
level and you want the system to resample the data at a 1 minute rate
before training, the C<TargetSamplingRate> is 1 minute.

When providing a value for the C<TargetSamplingRate>, you must attach
the prefix "PT" to the rate you want. The value for a 1 second rate is
therefore I<PT1S>, the value for a 15 minute rate is I<PT15M>, and the
value for a 1 hour rate is I<PT1H>



=head2 B<REQUIRED> DatasetName => Str

The name of the dataset for the ML model being created.



=head2 DatasetSchema => L<Paws::LookoutEquipment::DatasetSchema>

The data schema for the ML model being created.



=head2 EvaluationDataEndTime => Str

Indicates the time reference in the dataset that should be used to end
the subset of evaluation data for the ML model.



=head2 EvaluationDataStartTime => Str

Indicates the time reference in the dataset that should be used to
begin the subset of evaluation data for the ML model.



=head2 LabelsInputConfiguration => L<Paws::LookoutEquipment::LabelsInputConfiguration>

The input configuration for the labels being used for the ML model
that's being created.



=head2 B<REQUIRED> ModelName => Str

The name for the ML model to be created.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of a role with permission to access the
data source being used to create the ML model.



=head2 ServerSideKmsKeyId => Str

Provides the identifier of the AWS KMS customer master key (CMK) used
to encrypt model data by Amazon Lookout for Equipment.



=head2 Tags => ArrayRef[L<Paws::LookoutEquipment::Tag>]

Any tags associated with the ML model being created.



=head2 TrainingDataEndTime => Str

Indicates the time reference in the dataset that should be used to end
the subset of training data for the ML model.



=head2 TrainingDataStartTime => Str

Indicates the time reference in the dataset that should be used to
begin the subset of training data for the ML model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModel in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

