
package Paws::IoTEvents::CreateAlarmModel;
  use Moose;
  has AlarmCapabilities => (is => 'ro', isa => 'Paws::IoTEvents::AlarmCapabilities', traits => ['NameInRequest'], request_name => 'alarmCapabilities');
  has AlarmEventActions => (is => 'ro', isa => 'Paws::IoTEvents::AlarmEventActions', traits => ['NameInRequest'], request_name => 'alarmEventActions');
  has AlarmModelDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alarmModelDescription');
  has AlarmModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alarmModelName', required => 1);
  has AlarmNotification => (is => 'ro', isa => 'Paws::IoTEvents::AlarmNotification', traits => ['NameInRequest'], request_name => 'alarmNotification');
  has AlarmRule => (is => 'ro', isa => 'Paws::IoTEvents::AlarmRule', traits => ['NameInRequest'], request_name => 'alarmRule', required => 1);
  has Key => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'key');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Severity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'severity');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTEvents::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAlarmModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/alarm-models');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTEvents::CreateAlarmModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::CreateAlarmModel - Arguments for method CreateAlarmModel on L<Paws::IoTEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAlarmModel on the
L<AWS IoT Events|Paws::IoTEvents> service. Use the attributes of this class
as arguments to method CreateAlarmModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAlarmModel.

