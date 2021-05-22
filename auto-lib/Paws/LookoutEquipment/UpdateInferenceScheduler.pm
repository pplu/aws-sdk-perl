
package Paws::LookoutEquipment::UpdateInferenceScheduler;
  use Moose;
  has DataDelayOffsetInMinutes => (is => 'ro', isa => 'Int');
  has DataInputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::InferenceInputConfiguration');
  has DataOutputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::InferenceOutputConfiguration');
  has DataUploadFrequency => (is => 'ro', isa => 'Str');
  has InferenceSchedulerName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInferenceScheduler');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::UpdateInferenceScheduler - Arguments for method UpdateInferenceScheduler on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInferenceScheduler on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method UpdateInferenceScheduler.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInferenceScheduler.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    $lookoutequipment->UpdateInferenceScheduler(
      InferenceSchedulerName   => 'MyInferenceSchedulerIdentifier',
      DataDelayOffsetInMinutes => 1,                                  # OPTIONAL
      DataInputConfiguration   => {
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
      },    # OPTIONAL
      DataOutputConfiguration => {
        S3OutputConfiguration => {
          Bucket => 'MyS3Bucket',    # min: 3, max: 63
          Prefix => 'MyS3Prefix',    # max: 1024; OPTIONAL
        },
        KmsKeyId => 'MyNameOrArn',    # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
      DataUploadFrequency => 'PT5M',            # OPTIONAL
      RoleArn             => 'MyIamRoleArn',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/UpdateInferenceScheduler>

=head1 ATTRIBUTES


=head2 DataDelayOffsetInMinutes => Int

E<gt> A period of time (in minutes) by which inference on the data is
delayed after the data starts. For instance, if you select an offset
delay time of five minutes, inference will not begin on the data until
the first data measurement after the five minute mark. For example, if
five minutes is selected, the inference scheduler will wake up at the
configured frequency with the additional five minute delay time to
check the customer S3 bucket. The customer can upload data at the same
frequency and they don't need to stop and restart the scheduler when
uploading new data.



=head2 DataInputConfiguration => L<Paws::LookoutEquipment::InferenceInputConfiguration>

Specifies information for the input data for the inference scheduler,
including delimiter, format, and dataset location.



=head2 DataOutputConfiguration => L<Paws::LookoutEquipment::InferenceOutputConfiguration>

Specifies information for the output results from the inference
scheduler, including the output S3 location.



=head2 DataUploadFrequency => Str

How often data is uploaded to the source S3 bucket for the input data.
The value chosen is the length of time between data uploads. For
instance, if you select 5 minutes, Amazon Lookout for Equipment will
upload the real-time data to the source bucket once every 5 minutes.
This frequency also determines how often Amazon Lookout for Equipment
starts a scheduled inference on your data. In this example, it starts
once every 5 minutes.

Valid values are: C<"PT5M">, C<"PT10M">, C<"PT15M">, C<"PT30M">, C<"PT1H">

=head2 B<REQUIRED> InferenceSchedulerName => Str

The name of the inference scheduler to be updated.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of a role with permission to access the
data source for the inference scheduler.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInferenceScheduler in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

