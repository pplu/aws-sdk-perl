
package Paws::IoTEvents::StartDetectorModelAnalysis;
  use Moose;
  has DetectorModelDefinition => (is => 'ro', isa => 'Paws::IoTEvents::DetectorModelDefinition', traits => ['NameInRequest'], request_name => 'detectorModelDefinition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDetectorModelAnalysis');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/analysis/detector-models/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTEvents::StartDetectorModelAnalysisResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::StartDetectorModelAnalysis - Arguments for method StartDetectorModelAnalysis on L<Paws::IoTEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDetectorModelAnalysis on the
L<AWS IoT Events|Paws::IoTEvents> service. Use the attributes of this class
as arguments to method StartDetectorModelAnalysis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDetectorModelAnalysis.

=head1 SYNOPSIS

    my $iotevents = Paws->service('IoTEvents');
    my $StartDetectorModelAnalysisResponse =
      $iotevents->StartDetectorModelAnalysis(
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
                      DynamoDB => {
                        HashKeyField => 'MyDynamoKeyField',
                        HashKeyValue => 'MyDynamoKeyValue',
                        TableName    => 'MyDynamoTableName',
                        HashKeyType  => 'MyDynamoKeyType',      # OPTIONAL
                        Operation    => 'MyDynamoOperation',    # OPTIONAL
                        Payload      => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                        PayloadField  => 'MyDynamoKeyField',
                        RangeKeyField => 'MyDynamoKeyField',
                        RangeKeyType  => 'MyDynamoKeyType',    # OPTIONAL
                        RangeKeyValue => 'MyDynamoKeyValue',
                      },    # OPTIONAL
                      DynamoDBv2 => {
                        TableName => 'MyDynamoTableName',
                        Payload   => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      Firehose => {
                        DeliveryStreamName => 'MyDeliveryStreamName',
                        Payload            => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                        Separator => 'MyFirehoseSeparator',    # OPTIONAL
                      },    # OPTIONAL
                      IotEvents => {
                        InputName => 'MyInputName',    # min: 1, max: 128
                        Payload   => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      IotSiteWise => {
                        AssetId       => 'MyAssetId',                 # OPTIONAL
                        EntryId       => 'MyAssetPropertyEntryId',    # OPTIONAL
                        PropertyAlias => 'MyAssetPropertyAlias',      # OPTIONAL
                        PropertyId    => 'MyAssetPropertyId',         # OPTIONAL
                        PropertyValue => {
                          Quality   => 'MyAssetPropertyQuality',      # OPTIONAL
                          Timestamp => {
                            TimeInSeconds => 'MyAssetPropertyTimeInSeconds',
                            OffsetInNanos =>
                              'MyAssetPropertyOffsetInNanos',         # OPTIONAL
                          },    # OPTIONAL
                          Value => {
                            BooleanValue =>
                              'MyAssetPropertyBooleanValue',    # OPTIONAL
                            DoubleValue =>
                              'MyAssetPropertyDoubleValue',     # OPTIONAL
                            IntegerValue =>
                              'MyAssetPropertyIntegerValue',    # OPTIONAL
                            StringValue =>
                              'MyAssetPropertyStringValue',     # OPTIONAL
                          },    # OPTIONAL
                        },    # OPTIONAL
                      },    # OPTIONAL
                      IotTopicPublish => {
                        MqttTopic => 'MyMQTTTopic',    # min: 1, max: 128
                        Payload   => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      Lambda => {
                        FunctionArn =>
                          'MyAmazonResourceName',    # min: 1, max: 2048
                        Payload => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      ResetTimer => {
                        TimerName => 'MyTimerName',    # min: 1, max: 128

                      },    # OPTIONAL
                      SetTimer => {
                        TimerName          => 'MyTimerName',  # min: 1, max: 128
                        DurationExpression =>
                          'MyVariableValue',    # min: 1, max: 1024; OPTIONAL
                        Seconds => 1,    # min: 1, max: 31622400; OPTIONAL
                      },    # OPTIONAL
                      SetVariable => {
                        Value =>
                          'MyVariableValue',    # min: 1, max: 1024; OPTIONAL
                        VariableName => 'MyVariableName',    # min: 1, max: 128

                      },    # OPTIONAL
                      Sns => {
                        TargetArn => 'MyAmazonResourceName', # min: 1, max: 2048
                        Payload   => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      Sqs => {
                        QueueUrl => 'MyQueueUrl',
                        Payload  => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                        UseBase64 => 1,    # OPTIONAL
                      },    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  Condition => 'MyCondition',    # max: 512; OPTIONAL
                },
                ...
              ],    # OPTIONAL
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
                      DynamoDB => {
                        HashKeyField => 'MyDynamoKeyField',
                        HashKeyValue => 'MyDynamoKeyValue',
                        TableName    => 'MyDynamoTableName',
                        HashKeyType  => 'MyDynamoKeyType',      # OPTIONAL
                        Operation    => 'MyDynamoOperation',    # OPTIONAL
                        Payload      => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                        PayloadField  => 'MyDynamoKeyField',
                        RangeKeyField => 'MyDynamoKeyField',
                        RangeKeyType  => 'MyDynamoKeyType',    # OPTIONAL
                        RangeKeyValue => 'MyDynamoKeyValue',
                      },    # OPTIONAL
                      DynamoDBv2 => {
                        TableName => 'MyDynamoTableName',
                        Payload   => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      Firehose => {
                        DeliveryStreamName => 'MyDeliveryStreamName',
                        Payload            => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                        Separator => 'MyFirehoseSeparator',    # OPTIONAL
                      },    # OPTIONAL
                      IotEvents => {
                        InputName => 'MyInputName',    # min: 1, max: 128
                        Payload   => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      IotSiteWise => {
                        AssetId       => 'MyAssetId',                 # OPTIONAL
                        EntryId       => 'MyAssetPropertyEntryId',    # OPTIONAL
                        PropertyAlias => 'MyAssetPropertyAlias',      # OPTIONAL
                        PropertyId    => 'MyAssetPropertyId',         # OPTIONAL
                        PropertyValue => {
                          Quality   => 'MyAssetPropertyQuality',      # OPTIONAL
                          Timestamp => {
                            TimeInSeconds => 'MyAssetPropertyTimeInSeconds',
                            OffsetInNanos =>
                              'MyAssetPropertyOffsetInNanos',         # OPTIONAL
                          },    # OPTIONAL
                          Value => {
                            BooleanValue =>
                              'MyAssetPropertyBooleanValue',    # OPTIONAL
                            DoubleValue =>
                              'MyAssetPropertyDoubleValue',     # OPTIONAL
                            IntegerValue =>
                              'MyAssetPropertyIntegerValue',    # OPTIONAL
                            StringValue =>
                              'MyAssetPropertyStringValue',     # OPTIONAL
                          },    # OPTIONAL
                        },    # OPTIONAL
                      },    # OPTIONAL
                      IotTopicPublish => {
                        MqttTopic => 'MyMQTTTopic',    # min: 1, max: 128
                        Payload   => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      Lambda => {
                        FunctionArn =>
                          'MyAmazonResourceName',    # min: 1, max: 2048
                        Payload => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      ResetTimer => {
                        TimerName => 'MyTimerName',    # min: 1, max: 128

                      },    # OPTIONAL
                      SetTimer => {
                        TimerName          => 'MyTimerName',  # min: 1, max: 128
                        DurationExpression =>
                          'MyVariableValue',    # min: 1, max: 1024; OPTIONAL
                        Seconds => 1,    # min: 1, max: 31622400; OPTIONAL
                      },    # OPTIONAL
                      SetVariable => {
                        Value =>
                          'MyVariableValue',    # min: 1, max: 1024; OPTIONAL
                        VariableName => 'MyVariableName',    # min: 1, max: 128

                      },    # OPTIONAL
                      Sns => {
                        TargetArn => 'MyAmazonResourceName', # min: 1, max: 2048
                        Payload   => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      Sqs => {
                        QueueUrl => 'MyQueueUrl',
                        Payload  => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                        UseBase64 => 1,    # OPTIONAL
                      },    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  Condition => 'MyCondition',    # max: 512; OPTIONAL
                },
                ...
              ],    # OPTIONAL
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
                      DynamoDB => {
                        HashKeyField => 'MyDynamoKeyField',
                        HashKeyValue => 'MyDynamoKeyValue',
                        TableName    => 'MyDynamoTableName',
                        HashKeyType  => 'MyDynamoKeyType',      # OPTIONAL
                        Operation    => 'MyDynamoOperation',    # OPTIONAL
                        Payload      => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                        PayloadField  => 'MyDynamoKeyField',
                        RangeKeyField => 'MyDynamoKeyField',
                        RangeKeyType  => 'MyDynamoKeyType',    # OPTIONAL
                        RangeKeyValue => 'MyDynamoKeyValue',
                      },    # OPTIONAL
                      DynamoDBv2 => {
                        TableName => 'MyDynamoTableName',
                        Payload   => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      Firehose => {
                        DeliveryStreamName => 'MyDeliveryStreamName',
                        Payload            => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                        Separator => 'MyFirehoseSeparator',    # OPTIONAL
                      },    # OPTIONAL
                      IotEvents => {
                        InputName => 'MyInputName',    # min: 1, max: 128
                        Payload   => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      IotSiteWise => {
                        AssetId       => 'MyAssetId',                 # OPTIONAL
                        EntryId       => 'MyAssetPropertyEntryId',    # OPTIONAL
                        PropertyAlias => 'MyAssetPropertyAlias',      # OPTIONAL
                        PropertyId    => 'MyAssetPropertyId',         # OPTIONAL
                        PropertyValue => {
                          Quality   => 'MyAssetPropertyQuality',      # OPTIONAL
                          Timestamp => {
                            TimeInSeconds => 'MyAssetPropertyTimeInSeconds',
                            OffsetInNanos =>
                              'MyAssetPropertyOffsetInNanos',         # OPTIONAL
                          },    # OPTIONAL
                          Value => {
                            BooleanValue =>
                              'MyAssetPropertyBooleanValue',    # OPTIONAL
                            DoubleValue =>
                              'MyAssetPropertyDoubleValue',     # OPTIONAL
                            IntegerValue =>
                              'MyAssetPropertyIntegerValue',    # OPTIONAL
                            StringValue =>
                              'MyAssetPropertyStringValue',     # OPTIONAL
                          },    # OPTIONAL
                        },    # OPTIONAL
                      },    # OPTIONAL
                      IotTopicPublish => {
                        MqttTopic => 'MyMQTTTopic',    # min: 1, max: 128
                        Payload   => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      Lambda => {
                        FunctionArn =>
                          'MyAmazonResourceName',    # min: 1, max: 2048
                        Payload => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      ResetTimer => {
                        TimerName => 'MyTimerName',    # min: 1, max: 128

                      },    # OPTIONAL
                      SetTimer => {
                        TimerName          => 'MyTimerName',  # min: 1, max: 128
                        DurationExpression =>
                          'MyVariableValue',    # min: 1, max: 1024; OPTIONAL
                        Seconds => 1,    # min: 1, max: 31622400; OPTIONAL
                      },    # OPTIONAL
                      SetVariable => {
                        Value =>
                          'MyVariableValue',    # min: 1, max: 1024; OPTIONAL
                        VariableName => 'MyVariableName',    # min: 1, max: 128

                      },    # OPTIONAL
                      Sns => {
                        TargetArn => 'MyAmazonResourceName', # min: 1, max: 2048
                        Payload   => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      Sqs => {
                        QueueUrl => 'MyQueueUrl',
                        Payload  => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                        UseBase64 => 1,    # OPTIONAL
                      },    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  Condition => 'MyCondition',    # max: 512; OPTIONAL
                },
                ...
              ],    # OPTIONAL
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
                      DynamoDB => {
                        HashKeyField => 'MyDynamoKeyField',
                        HashKeyValue => 'MyDynamoKeyValue',
                        TableName    => 'MyDynamoTableName',
                        HashKeyType  => 'MyDynamoKeyType',      # OPTIONAL
                        Operation    => 'MyDynamoOperation',    # OPTIONAL
                        Payload      => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                        PayloadField  => 'MyDynamoKeyField',
                        RangeKeyField => 'MyDynamoKeyField',
                        RangeKeyType  => 'MyDynamoKeyType',    # OPTIONAL
                        RangeKeyValue => 'MyDynamoKeyValue',
                      },    # OPTIONAL
                      DynamoDBv2 => {
                        TableName => 'MyDynamoTableName',
                        Payload   => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      Firehose => {
                        DeliveryStreamName => 'MyDeliveryStreamName',
                        Payload            => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                        Separator => 'MyFirehoseSeparator',    # OPTIONAL
                      },    # OPTIONAL
                      IotEvents => {
                        InputName => 'MyInputName',    # min: 1, max: 128
                        Payload   => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      IotSiteWise => {
                        AssetId       => 'MyAssetId',                 # OPTIONAL
                        EntryId       => 'MyAssetPropertyEntryId',    # OPTIONAL
                        PropertyAlias => 'MyAssetPropertyAlias',      # OPTIONAL
                        PropertyId    => 'MyAssetPropertyId',         # OPTIONAL
                        PropertyValue => {
                          Quality   => 'MyAssetPropertyQuality',      # OPTIONAL
                          Timestamp => {
                            TimeInSeconds => 'MyAssetPropertyTimeInSeconds',
                            OffsetInNanos =>
                              'MyAssetPropertyOffsetInNanos',         # OPTIONAL
                          },    # OPTIONAL
                          Value => {
                            BooleanValue =>
                              'MyAssetPropertyBooleanValue',    # OPTIONAL
                            DoubleValue =>
                              'MyAssetPropertyDoubleValue',     # OPTIONAL
                            IntegerValue =>
                              'MyAssetPropertyIntegerValue',    # OPTIONAL
                            StringValue =>
                              'MyAssetPropertyStringValue',     # OPTIONAL
                          },    # OPTIONAL
                        },    # OPTIONAL
                      },    # OPTIONAL
                      IotTopicPublish => {
                        MqttTopic => 'MyMQTTTopic',    # min: 1, max: 128
                        Payload   => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      Lambda => {
                        FunctionArn =>
                          'MyAmazonResourceName',    # min: 1, max: 2048
                        Payload => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      ResetTimer => {
                        TimerName => 'MyTimerName',    # min: 1, max: 128

                      },    # OPTIONAL
                      SetTimer => {
                        TimerName          => 'MyTimerName',  # min: 1, max: 128
                        DurationExpression =>
                          'MyVariableValue',    # min: 1, max: 1024; OPTIONAL
                        Seconds => 1,    # min: 1, max: 31622400; OPTIONAL
                      },    # OPTIONAL
                      SetVariable => {
                        Value =>
                          'MyVariableValue',    # min: 1, max: 1024; OPTIONAL
                        VariableName => 'MyVariableName',    # min: 1, max: 128

                      },    # OPTIONAL
                      Sns => {
                        TargetArn => 'MyAmazonResourceName', # min: 1, max: 2048
                        Payload   => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                      },    # OPTIONAL
                      Sqs => {
                        QueueUrl => 'MyQueueUrl',
                        Payload  => {
                          ContentExpression => 'MyContentExpression',   # min: 1
                          Type              => 'STRING',  # values: STRING, JSON

                        },    # OPTIONAL
                        UseBase64 => 1,    # OPTIONAL
                      },    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # min: 1

      },

      );

    # Results:
    my $AnalysisId = $StartDetectorModelAnalysisResponse->AnalysisId;

    # Returns a L<Paws::IoTEvents::StartDetectorModelAnalysisResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotevents/StartDetectorModelAnalysis>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorModelDefinition => L<Paws::IoTEvents::DetectorModelDefinition>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDetectorModelAnalysis in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

