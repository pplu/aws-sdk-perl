
package Paws::IoT::CreateTopicRule;
  use Moose;
  has RuleName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ruleName', required => 1);
  has Tags => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-tagging');
  has TopicRulePayload => (is => 'ro', isa => 'Paws::IoT::TopicRulePayload', traits => ['NameInRequest'], request_name => 'topicRulePayload', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'TopicRulePayload');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTopicRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rules/{ruleName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateTopicRule - Arguments for method CreateTopicRule on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTopicRule on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateTopicRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTopicRule.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->CreateTopicRule(
      RuleName         => 'MyRuleName',
      TopicRulePayload => {
        Actions => [
          {
            CloudwatchAlarm => {
              AlarmName   => 'MyAlarmName',
              RoleArn     => 'MyAwsArn',
              StateReason => 'MyStateReason',
              StateValue  => 'MyStateValue',

            },    # OPTIONAL
            CloudwatchMetric => {
              MetricName      => 'MyString',
              MetricNamespace => 'MyString',
              MetricUnit      => 'MyString',
              MetricValue     => 'MyString',
              RoleArn         => 'MyAwsArn',
              MetricTimestamp => 'MyString',
            },    # OPTIONAL
            DynamoDB => {
              HashKeyField => 'MyHashKeyField',
              HashKeyValue => 'MyHashKeyValue',
              RoleArn      => 'MyAwsArn',
              TableName    => 'MyTableName',
              HashKeyType => 'STRING',    # values: STRING, NUMBER; OPTIONAL
              Operation     => 'MyDynamoOperation',    # OPTIONAL
              PayloadField  => 'MyPayloadField',       # OPTIONAL
              RangeKeyField => 'MyRangeKeyField',      # OPTIONAL
              RangeKeyType => 'STRING',    # values: STRING, NUMBER; OPTIONAL
              RangeKeyValue => 'MyRangeKeyValue',    # OPTIONAL
            },    # OPTIONAL
            DynamoDBv2 => {
              PutItem => {
                TableName => 'MyTableName',

              },
              RoleArn => 'MyAwsArn',

            },    # OPTIONAL
            Elasticsearch => {
              Endpoint => 'MyElasticsearchEndpoint',
              Id       => 'MyElasticsearchId',
              Index    => 'MyElasticsearchIndex',
              RoleArn  => 'MyAwsArn',
              Type     => 'MyElasticsearchType',

            },    # OPTIONAL
            Firehose => {
              DeliveryStreamName => 'MyDeliveryStreamName',
              RoleArn            => 'MyAwsArn',
              Separator          => 'MyFirehoseSeparator',    # OPTIONAL
            },    # OPTIONAL
            IotAnalytics => {
              ChannelArn  => 'MyAwsArn',
              ChannelName => 'MyChannelName',    # OPTIONAL
              RoleArn     => 'MyAwsArn',
            },    # OPTIONAL
            IotEvents => {
              InputName => 'MyInputName',    # min: 1, max: 128
              RoleArn   => 'MyAwsArn',
              MessageId => 'MyMessageId',    # max: 128; OPTIONAL
            },    # OPTIONAL
            Kinesis => {
              RoleArn      => 'MyAwsArn',
              StreamName   => 'MyStreamName',
              PartitionKey => 'MyPartitionKey',    # OPTIONAL
            },    # OPTIONAL
            Lambda => {
              FunctionArn => 'MyFunctionArn',

            },    # OPTIONAL
            Republish => {
              RoleArn => 'MyAwsArn',
              Topic   => 'MyTopicPattern',

            },    # OPTIONAL
            S3 => {
              BucketName => 'MyBucketName',
              Key        => 'MyKey',
              RoleArn    => 'MyAwsArn',
              CannedAcl  => 'private'
              , # values: private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write; OPTIONAL
            },    # OPTIONAL
            Salesforce => {
              Token => 'MySalesforceToken',       # min: 40
              Url   => 'MySalesforceEndpoint',    # max: 2000

            },    # OPTIONAL
            Sns => {
              RoleArn       => 'MyAwsArn',
              TargetArn     => 'MyAwsArn',
              MessageFormat => 'RAW',        # values: RAW, JSON; OPTIONAL
            },    # OPTIONAL
            Sqs => {
              QueueUrl  => 'MyQueueUrl',
              RoleArn   => 'MyAwsArn',
              UseBase64 => 1,              # OPTIONAL
            },    # OPTIONAL
            StepFunctions => {
              RoleArn             => 'MyAwsArn',
              StateMachineName    => 'MyStateMachineName',
              ExecutionNamePrefix => 'MyExecutionNamePrefix',    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],        # max: 10
        Sql              => 'MySQL',
        AwsIotSqlVersion => 'MyAwsIotSqlVersion',    # OPTIONAL
        Description      => 'MyDescription',         # OPTIONAL
        ErrorAction      => {
          CloudwatchAlarm => {
            AlarmName   => 'MyAlarmName',
            RoleArn     => 'MyAwsArn',
            StateReason => 'MyStateReason',
            StateValue  => 'MyStateValue',

          },                                         # OPTIONAL
          CloudwatchMetric => {
            MetricName      => 'MyString',
            MetricNamespace => 'MyString',
            MetricUnit      => 'MyString',
            MetricValue     => 'MyString',
            RoleArn         => 'MyAwsArn',
            MetricTimestamp => 'MyString',
          },                                         # OPTIONAL
          DynamoDB => {
            HashKeyField => 'MyHashKeyField',
            HashKeyValue => 'MyHashKeyValue',
            RoleArn      => 'MyAwsArn',
            TableName    => 'MyTableName',
            HashKeyType  => 'STRING',         # values: STRING, NUMBER; OPTIONAL
            Operation     => 'MyDynamoOperation',    # OPTIONAL
            PayloadField  => 'MyPayloadField',       # OPTIONAL
            RangeKeyField => 'MyRangeKeyField',      # OPTIONAL
            RangeKeyType => 'STRING',    # values: STRING, NUMBER; OPTIONAL
            RangeKeyValue => 'MyRangeKeyValue',    # OPTIONAL
          },    # OPTIONAL
          DynamoDBv2 => {
            PutItem => {
              TableName => 'MyTableName',

            },
            RoleArn => 'MyAwsArn',

          },    # OPTIONAL
          Elasticsearch => {
            Endpoint => 'MyElasticsearchEndpoint',
            Id       => 'MyElasticsearchId',
            Index    => 'MyElasticsearchIndex',
            RoleArn  => 'MyAwsArn',
            Type     => 'MyElasticsearchType',

          },    # OPTIONAL
          Firehose => {
            DeliveryStreamName => 'MyDeliveryStreamName',
            RoleArn            => 'MyAwsArn',
            Separator          => 'MyFirehoseSeparator',    # OPTIONAL
          },    # OPTIONAL
          IotAnalytics => {
            ChannelArn  => 'MyAwsArn',
            ChannelName => 'MyChannelName',    # OPTIONAL
            RoleArn     => 'MyAwsArn',
          },    # OPTIONAL
          IotEvents => {
            InputName => 'MyInputName',    # min: 1, max: 128
            RoleArn   => 'MyAwsArn',
            MessageId => 'MyMessageId',    # max: 128; OPTIONAL
          },    # OPTIONAL
          Kinesis => {
            RoleArn      => 'MyAwsArn',
            StreamName   => 'MyStreamName',
            PartitionKey => 'MyPartitionKey',    # OPTIONAL
          },    # OPTIONAL
          Lambda => {
            FunctionArn => 'MyFunctionArn',

          },    # OPTIONAL
          Republish => {
            RoleArn => 'MyAwsArn',
            Topic   => 'MyTopicPattern',

          },    # OPTIONAL
          S3 => {
            BucketName => 'MyBucketName',
            Key        => 'MyKey',
            RoleArn    => 'MyAwsArn',
            CannedAcl  => 'private'
            , # values: private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write; OPTIONAL
          },    # OPTIONAL
          Salesforce => {
            Token => 'MySalesforceToken',       # min: 40
            Url   => 'MySalesforceEndpoint',    # max: 2000

          },    # OPTIONAL
          Sns => {
            RoleArn       => 'MyAwsArn',
            TargetArn     => 'MyAwsArn',
            MessageFormat => 'RAW',        # values: RAW, JSON; OPTIONAL
          },    # OPTIONAL
          Sqs => {
            QueueUrl  => 'MyQueueUrl',
            RoleArn   => 'MyAwsArn',
            UseBase64 => 1,              # OPTIONAL
          },    # OPTIONAL
          StepFunctions => {
            RoleArn             => 'MyAwsArn',
            StateMachineName    => 'MyStateMachineName',
            ExecutionNamePrefix => 'MyExecutionNamePrefix',    # OPTIONAL
          },    # OPTIONAL
        },
        RuleDisabled => 1,    # OPTIONAL
      },
      Tags => 'MyString',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateTopicRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleName => Str

The name of the rule.



=head2 Tags => Str

Metadata which can be used to manage the topic rule.

For URI Request parameters use format: ...key1=value1&key2=value2...

For the CLI command-line parameter use format: --tags
"key1=value1&key2=value2..."

For the cli-input-json file use format: "tags":
"key1=value1&key2=value2..."



=head2 B<REQUIRED> TopicRulePayload => L<Paws::IoT::TopicRulePayload>

The rule payload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTopicRule in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

