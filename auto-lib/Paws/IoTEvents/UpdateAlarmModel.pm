
package Paws::IoTEvents::UpdateAlarmModel;
  use Moose;
  has AlarmCapabilities => (is => 'ro', isa => 'Paws::IoTEvents::AlarmCapabilities', traits => ['NameInRequest'], request_name => 'alarmCapabilities');
  has AlarmEventActions => (is => 'ro', isa => 'Paws::IoTEvents::AlarmEventActions', traits => ['NameInRequest'], request_name => 'alarmEventActions');
  has AlarmModelDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alarmModelDescription');
  has AlarmModelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'alarmModelName', required => 1);
  has AlarmNotification => (is => 'ro', isa => 'Paws::IoTEvents::AlarmNotification', traits => ['NameInRequest'], request_name => 'alarmNotification');
  has AlarmRule => (is => 'ro', isa => 'Paws::IoTEvents::AlarmRule', traits => ['NameInRequest'], request_name => 'alarmRule', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Severity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'severity');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAlarmModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/alarm-models/{alarmModelName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTEvents::UpdateAlarmModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::UpdateAlarmModel - Arguments for method UpdateAlarmModel on L<Paws::IoTEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAlarmModel on the
L<AWS IoT Events|Paws::IoTEvents> service. Use the attributes of this class
as arguments to method UpdateAlarmModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAlarmModel.

=head1 SYNOPSIS

    my $iotevents = Paws->service('IoTEvents');
    my $UpdateAlarmModelResponse = $iotevents->UpdateAlarmModel(
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
      Severity => 1,    # OPTIONAL
    );

    # Results:
    my $AlarmModelArn     = $UpdateAlarmModelResponse->AlarmModelArn;
    my $AlarmModelVersion = $UpdateAlarmModelResponse->AlarmModelVersion;
    my $CreationTime      = $UpdateAlarmModelResponse->CreationTime;
    my $LastUpdateTime    = $UpdateAlarmModelResponse->LastUpdateTime;
    my $Status            = $UpdateAlarmModelResponse->Status;

    # Returns a L<Paws::IoTEvents::UpdateAlarmModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotevents/UpdateAlarmModel>

=head1 ATTRIBUTES


=head2 AlarmCapabilities => L<Paws::IoTEvents::AlarmCapabilities>

Contains the configuration information of alarm state changes.



=head2 AlarmEventActions => L<Paws::IoTEvents::AlarmEventActions>

Contains information about one or more alarm actions.



=head2 AlarmModelDescription => Str

The description of the alarm model.



=head2 B<REQUIRED> AlarmModelName => Str

The name of the alarm model.



=head2 AlarmNotification => L<Paws::IoTEvents::AlarmNotification>

Contains information about one or more notification actions.



=head2 B<REQUIRED> AlarmRule => L<Paws::IoTEvents::AlarmRule>

Defines when your alarm is invoked.



=head2 B<REQUIRED> RoleArn => Str

The ARN of the IAM role that allows the alarm to perform actions and
access AWS resources. For more information, see Amazon Resource Names
(ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.



=head2 Severity => Int

A non-negative integer that reflects the severity level of the alarm.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAlarmModel in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

