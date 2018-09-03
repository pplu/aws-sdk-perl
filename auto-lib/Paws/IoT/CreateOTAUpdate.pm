
package Paws::IoT::CreateOTAUpdate;
  use Moose;
  has AdditionalParameters => (is => 'ro', isa => 'Paws::IoT::AdditionalParameterMap', traits => ['NameInRequest'], request_name => 'additionalParameters');
  has AwsJobExecutionsRolloutConfig => (is => 'ro', isa => 'Paws::IoT::AwsJobExecutionsRolloutConfig', traits => ['NameInRequest'], request_name => 'awsJobExecutionsRolloutConfig');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Files => (is => 'ro', isa => 'ArrayRef[Paws::IoT::OTAUpdateFile]', traits => ['NameInRequest'], request_name => 'files', required => 1);
  has OtaUpdateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'otaUpdateId', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
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
          Attributes => { 'MyAttributeKey' => 'MyValue', },    # OPTIONAL
          CodeSigning => {
            AwsSignerJobId    => 'MySigningJobId',             # OPTIONAL
            CustomCodeSigning => {
              CertificateChain => {
                CertificateName => 'MyCertificateName',        # OPTIONAL
                InlineDocument  => 'MyInlineDocument',         # OPTIONAL
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
                CertificateArn => 'MyCertificateArn',               # OPTIONAL
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
          FileVersion => 'MyOTAUpdateFileVersion',    # OPTIONAL
        },
        ...
      ],
      OtaUpdateId          => 'MyOTAUpdateId',
      RoleArn              => 'MyRoleArn',
      Targets              => [ 'MyTarget', ... ],
      AdditionalParameters => { 'MyAttributeKey' => 'MyValue', },    # OPTIONAL
      AwsJobExecutionsRolloutConfig => {
        MaximumPerMinute => 1,    # min: 1, max: 1000; OPTIONAL
      },    # OPTIONAL
      Description     => 'MyOTAUpdateDescription',    # OPTIONAL
      TargetSelection => 'CONTINUOUS',                # OPTIONAL
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



=head2 AwsJobExecutionsRolloutConfig => L<Paws::IoT::AwsJobExecutionsRolloutConfig>

Configuration for the rollout of OTA updates.



=head2 Description => Str

The description of the OTA update.



=head2 B<REQUIRED> Files => ArrayRef[L<Paws::IoT::OTAUpdateFile>]

The files to be streamed by the OTA update.



=head2 B<REQUIRED> OtaUpdateId => Str

The ID of the OTA update to be created.



=head2 B<REQUIRED> RoleArn => Str

The IAM role that allows access to the AWS IoT Jobs service.



=head2 B<REQUIRED> Targets => ArrayRef[Str|Undef]

The targeted devices to receive OTA updates.



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

