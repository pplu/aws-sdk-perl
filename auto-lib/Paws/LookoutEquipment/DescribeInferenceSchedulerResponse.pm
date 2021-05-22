
package Paws::LookoutEquipment::DescribeInferenceSchedulerResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DataDelayOffsetInMinutes => (is => 'ro', isa => 'Int');
  has DataInputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::InferenceInputConfiguration');
  has DataOutputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::InferenceOutputConfiguration');
  has DataUploadFrequency => (is => 'ro', isa => 'Str');
  has InferenceSchedulerArn => (is => 'ro', isa => 'Str');
  has InferenceSchedulerName => (is => 'ro', isa => 'Str');
  has ModelArn => (is => 'ro', isa => 'Str');
  has ModelName => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has ServerSideKmsKeyId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeInferenceSchedulerResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

Specifies the time at which the inference scheduler was created.


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


=head2 DataInputConfiguration => L<Paws::LookoutEquipment::InferenceInputConfiguration>

Specifies configuration information for the input data for the
inference scheduler, including delimiter, format, and dataset location.


=head2 DataOutputConfiguration => L<Paws::LookoutEquipment::InferenceOutputConfiguration>

Specifies information for the output results for the inference
scheduler, including the output S3 location.


=head2 DataUploadFrequency => Str

Specifies how often data is uploaded to the source S3 bucket for the
input data. This value is the length of time between data uploads. For
instance, if you select 5 minutes, Amazon Lookout for Equipment will
upload the real-time data to the source bucket once every 5 minutes.
This frequency also determines how often Amazon Lookout for Equipment
starts a scheduled inference on your data. In this example, it starts
once every 5 minutes.

Valid values are: C<"PT5M">, C<"PT10M">, C<"PT15M">, C<"PT30M">, C<"PT1H">
=head2 InferenceSchedulerArn => Str

The Amazon Resource Name (ARN) of the inference scheduler being
described.


=head2 InferenceSchedulerName => Str

The name of the inference scheduler being described.


=head2 ModelArn => Str

The Amazon Resource Name (ARN) of the ML model of the inference
scheduler being described.


=head2 ModelName => Str

The name of the ML model of the inference scheduler being described.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of a role with permission to access the
data source for the inference scheduler being described.


=head2 ServerSideKmsKeyId => Str

Provides the identifier of the AWS KMS customer master key (CMK) used
to encrypt inference scheduler data by Amazon Lookout for Equipment.


=head2 Status => Str

Indicates the status of the inference scheduler.

Valid values are: C<"PENDING">, C<"RUNNING">, C<"STOPPING">, C<"STOPPED">
=head2 UpdatedAt => Str

Specifies the time at which the inference scheduler was last updated,
if it was.


=head2 _request_id => Str


=cut

1;