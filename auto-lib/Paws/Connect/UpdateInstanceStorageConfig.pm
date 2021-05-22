
package Paws::Connect::UpdateInstanceStorageConfig;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AssociationId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType', required => 1);
  has StorageConfig => (is => 'ro', isa => 'Paws::Connect::InstanceStorageConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInstanceStorageConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance/{InstanceId}/storage-config/{AssociationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateInstanceStorageConfig - Arguments for method UpdateInstanceStorageConfig on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInstanceStorageConfig on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateInstanceStorageConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInstanceStorageConfig.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->UpdateInstanceStorageConfig(
      AssociationId => 'MyAssociationId',
      InstanceId    => 'MyInstanceId',
      ResourceType  => 'CHAT_TRANSCRIPTS',
      StorageConfig => {
        StorageType => 'S3'
        ,   # values: S3, KINESIS_VIDEO_STREAM, KINESIS_STREAM, KINESIS_FIREHOSE
        AssociationId         => 'MyAssociationId',    # min: 1, max: 100
        KinesisFirehoseConfig => {
          FirehoseArn => 'MyARN',

        },                                             # OPTIONAL
        KinesisStreamConfig => {
          StreamArn => 'MyARN',

        },                                             # OPTIONAL
        KinesisVideoStreamConfig => {
          EncryptionConfig => {
            EncryptionType => 'KMS',                   # values: KMS
            KeyId          => 'MyKeyId',               # min: 1, max: 128

          },
          Prefix               => 'MyPrefix',          # min: 1, max: 128
          RetentionPeriodHours => 1,                   # max: 87600

        },    # OPTIONAL
        S3Config => {
          BucketName       => 'MyBucketName',    # min: 1, max: 128
          BucketPrefix     => 'MyPrefix',        # min: 1, max: 128
          EncryptionConfig => {
            EncryptionType => 'KMS',             # values: KMS
            KeyId          => 'MyKeyId',         # min: 1, max: 128

          },
        },    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateInstanceStorageConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationId => Str

The existing association identifier that uniquely identifies the
resource type and storage config for the given instance ID.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 B<REQUIRED> ResourceType => Str

A valid resource type.

Valid values are: C<"CHAT_TRANSCRIPTS">, C<"CALL_RECORDINGS">, C<"SCHEDULED_REPORTS">, C<"MEDIA_STREAMS">, C<"CONTACT_TRACE_RECORDS">, C<"AGENT_EVENTS">

=head2 B<REQUIRED> StorageConfig => L<Paws::Connect::InstanceStorageConfig>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInstanceStorageConfig in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

