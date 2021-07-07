
package Paws::IoT::CreateOTAUpdate;
  use Moose;
  has AdditionalParameters => (is => 'ro', isa => 'Paws::IoT::AdditionalParameterMap', traits => ['NameInRequest'], request_name => 'additionalParameters');
  has AwsJobAbortConfig => (is => 'ro', isa => 'Paws::IoT::AwsJobAbortConfig', traits => ['NameInRequest'], request_name => 'awsJobAbortConfig');
  has AwsJobExecutionsRolloutConfig => (is => 'ro', isa => 'Paws::IoT::AwsJobExecutionsRolloutConfig', traits => ['NameInRequest'], request_name => 'awsJobExecutionsRolloutConfig');
  has AwsJobPresignedUrlConfig => (is => 'ro', isa => 'Paws::IoT::AwsJobPresignedUrlConfig', traits => ['NameInRequest'], request_name => 'awsJobPresignedUrlConfig');
  has AwsJobTimeoutConfig => (is => 'ro', isa => 'Paws::IoT::AwsJobTimeoutConfig', traits => ['NameInRequest'], request_name => 'awsJobTimeoutConfig');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Files => (is => 'ro', isa => 'ArrayRef[Paws::IoT::OTAUpdateFile]', traits => ['NameInRequest'], request_name => 'files', required => 1);
  has OtaUpdateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'otaUpdateId', required => 1);
  has Protocols => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'protocols');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has Targets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'targets', required => 1);
  has TargetSelection => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetSelection');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOTAUpdate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/otaUpdates/{otaUpdateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateOTAUpdateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateOTAUpdate - Arguments for method CreateOTAUpdate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOTAUpdate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateOTAUpdate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateOTAUpdate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateOTAUpdateResponse = $iot->CreateOTAUpdate(
      Files => [
        {
          Attributes  => { 'MyAttributeKey' => 'MyValue', },    # OPTIONAL
          CodeSigning => {
            AwsSignerJobId    => 'MySigningJobId',              # OPTIONAL
            CustomCodeSigning => {
              CertificateChain => {
                CertificateName => 'MyCertificateName',    # OPTIONAL
                InlineDocument  => 'MyInlineDocument',     # OPTIONAL
              },    # OPTIONAL
              HashAlgorithm => 'MyHashAlgorithm',    # OPTIONAL
              Signature     => {
                InlineDocument => 'BlobSignature',    # OPTIONAL
              },    # OPTIONAL
              SignatureAlgorithm => 'MySignatureAlgorithm',    # OPTIONAL
            },    # OPTIONAL
            StartSigningJobParameter => {
              Destination => {
                S3Destination => {
                  Bucket => 'MyS3Bucket',    # min: 1; OPTIONAL
                  Prefix => 'MyPrefix',      # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              SigningProfileName      => 'MySigningProfileName',    # OPTIONAL
              SigningProfileParameter => {
                CertificateArn          => 'MyCertificateArn',      # OPTIONAL
                CertificatePathOnDevice =>
                  'MyCertificatePathOnDevice',                      # OPTIONAL
                Platform => 'MyPlatform',                           # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          FileLocation => {
            S3Location => {
              Bucket  => 'MyS3Bucket',     # min: 1; OPTIONAL
              Key     => 'MyS3Key',        # min: 1; OPTIONAL
              Version => 'MyS3Version',    # OPTIONAL
            },    # OPTIONAL
            Stream => {
              FileId   => 1,               # max: 255; OPTIONAL
              StreamId => 'MyStreamId',    # min: 1, max: 128; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          FileName    => 'MyFileName',                # OPTIONAL
          FileType    => 1,                           # max: 255; OPTIONAL
          FileVersion => 'MyOTAUpdateFileVersion',    # OPTIONAL
        },
        ...
      ],
      OtaUpdateId          => 'MyOTAUpdateId',
      RoleArn              => 'MyRoleArn',
      Targets              => [ 'MyTarget', ... ],
      AdditionalParameters => { 'MyAttributeKey' => 'MyValue', },    # OPTIONAL
      AwsJobAbortConfig    => {
        AbortCriteriaList => [
          {
            Action      => 'CANCEL',  # values: CANCEL
            FailureType => 'FAILED',  # values: FAILED, REJECTED, TIMED_OUT, ALL
            MinNumberOfExecutedThings => 1,    # min: 1
            ThresholdPercentage       => 1,    # max: 100

          },
          ...
        ],    # min: 1

      },    # OPTIONAL
      AwsJobExecutionsRolloutConfig => {
        ExponentialRate => {
          BaseRatePerMinute    => 1,    # min: 1, max: 1000
          IncrementFactor      => 1,
          RateIncreaseCriteria => {
            NumberOfNotifiedThings  => 1,    # min: 1; OPTIONAL
            NumberOfSucceededThings => 1,    # min: 1; OPTIONAL
          },

        },    # OPTIONAL
        MaximumPerMinute => 1,    # min: 1, max: 1000; OPTIONAL
      },    # OPTIONAL
      AwsJobPresignedUrlConfig => {
        ExpiresInSec => 1,    # OPTIONAL
      },    # OPTIONAL
      AwsJobTimeoutConfig => {
        InProgressTimeoutInMinutes => 1,    # OPTIONAL
      },    # OPTIONAL
      Description => 'MyOTAUpdateDescription',    # OPTIONAL
      Protocols   => [
        'MQTT', ...                               # values: MQTT, HTTP
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      TargetSelection => 'CONTINUOUS',    # OPTIONAL
    );

    # Results:
    my $AwsIotJobArn    = $CreateOTAUpdateResponse->AwsIotJobArn;
    my $AwsIotJobId     = $CreateOTAUpdateResponse->AwsIotJobId;
    my $OtaUpdateArn    = $CreateOTAUpdateResponse->OtaUpdateArn;
    my $OtaUpdateId     = $CreateOTAUpdateResponse->OtaUpdateId;
    my $OtaUpdateStatus = $CreateOTAUpdateResponse->OtaUpdateStatus;

    # Returns a L<Paws::IoT::CreateOTAUpdateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateOTAUpdate>

=head1 ATTRIBUTES


=head2 AdditionalParameters => L<Paws::IoT::AdditionalParameterMap>

A list of additional OTA update parameters which are name-value pairs.



=head2 AwsJobAbortConfig => L<Paws::IoT::AwsJobAbortConfig>

The criteria that determine when and how a job abort takes place.



=head2 AwsJobExecutionsRolloutConfig => L<Paws::IoT::AwsJobExecutionsRolloutConfig>

Configuration for the rollout of OTA updates.



=head2 AwsJobPresignedUrlConfig => L<Paws::IoT::AwsJobPresignedUrlConfig>

Configuration information for pre-signed URLs.



=head2 AwsJobTimeoutConfig => L<Paws::IoT::AwsJobTimeoutConfig>

Specifies the amount of time each device has to finish its execution of
the job. A timer is started when the job execution status is set to
C<IN_PROGRESS>. If the job execution status is not set to another
terminal state before the timer expires, it will be automatically set
to C<TIMED_OUT>.



=head2 Description => Str

The description of the OTA update.



=head2 B<REQUIRED> Files => ArrayRef[L<Paws::IoT::OTAUpdateFile>]

The files to be streamed by the OTA update.



=head2 B<REQUIRED> OtaUpdateId => Str

The ID of the OTA update to be created.



=head2 Protocols => ArrayRef[Str|Undef]

The protocol used to transfer the OTA update image. Valid values are
[HTTP], [MQTT], [HTTP, MQTT]. When both HTTP and MQTT are specified,
the target device can choose the protocol.



=head2 B<REQUIRED> RoleArn => Str

The IAM role that grants AWS IoT access to the Amazon S3, AWS IoT jobs
and AWS Code Signing resources to create an OTA update job.



=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

Metadata which can be used to manage updates.



=head2 B<REQUIRED> Targets => ArrayRef[Str|Undef]

The devices targeted to receive OTA updates.



=head2 TargetSelection => Str

Specifies whether the update will continue to run (CONTINUOUS), or will
be complete after all the things specified as targets have completed
the update (SNAPSHOT). If continuous, the update may also be run on a
thing when a change is detected in a target. For example, an update
will run on a thing when the thing is added to a target group, even
after the update was completed by all things originally in the group.
Valid values: CONTINUOUS | SNAPSHOT.

Valid values are: C<"CONTINUOUS">, C<"SNAPSHOT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOTAUpdate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

