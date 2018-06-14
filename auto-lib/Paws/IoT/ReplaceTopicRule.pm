
package Paws::IoT::ReplaceTopicRule;
  use Moose;
  has RuleName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ruleName', required => 1);
  has TopicRulePayload => (is => 'ro', isa => 'Paws::IoT::TopicRulePayload', traits => ['NameInRequest'], request_name => 'topicRulePayload', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'TopicRulePayload');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceTopicRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rules/{ruleName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ReplaceTopicRule - Arguments for method ReplaceTopicRule on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReplaceTopicRule on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ReplaceTopicRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReplaceTopicRule.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->ReplaceTopicRule(
      RuleName         => 'MyRuleName',
      TopicRulePayload => {
        sql     => 'MySQL',
        actions => [
          {
            cloudwatchAlarm => {
              alarmName   => 'MyAlarmName',
              roleArn     => 'MyAwsArn',
              stateValue  => 'MyStateValue',
              stateReason => 'MyStateReason',

            },    # OPTIONAL
            dynamoDB => {
              roleArn      => 'MyAwsArn',
              hashKeyValue => 'MyHashKeyValue',
              hashKeyField => 'MyHashKeyField',
              tableName    => 'MyTableName',
              payloadField => 'MyPayloadField',    # OPTIONAL
              rangeKeyType => 'STRING',    # values: STRING, NUMBER; OPTIONAL
              rangeKeyValue => 'MyRangeKeyValue',    # OPTIONAL
              hashKeyType => 'STRING',    # values: STRING, NUMBER; OPTIONAL
              operation     => 'MyDynamoOperation',    # OPTIONAL
              rangeKeyField => 'MyRangeKeyField',      # OPTIONAL
            },    # OPTIONAL
            s3 => {
              bucketName => 'MyBucketName',
              roleArn    => 'MyAwsArn',
              key        => 'MyKey',
              cannedAcl  => 'private'
              , # values: private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write; OPTIONAL
            },    # OPTIONAL
            salesforce => {
              url   => 'MySalesforceEndpoint',    # max: 2000
              token => 'MySalesforceToken',       # min: 40,

            },    # OPTIONAL
            iotAnalytics => {
              roleArn     => 'MyAwsArn',
              channelName => 'MyChannelName',    # OPTIONAL
              channelArn  => 'MyAwsArn',
            },    # OPTIONAL
            elasticsearch => {
              roleArn  => 'MyAwsArn',
              id       => 'MyElasticsearchId',
              endpoint => 'MyElasticsearchEndpoint',
              type     => 'MyElasticsearchType',
              index    => 'MyElasticsearchIndex',

            },    # OPTIONAL
            firehose => {
              roleArn            => 'MyAwsArn',
              deliveryStreamName => 'MyDeliveryStreamName',
              separator          => 'MyFirehoseSeparator',    # OPTIONAL
            },    # OPTIONAL
            lambda => {
              functionArn => 'MyFunctionArn',

            },    # OPTIONAL
            sns => {
              roleArn       => 'MyAwsArn',
              targetArn     => 'MyAwsArn',
              messageFormat => 'RAW',        # values: RAW, JSON; OPTIONAL
            },    # OPTIONAL
            kinesis => {
              roleArn      => 'MyAwsArn',
              streamName   => 'MyStreamName',
              partitionKey => 'MyPartitionKey',    # OPTIONAL
            },    # OPTIONAL
            dynamoDBv2 => {
              putItem => {
                tableName => 'MyTableName',

              },    # OPTIONAL
              roleArn => 'MyAwsArn',
            },    # OPTIONAL
            cloudwatchMetric => {
              roleArn         => 'MyAwsArn',
              metricNamespace => 'MyMetricNamespace',
              metricUnit      => 'MyMetricUnit',
              metricValue     => 'MyMetricValue',
              metricName      => 'MyMetricName',
              metricTimestamp => 'MyMetricTimestamp',    # OPTIONAL
            },    # OPTIONAL
            sqs => {
              roleArn   => 'MyAwsArn',
              queueUrl  => 'MyQueueUrl',
              useBase64 => 1,              # OPTIONAL
            },    # OPTIONAL
            republish => {
              roleArn => 'MyAwsArn',
              topic   => 'MyTopicPattern',

            },    # OPTIONAL
          },
          ...
        ],        # max: 10
        errorAction => {
          cloudwatchAlarm => {
            alarmName   => 'MyAlarmName',
            roleArn     => 'MyAwsArn',
            stateValue  => 'MyStateValue',
            stateReason => 'MyStateReason',

          },      # OPTIONAL
          dynamoDB => {
            roleArn      => 'MyAwsArn',
            hashKeyValue => 'MyHashKeyValue',
            hashKeyField => 'MyHashKeyField',
            tableName    => 'MyTableName',
            payloadField => 'MyPayloadField', # OPTIONAL
            rangeKeyType => 'STRING',         # values: STRING, NUMBER; OPTIONAL
            rangeKeyValue => 'MyRangeKeyValue',    # OPTIONAL
            hashKeyType => 'STRING',    # values: STRING, NUMBER; OPTIONAL
            operation     => 'MyDynamoOperation',    # OPTIONAL
            rangeKeyField => 'MyRangeKeyField',      # OPTIONAL
          },    # OPTIONAL
          s3 => {
            bucketName => 'MyBucketName',
            roleArn    => 'MyAwsArn',
            key        => 'MyKey',
            cannedAcl  => 'private'
            , # values: private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write; OPTIONAL
          },    # OPTIONAL
          salesforce => {
            url   => 'MySalesforceEndpoint',    # max: 2000
            token => 'MySalesforceToken',       # min: 40,

          },    # OPTIONAL
          iotAnalytics => {
            roleArn     => 'MyAwsArn',
            channelName => 'MyChannelName',    # OPTIONAL
            channelArn  => 'MyAwsArn',
          },    # OPTIONAL
          elasticsearch => {
            roleArn  => 'MyAwsArn',
            id       => 'MyElasticsearchId',
            endpoint => 'MyElasticsearchEndpoint',
            type     => 'MyElasticsearchType',
            index    => 'MyElasticsearchIndex',

          },    # OPTIONAL
          firehose => {
            roleArn            => 'MyAwsArn',
            deliveryStreamName => 'MyDeliveryStreamName',
            separator          => 'MyFirehoseSeparator',    # OPTIONAL
          },    # OPTIONAL
          lambda => {
            functionArn => 'MyFunctionArn',

          },    # OPTIONAL
          sns => {
            roleArn       => 'MyAwsArn',
            targetArn     => 'MyAwsArn',
            messageFormat => 'RAW',        # values: RAW, JSON; OPTIONAL
          },    # OPTIONAL
          kinesis => {
            roleArn      => 'MyAwsArn',
            streamName   => 'MyStreamName',
            partitionKey => 'MyPartitionKey',    # OPTIONAL
          },    # OPTIONAL
          dynamoDBv2 => {
            putItem => {
              tableName => 'MyTableName',

            },    # OPTIONAL
            roleArn => 'MyAwsArn',
          },    # OPTIONAL
          cloudwatchMetric => {
            roleArn         => 'MyAwsArn',
            metricNamespace => 'MyMetricNamespace',
            metricUnit      => 'MyMetricUnit',
            metricValue     => 'MyMetricValue',
            metricName      => 'MyMetricName',
            metricTimestamp => 'MyMetricTimestamp',    # OPTIONAL
          },    # OPTIONAL
          sqs => {
            roleArn   => 'MyAwsArn',
            queueUrl  => 'MyQueueUrl',
            useBase64 => 1,              # OPTIONAL
          },    # OPTIONAL
          republish => {
            roleArn => 'MyAwsArn',
            topic   => 'MyTopicPattern',

          },    # OPTIONAL
        },
        ruleDisabled     => 1,                       # OPTIONAL
        description      => 'MyDescription',         # OPTIONAL
        awsIotSqlVersion => 'MyAwsIotSqlVersion',    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ReplaceTopicRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleName => Str

The name of the rule.



=head2 B<REQUIRED> TopicRulePayload => L<Paws::IoT::TopicRulePayload>

The rule payload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReplaceTopicRule in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

