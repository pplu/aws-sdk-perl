
package Paws::IoTEvents::CreateDetectorModel;
  use Moose;
  has DetectorModelDefinition => (is => 'ro', isa => 'Paws::IoTEvents::DetectorModelDefinition', traits => ['NameInRequest'], request_name => 'detectorModelDefinition', required => 1);
  has DetectorModelDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorModelDescription');
  has DetectorModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorModelName', required => 1);
  has EvaluationMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'evaluationMethod');
  has Key => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'key');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTEvents::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDetectorModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector-models');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTEvents::CreateDetectorModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::CreateDetectorModel - Arguments for method CreateDetectorModel on L<Paws::IoTEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDetectorModel on the
L<AWS IoT Events|Paws::IoTEvents> service. Use the attributes of this class
as arguments to method CreateDetectorModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDetectorModel.

=head1 SYNOPSIS

    my $iotevents = Paws->service('IoTEvents');
    my $CreateDetectorModelResponse = $iotevents->CreateDetectorModel(
      DetectorModelDefinition => {
        InitialStateName => 'MyStateName',    # min: 1, max: 128
        States           => [
          {
            StateName => 'MyStateName',       # min: 1, max: 128
            OnEnter   => {
              Events => [
                {
                  EventName => 'MyEventName',    # max: 128
                  Actions   => [
                    {
                      ClearTimer => {
                        TimerName => 'MyTimerName',    # min: 1, max: 128

                      },    # OPTIONAL
                      Firehose => {
                        DeliveryStreamName => 'MyDeliveryStreamName',
                        Separator          => 'MyFirehoseSeparator',  # OPTIONAL
                      },    # OPTIONAL
                      IotEvents => {
                        InputName => 'MyInputName',    # min: 1, max: 128

                      },    # OPTIONAL
                      IotTopicPublish => {
                        MqttTopic => 'MyMQTTTopic',    # min: 1, max: 128

                      },    # OPTIONAL
                      Lambda => {
                        FunctionArn =>
                          'MyAmazonResourceName',    # min: 1, max: 2048

                      },    # OPTIONAL
                      ResetTimer => {
                        TimerName => 'MyTimerName',    # min: 1, max: 128

                      },    # OPTIONAL
                      SetTimer => {
                        Seconds   => 1,
                        TimerName => 'MyTimerName',    # min: 1, max: 128

                      },    # OPTIONAL
                      SetVariable => {
                        Value        => 'MyVariableValue',   # min: 1, max: 1024
                        VariableName => 'MyVariableName',    # min: 1, max: 128

                      },    # OPTIONAL
                      Sns => {
                        TargetArn => 'MyAmazonResourceName', # min: 1, max: 2048

                      },    # OPTIONAL
                      Sqs => {
                        QueueUrl  => 'MyQueueUrl',
                        UseBase64 => 1,              # OPTIONAL
                      },    # OPTIONAL
                    },
                    ...
                  ],        # OPTIONAL
                  Condition => 'MyCondition',    # max: 512; OPTIONAL
                },
                ...
              ],                                 # OPTIONAL
            },    # OPTIONAL
            OnExit => {
              Events => [
                {
                  EventName => 'MyEventName',    # max: 128
                  Actions   => [
                    {
                      ClearTimer => {
                        TimerName => 'MyTimerName',    # min: 1, max: 128

                      },    # OPTIONAL
                      Firehose => {
                        DeliveryStreamName => 'MyDeliveryStreamName',
                        Separator          => 'MyFirehoseSeparator',  # OPTIONAL
                      },    # OPTIONAL
                      IotEvents => {
                        InputName => 'MyInputName',    # min: 1, max: 128

                      },    # OPTIONAL
                      IotTopicPublish => {
                        MqttTopic => 'MyMQTTTopic',    # min: 1, max: 128

                      },    # OPTIONAL
                      Lambda => {
                        FunctionArn =>
                          'MyAmazonResourceName',    # min: 1, max: 2048

                      },    # OPTIONAL
                      ResetTimer => {
                        TimerName => 'MyTimerName',    # min: 1, max: 128

                      },    # OPTIONAL
                      SetTimer => {
                        Seconds   => 1,
                        TimerName => 'MyTimerName',    # min: 1, max: 128

                      },    # OPTIONAL
                      SetVariable => {
                        Value        => 'MyVariableValue',   # min: 1, max: 1024
                        VariableName => 'MyVariableName',    # min: 1, max: 128

                      },    # OPTIONAL
                      Sns => {
                        TargetArn => 'MyAmazonResourceName', # min: 1, max: 2048

                      },    # OPTIONAL
                      Sqs => {
                        QueueUrl  => 'MyQueueUrl',
                        UseBase64 => 1,              # OPTIONAL
                      },    # OPTIONAL
                    },
                    ...
                  ],        # OPTIONAL
                  Condition => 'MyCondition',    # max: 512; OPTIONAL
                },
                ...
              ],                                 # OPTIONAL
            },    # OPTIONAL
            OnInput => {
              Events => [
                {
                  EventName => 'MyEventName',    # max: 128
                  Actions   => [
                    {
                      ClearTimer => {
                        TimerName => 'MyTimerName',    # min: 1, max: 128

                      },    # OPTIONAL
                      Firehose => {
                        DeliveryStreamName => 'MyDeliveryStreamName',
                        Separator          => 'MyFirehoseSeparator',  # OPTIONAL
                      },    # OPTIONAL
                      IotEvents => {
                        InputName => 'MyInputName',    # min: 1, max: 128

                      },    # OPTIONAL
                      IotTopicPublish => {
                        MqttTopic => 'MyMQTTTopic',    # min: 1, max: 128

                      },    # OPTIONAL
                      Lambda => {
                        FunctionArn =>
                          'MyAmazonResourceName',    # min: 1, max: 2048

                      },    # OPTIONAL
                      ResetTimer => {
                        TimerName => 'MyTimerName',    # min: 1, max: 128

                      },    # OPTIONAL
                      SetTimer => {
                        Seconds   => 1,
                        TimerName => 'MyTimerName',    # min: 1, max: 128

                      },    # OPTIONAL
                      SetVariable => {
                        Value        => 'MyVariableValue',   # min: 1, max: 1024
                        VariableName => 'MyVariableName',    # min: 1, max: 128

                      },    # OPTIONAL
                      Sns => {
                        TargetArn => 'MyAmazonResourceName', # min: 1, max: 2048

                      },    # OPTIONAL
                      Sqs => {
                        QueueUrl  => 'MyQueueUrl',
                        UseBase64 => 1,              # OPTIONAL
                      },    # OPTIONAL
                    },
                    ...
                  ],        # OPTIONAL
                  Condition => 'MyCondition',    # max: 512; OPTIONAL
                },
                ...
              ],                                 # OPTIONAL
              TransitionEvents => [
                {
                  Condition => 'MyCondition',    # max: 512; OPTIONAL
                  EventName => 'MyEventName',    # max: 128
                  NextState => 'MyStateName',    # min: 1, max: 128
                  Actions   => [
                    {
                      ClearTimer => {
                        TimerName => 'MyTimerName',    # min: 1, max: 128

                      },    # OPTIONAL
                      Firehose => {
                        DeliveryStreamName => 'MyDeliveryStreamName',
                        Separator          => 'MyFirehoseSeparator',  # OPTIONAL
                      },    # OPTIONAL
                      IotEvents => {
                        InputName => 'MyInputName',    # min: 1, max: 128

                      },    # OPTIONAL
                      IotTopicPublish => {
                        MqttTopic => 'MyMQTTTopic',    # min: 1, max: 128

                      },    # OPTIONAL
                      Lambda => {
                        FunctionArn =>
                          'MyAmazonResourceName',    # min: 1, max: 2048

                      },    # OPTIONAL
                      ResetTimer => {
                        TimerName => 'MyTimerName',    # min: 1, max: 128

                      },    # OPTIONAL
                      SetTimer => {
                        Seconds   => 1,
                        TimerName => 'MyTimerName',    # min: 1, max: 128

                      },    # OPTIONAL
                      SetVariable => {
                        Value        => 'MyVariableValue',   # min: 1, max: 1024
                        VariableName => 'MyVariableName',    # min: 1, max: 128

                      },    # OPTIONAL
                      Sns => {
                        TargetArn => 'MyAmazonResourceName', # min: 1, max: 2048

                      },    # OPTIONAL
                      Sqs => {
                        QueueUrl  => 'MyQueueUrl',
                        UseBase64 => 1,              # OPTIONAL
                      },    # OPTIONAL
                    },
                    ...
                  ],        # OPTIONAL
                },
                ...
              ],            # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],        # min: 1

      },
      DetectorModelName        => 'MyDetectorModelName',
      RoleArn                  => 'MyAmazonResourceName',
      DetectorModelDescription => 'MyDetectorModelDescription',    # OPTIONAL
      EvaluationMethod         => 'BATCH',                         # OPTIONAL
      Key                      => 'MyAttributeJsonPath',           # OPTIONAL
      Tags                     => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $DetectorModelConfiguration =
      $CreateDetectorModelResponse->DetectorModelConfiguration;

    # Returns a L<Paws::IoTEvents::CreateDetectorModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotevents/CreateDetectorModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorModelDefinition => L<Paws::IoTEvents::DetectorModelDefinition>

Information that defines how the detectors operate.



=head2 DetectorModelDescription => Str

A brief description of the detector model.



=head2 B<REQUIRED> DetectorModelName => Str

The name of the detector model.



=head2 EvaluationMethod => Str

Information about the order in which events are evaluated and how
actions are executed.

Valid values are: C<"BATCH">, C<"SERIAL">

=head2 Key => Str

The input attribute key used to identify a device or system in order to
create a detector (an instance of the detector model) and then to route
each input received to the appropriate detector (instance). This
parameter uses a JSON-path expression to specify the attribute-value
pair in the message payload of each input that is used to identify the
device associated with the input.



=head2 B<REQUIRED> RoleArn => Str

The ARN of the role that grants permission to AWS IoT Events to perform
its operations.



=head2 Tags => ArrayRef[L<Paws::IoTEvents::Tag>]

Metadata that can be used to manage the detector model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDetectorModel in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

