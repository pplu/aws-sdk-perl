
package Paws::IoT::CreateTopicRule;
  use Moose;
  has RuleName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ruleName', required => 1);
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
        actions => [
          {
            cloudwatchAlarm => {
              alarmName   => 'MyAlarmName',
              roleArn     => 'MyAwsArn',
              stateReason => 'MyStateReason',
              stateValue  => 'MyStateValue',

            },    # OPTIONAL
            cloudwatchMetric => {
              metricName      => 'MyMetricName',
              metricNamespace => 'MyMetricNamespace',
              metricUnit      => 'MyMetricUnit',
              metricValue     => 'MyMetricValue',
              roleArn         => 'MyAwsArn',
              metricTimestamp => 'MyMetricTimestamp',    # OPTIONAL
            },    # OPTIONAL
            dynamoDB => {
              hashKeyField => 'MyHashKeyField',
              hashKeyValue => 'MyHashKeyValue',
              roleArn      => 'MyAwsArn',
              tableName    => 'MyTableName',
              hashKeyType => 'STRING',    # values: STRING, NUMBER; OPTIONAL
              operation     => 'MyDynamoOperation',    # OPTIONAL
              payloadField  => 'MyPayloadField',       # OPTIONAL
              rangeKeyField => 'MyRangeKeyField',      # OPTIONAL
              rangeKeyType => 'STRING',    # values: STRING, NUMBER; OPTIONAL
              rangeKeyValue => 'MyRangeKeyValue',    # OPTIONAL
            },    # OPTIONAL
            dynamoDBv2 => {
              putItem => {
                tableName => 'MyTableName',

              },    # OPTIONAL
              roleArn => 'MyAwsArn',
            },    # OPTIONAL
            elasticsearch => {
              endpoint => 'MyElasticsearchEndpoint',
              id       => 'MyElasticsearchId',
              index    => 'MyElasticsearchIndex',
              roleArn  => 'MyAwsArn',
              type     => 'MyElasticsearchType',

            },    # OPTIONAL
            firehose => {
              deliveryStreamName => 'MyDeliveryStreamName',
              roleArn            => 'MyAwsArn',
              separator          => 'MyFirehoseSeparator',    # OPTIONAL
            },    # OPTIONAL
            iotAnalytics => {
              channelArn  => 'MyAwsArn',
              channelName => 'MyChannelName',    # OPTIONAL
              roleArn     => 'MyAwsArn',
            },    # OPTIONAL
            kinesis => {
              roleArn      => 'MyAwsArn',
              streamName   => 'MyStreamName',
              partitionKey => 'MyPartitionKey',    # OPTIONAL
            },    # OPTIONAL
            lambda => {
              functionArn => 'MyFunctionArn',

            },    # OPTIONAL
            republish => {
              roleArn => 'MyAwsArn',
              topic   => 'MyTopicPattern',

            },    # OPTIONAL
            s3 => {
              bucketName => 'MyBucketName',
              key        => 'MyKey',
              roleArn    => 'MyAwsArn',
              cannedAcl  => 'private'
              , # values: private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write; OPTIONAL
            },    # OPTIONAL
            salesforce => {
              token => 'MySalesforceToken',       # min: 40,
              url   => 'MySalesforceEndpoint',    # max: 2000

            },    # OPTIONAL
            sns => {
              roleArn       => 'MyAwsArn',
              targetArn     => 'MyAwsArn',
              messageFormat => 'RAW',        # values: RAW, JSON; OPTIONAL
            },    # OPTIONAL
            sqs => {
              queueUrl  => 'MyQueueUrl',
              roleArn   => 'MyAwsArn',
              useBase64 => 1,              # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],        # max: 10
        sql              => 'MySQL',
        awsIotSqlVersion => 'MyAwsIotSqlVersion',    # OPTIONAL
        description      => 'MyDescription',         # OPTIONAL
        errorAction      => {
          cloudwatchAlarm => {
            alarmName   => 'MyAlarmName',
            roleArn     => 'MyAwsArn',
            stateReason => 'MyStateReason',
            stateValue  => 'MyStateValue',

          },                                         # OPTIONAL
          cloudwatchMetric => {
            metricName      => 'MyMetricName',
            metricNamespace => 'MyMetricNamespace',
            metricUnit      => 'MyMetricUnit',
            metricValue     => 'MyMetricValue',
            roleArn         => 'MyAwsArn',
            metricTimestamp => 'MyMetricTimestamp',    # OPTIONAL
          },    # OPTIONAL
          dynamoDB => {
            hashKeyField => 'MyHashKeyField',
            hashKeyValue => 'MyHashKeyValue',
            roleArn      => 'MyAwsArn',
            tableName    => 'MyTableName',
            hashKeyType  => 'STRING',         # values: STRING, NUMBER; OPTIONAL
            operation     => 'MyDynamoOperation',    # OPTIONAL
            payloadField  => 'MyPayloadField',       # OPTIONAL
            rangeKeyField => 'MyRangeKeyField',      # OPTIONAL
            rangeKeyType => 'STRING',    # values: STRING, NUMBER; OPTIONAL
            rangeKeyValue => 'MyRangeKeyValue',    # OPTIONAL
          },    # OPTIONAL
          dynamoDBv2 => {
            putItem => {
              tableName => 'MyTableName',

            },    # OPTIONAL
            roleArn => 'MyAwsArn',
          },    # OPTIONAL
          elasticsearch => {
            endpoint => 'MyElasticsearchEndpoint',
            id       => 'MyElasticsearchId',
            index    => 'MyElasticsearchIndex',
            roleArn  => 'MyAwsArn',
            type     => 'MyElasticsearchType',

          },    # OPTIONAL
          firehose => {
            deliveryStreamName => 'MyDeliveryStreamName',
            roleArn            => 'MyAwsArn',
            separator          => 'MyFirehoseSeparator',    # OPTIONAL
          },    # OPTIONAL
          iotAnalytics => {
            channelArn  => 'MyAwsArn',
            channelName => 'MyChannelName',    # OPTIONAL
            roleArn     => 'MyAwsArn',
          },    # OPTIONAL
          kinesis => {
            roleArn      => 'MyAwsArn',
            streamName   => 'MyStreamName',
            partitionKey => 'MyPartitionKey',    # OPTIONAL
          },    # OPTIONAL
          lambda => {
            functionArn => 'MyFunctionArn',

          },    # OPTIONAL
          republish => {
            roleArn => 'MyAwsArn',
            topic   => 'MyTopicPattern',

          },    # OPTIONAL
          s3 => {
            bucketName => 'MyBucketName',
            key        => 'MyKey',
            roleArn    => 'MyAwsArn',
            cannedAcl  => 'private'
            , # values: private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write; OPTIONAL
          },    # OPTIONAL
          salesforce => {
            token => 'MySalesforceToken',       # min: 40,
            url   => 'MySalesforceEndpoint',    # max: 2000

          },    # OPTIONAL
          sns => {
            roleArn       => 'MyAwsArn',
            targetArn     => 'MyAwsArn',
            messageFormat => 'RAW',        # values: RAW, JSON; OPTIONAL
          },    # OPTIONAL
          sqs => {
            queueUrl  => 'MyQueueUrl',
            roleArn   => 'MyAwsArn',
            useBase64 => 1,              # OPTIONAL
          },    # OPTIONAL
        },
        ruleDisabled => 1,    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateTopicRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleName => Str

The name of the rule.



=head2 B<REQUIRED> TopicRulePayload => L<Paws::IoT::TopicRulePayload>

The rule payload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTopicRule in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

