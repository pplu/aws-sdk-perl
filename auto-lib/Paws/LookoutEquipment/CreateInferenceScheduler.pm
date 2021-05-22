
package Paws::LookoutEquipment::CreateInferenceScheduler;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has DataDelayOffsetInMinutes => (is => 'ro', isa => 'Int');
  has DataInputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::InferenceInputConfiguration', required => 1);
  has DataOutputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::InferenceOutputConfiguration', required => 1);
  has DataUploadFrequency => (is => 'ro', isa => 'Str', required => 1);
  has InferenceSchedulerName => (is => 'ro', isa => 'Str', required => 1);
  has ModelName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has ServerSideKmsKeyId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::LookoutEquipment::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInferenceScheduler');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::CreateInferenceSchedulerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::CreateInferenceScheduler - Arguments for method CreateInferenceScheduler on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInferenceScheduler on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method CreateInferenceScheduler.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInferenceScheduler.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $CreateInferenceSchedulerResponse =
      $lookoutequipment->CreateInferenceScheduler(
      ClientToken            => 'MyIdempotenceToken',
      DataInputConfiguration => {
        InferenceInputNameConfiguration => {
          ComponentTimestampDelimiter =>
            'MyComponentTimestampDelimiter',    # max: 1; OPTIONAL
          TimestampFormat => 'MyFileNameTimestampFormat',    # OPTIONAL
        },    # OPTIONAL
        InputTimeZoneOffset  => 'MyTimeZoneOffset',    # OPTIONAL
        S3InputConfiguration => {
          Bucket => 'MyS3Bucket',                      # min: 3, max: 63
          Prefix => 'MyS3Prefix',                      # max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      DataOutputConfiguration => {
        S3OutputConfiguration => {
          Bucket => 'MyS3Bucket',    # min: 3, max: 63
          Prefix => 'MyS3Prefix',    # max: 1024; OPTIONAL
        },
        KmsKeyId => 'MyNameOrArn',    # min: 1, max: 2048; OPTIONAL
      },
      DataUploadFrequency      => 'PT5M',
      InferenceSchedulerName   => 'MyInferenceSchedulerName',
      ModelName                => 'MyModelName',
      RoleArn                  => 'MyIamRoleArn',
      DataDelayOffsetInMinutes => 1,                            # OPTIONAL
      ServerSideKmsKeyId       => 'MyNameOrArn',                # OPTIONAL
      Tags                     => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],                            # OPTIONAL
      );

    # Results:
    my $InferenceSchedulerArn =
      $CreateInferenceSchedulerResponse->InferenceSchedulerArn;
    my $InferenceSchedulerName =
      $CreateInferenceSchedulerResponse->InferenceSchedulerName;
    my $Status = $CreateInferenceSchedulerResponse->Status;

 # Returns a L<Paws::LookoutEquipment::CreateInferenceSchedulerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/CreateInferenceScheduler>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique identifier for the request. If you do not set the client
request token, Amazon Lookout for Equipment generates one.



=head2 DataDelayOffsetInMinutes => Int

A period of time (in minutes) by which inference on the data is delayed
after the data starts. For instance, if you select an offset delay time
of five minutes, inference will not begin on the data until the first
data measurement after the five minute mark. For example, if five
minutes is selected, the inference scheduler will wake up at the
configured frequency with the additional five minute delay time to
check the customer S3 bucket. The customer can upload data at the same
frequency and they don't need to stop and restart the scheduler when
uploading new data.



=head2 B<REQUIRED> DataInputConfiguration => L<Paws::LookoutEquipment::InferenceInputConfiguration>

Specifies configuration information for the input data for the
inference scheduler, including delimiter, format, and dataset location.



=head2 B<REQUIRED> DataOutputConfiguration => L<Paws::LookoutEquipment::InferenceOutputConfiguration>

Specifies configuration information for the output results for the
inference scheduler, including the S3 location for the output.



=head2 B<REQUIRED> DataUploadFrequency => Str

How often data is uploaded to the source S3 bucket for the input data.
The value chosen is the length of time between data uploads. For
instance, if you select 5 minutes, Amazon Lookout for Equipment will
upload the real-time data to the source bucket once every 5 minutes.
This frequency also determines how often Amazon Lookout for Equipment
starts a scheduled inference on your data. In this example, it starts
once every 5 minutes.

Valid values are: C<"PT5M">, C<"PT10M">, C<"PT15M">, C<"PT30M">, C<"PT1H">

=head2 B<REQUIRED> InferenceSchedulerName => Str

The name of the inference scheduler being created.



=head2 B<REQUIRED> ModelName => Str

The name of the previously trained ML model being used to create the
inference scheduler.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of a role with permission to access the
data source being used for the inference.



=head2 ServerSideKmsKeyId => Str

Provides the identifier of the AWS KMS customer master key (CMK) used
to encrypt inference scheduler data by Amazon Lookout for Equipment.



=head2 Tags => ArrayRef[L<Paws::LookoutEquipment::Tag>]

Any tags associated with the inference scheduler.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInferenceScheduler in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