=head1 SYNOPSIS

    my $iotevents = Paws->service('IoTEvents');
    my $CreateAlarmModelResponse = $iotevents->CreateAlarmModel(
      AlarmModelName => 'MyAlarmModelName',
      AlarmRule      => {
        SimpleRule => {
          ComparisonOperator => 'GREATER'
          , # values: GREATER, GREATER_OR_EQUAL, LESS, LESS_OR_EQUAL, EQUAL, NOT_EQUAL
          InputProperty => 'MyInputProperty',    # min: 1, max: 512
          Threshold     => 'MyThreshold',        # min: 1, max: 512

        },    # OPTIONAL
      },
      RoleArn           => 'MyAmazonResourceName',
      AlarmCapabilities => {
        AcknowledgeFlow => {
          Enabled => 1,

        },    # OPTIONAL
        InitializationConfiguration => {
          DisabledOnInitialization => 1,

        },    # OPTIONAL
      },    # OPTIONAL
      AlarmEventActions => {
        AlarmActions => [
          {
            DynamoDB => {
              HashKeyField => 'MyDynamoKeyField',
              HashKeyValue => 'MyDynamoKeyValue',
              TableName    => 'MyDynamoTableName',
              HashKeyType  => 'MyDynamoKeyType',      # OPTIONAL
              Operation    => 'MyDynamoOperation',    # OPTIONAL
              Payload      => {
                ContentExpression => 'MyContentExpression',    # min: 1
                Type              => 'STRING',    # values: STRING, JSON

              },    # OPTIONAL
              PayloadField  => 'MyDynamoKeyField',
              RangeKeyField => 'MyDynamoKeyField',
              RangeKeyType  => 'MyDynamoKeyType',    # OPTIONAL
              RangeKeyValue => 'MyDynamoKeyValue',
            },    # OPTIONAL
            DynamoDBv2 => {
              TableName => 'MyDynamoTableName',
              Payload   => {
                ContentExpression => 'MyContentExpression',    # min: 1
                Type              => 'STRING',    # values: STRING, JSON

              },    # OPTIONAL
            },    # OPTIONAL
            Firehose => {
              DeliveryStreamName => 'MyDeliveryStreamName',
              Payload            => {
                ContentExpression => 'MyContentExpression',    # min: 1
                Type              => 'STRING',    # values: STRING, JSON

              },    # OPTIONAL
              Separator => 'MyFirehoseSeparator',    # OPTIONAL
            },    # OPTIONAL
            IotEvents => {
              InputName => 'MyInputName',    # min: 1, max: 128
              Payload   => {
                ContentExpression => 'MyContentExpression',    # min: 1
                Type              => 'STRING',    # values: STRING, JSON

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
                  OffsetInNanos => 'MyAssetPropertyOffsetInNanos',    # OPTIONAL
                },    # OPTIONAL
                Value => {
                  BooleanValue => 'MyAssetPropertyBooleanValue',    # OPTIONAL
                  DoubleValue  => 'MyAssetPropertyDoubleValue',     # OPTIONAL
                  IntegerValue => 'MyAssetPropertyIntegerValue',    # OPTIONAL
                  StringValue  => 'MyAssetPropertyStringValue',     # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            IotTopicPublish => {
              MqttTopic => 'MyMQTTTopic',    # min: 1, max: 128
              Payload   => {
                ContentExpression => 'MyContentExpression',    # min: 1
                Type              => 'STRING',    # values: STRING, JSON

              },    # OPTIONAL
            },    # OPTIONAL
            Lambda => {
              FunctionArn => 'MyAmazonResourceName',    # min: 1, max: 2048
              Payload     => {
                ContentExpression => 'MyContentExpression',    # min: 1
                Type              => 'STRING',    # values: STRING, JSON

              },    # OPTIONAL
            },    # OPTIONAL
            Sns => {
              TargetArn => 'MyAmazonResourceName',    # min: 1, max: 2048
              Payload   => {
                ContentExpression => 'MyContentExpression',    # min: 1
                Type              => 'STRING',    # values: STRING, JSON

              },    # OPTIONAL
            },    # OPTIONAL
            Sqs => {
              QueueUrl => 'MyQueueUrl',
              Payload  => {
                ContentExpression => 'MyContentExpression',    # min: 1
                Type              => 'STRING',    # values: STRING, JSON

              },    # OPTIONAL
              UseBase64 => 1,    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      AlarmModelDescription => 'MyAlarmModelDescription',    # OPTIONAL
      AlarmNotification     => {
        NotificationActions => [
          {
            Action => {
              LambdaAction => {
                FunctionArn => 'MyAmazonResourceName',    # min: 1, max: 2048
                Payload     => {
                  ContentExpression => 'MyContentExpression',    # min: 1
                  Type              => 'STRING',    # values: STRING, JSON

                },    # OPTIONAL
              },    # OPTIONAL
            },
            EmailConfigurations => [
              {
                From       => 'MyFromEmail',
                Recipients => {
                  To => [
                    {
                      SsoIdentity => {
                        IdentityStoreId => 'MyIdentityStoreId',
                        UserId          => 'MySSOReferenceId',    # OPTIONAL
                      },    # OPTIONAL
                    },
                    ...
                  ],    # min: 1; OPTIONAL
                },
                Content => {
                  AdditionalMessage =>
                    'MyNotificationAdditionalMessage',    # OPTIONAL
                  Subject => 'MyEmailSubject',            # OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # min: 1; OPTIONAL
            SmsConfigurations => [
              {
                Recipients => [
                  {
                    SsoIdentity => {
                      IdentityStoreId => 'MyIdentityStoreId',
                      UserId          => 'MySSOReferenceId',    # OPTIONAL
                    },    # OPTIONAL
                  },
                  ...
                ],    # min: 1; OPTIONAL
                AdditionalMessage =>
                  'MyNotificationAdditionalMessage',    # OPTIONAL
                SenderId => 'MySMSSenderId',            # OPTIONAL
              },
              ...
            ],    # min: 1; OPTIONAL
          },
          ...
        ],    # min: 1; OPTIONAL
      },    # OPTIONAL
      Key      => 'MyAttributeJsonPath',    # OPTIONAL
      Severity => 1,                        # OPTIONAL
      Tags     => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AlarmModelArn     = $CreateAlarmModelResponse->AlarmModelArn;
    my $AlarmModelVersion = $CreateAlarmModelResponse->AlarmModelVersion;
    my $CreationTime      = $CreateAlarmModelResponse->CreationTime;
    my $LastUpdateTime    = $CreateAlarmModelResponse->LastUpdateTime;
    my $Status            = $CreateAlarmModelResponse->Status;

    # Returns a L<Paws::IoTEvents::CreateAlarmModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotevents/CreateAlarmModel>

=head1 ATTRIBUTES


=head2 AlarmCapabilities => L<Paws::IoTEvents::AlarmCapabilities>

Contains the configuration information of alarm state changes.



=head2 AlarmEventActions => L<Paws::IoTEvents::AlarmEventActions>

Contains information about one or more alarm actions.



=head2 AlarmModelDescription => Str

A description that tells you what the alarm model detects.



=head2 B<REQUIRED> AlarmModelName => Str

A unique name that helps you identify the alarm model. You can't change
this name after you create the alarm model.



=head2 AlarmNotification => L<Paws::IoTEvents::AlarmNotification>

Contains information about one or more notification actions.



=head2 B<REQUIRED> AlarmRule => L<Paws::IoTEvents::AlarmRule>

Defines when your alarm is invoked.



=head2 Key => Str

An input attribute used as a key to create an alarm. AWS IoT Events
routes inputs
(https://docs.aws.amazon.com/iotevents/latest/apireference/API_Input.html)
associated with this key to the alarm.



=head2 B<REQUIRED> RoleArn => Str

The ARN of the IAM role that allows the alarm to perform actions and
access AWS resources. For more information, see Amazon Resource Names
(ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.



=head2 Severity => Int

A non-negative integer that reflects the severity level of the alarm.



=head2 Tags => ArrayRef[L<Paws::IoTEvents::Tag>]

A list of key-value pairs that contain metadata for the alarm model.
The tags help you manage the alarm model. For more information, see
Tagging your AWS IoT Events resources
(https://docs.aws.amazon.com/iotevents/latest/developerguide/tagging-iotevents.html)
in the I<AWS IoT Events Developer Guide>.

You can create up to 50 tags for one alarm model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAlarmModel in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

