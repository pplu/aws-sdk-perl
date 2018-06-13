
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
            dynamoDBv2 => {
              roleArn => 'MyAwsArn',
              putItem => {
                tableName => 'MyTableName',

              },    # OPTIONAL
            },    # OPTIONAL
            cloudwatchAlarm => {
              alarmName   => 'MyAlarmName',
              stateReason => 'MyStateReason',
              stateValue  => 'MyStateValue',
              roleArn     => 'MyAwsArn',

            },    # OPTIONAL
            kinesis => {
              streamName   => 'MyStreamName',
              roleArn      => 'MyAwsArn',
              partitionKey => 'MyPartitionKey',    # OPTIONAL
            },    # OPTIONAL
            elasticsearch => {
              id       => 'MyElasticsearchId',
              endpoint => 'MyElasticsearchEndpoint',
              index    => 'MyElasticsearchIndex',
              roleArn  => 'MyAwsArn',
              type     => 'MyElasticsearchType',

            },    # OPTIONAL
            s3 => {
              key        => 'MyKey',
              bucketName => 'MyBucketName',
              roleArn    => 'MyAwsArn',
              cannedAcl  => 'private'
              , # values: private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write; OPTIONAL
            },    # OPTIONAL
            salesforce => {
              token => 'MySalesforceToken',       # min: 40,
              url   => 'MySalesforceEndpoint',    # max: 2000

            },    # OPTIONAL
            republish => {
              roleArn => 'MyAwsArn',
              topic   => 'MyTopicPattern',

            },    # OPTIONAL
            firehose => {
              roleArn            => 'MyAwsArn',
              deliveryStreamName => 'MyDeliveryStreamName',
              separator          => 'MyFirehoseSeparator',    # OPTIONAL
            },    # OPTIONAL
            cloudwatchMetric => {
              metricName      => 'MyMetricName',
              metricValue     => 'MyMetricValue',
              metricUnit      => 'MyMetricUnit',
              metricNamespace => 'MyMetricNamespace',
              roleArn         => 'MyAwsArn',
              metricTimestamp => 'MyMetricTimestamp',    # OPTIONAL
            },    # OPTIONAL
            sns => {
              roleArn       => 'MyAwsArn',
              targetArn     => 'MyAwsArn',
              messageFormat => 'RAW',        # values: RAW, JSON; OPTIONAL
            },    # OPTIONAL
            lambda => {
              functionArn => 'MyFunctionArn',

            },    # OPTIONAL
            dynamoDB => {
              hashKeyValue  => 'MyHashKeyValue',
              roleArn       => 'MyAwsArn',
              tableName     => 'MyTableName',
              hashKeyField  => 'MyHashKeyField',
              rangeKeyField => 'MyRangeKeyField',    # OPTIONAL
              hashKeyType  => 'STRING',    # values: STRING, NUMBER; OPTIONAL
              rangeKeyType => 'STRING',    # values: STRING, NUMBER; OPTIONAL
              rangeKeyValue => 'MyRangeKeyValue',      # OPTIONAL
              operation     => 'MyDynamoOperation',    # OPTIONAL
              payloadField  => 'MyPayloadField',       # OPTIONAL
            },    # OPTIONAL
            sqs => {
              queueUrl  => 'MyQueueUrl',
              roleArn   => 'MyAwsArn',
              useBase64 => 1,              # OPTIONAL
            },    # OPTIONAL
            iotAnalytics => {
              channelName => 'MyChannelName',    # OPTIONAL
              channelArn  => 'MyAwsArn',
              roleArn     => 'MyAwsArn',
            },    # OPTIONAL
          },
          ...
        ],        # max: 10
        sql          => 'MySQL',
        ruleDisabled => 1,         # OPTIONAL
        errorAction  => {
          dynamoDBv2 => {
            roleArn => 'MyAwsArn',
            putItem => {
              tableName => 'MyTableName',

            },                     # OPTIONAL
          },    # OPTIONAL
          cloudwatchAlarm => {
            alarmName   => 'MyAlarmName',
            stateReason => 'MyStateReason',
            stateValue  => 'MyStateValue',
            roleArn     => 'MyAwsArn',

          },    # OPTIONAL
          kinesis => {
            streamName   => 'MyStreamName',
            roleArn      => 'MyAwsArn',
            partitionKey => 'MyPartitionKey',    # OPTIONAL
          },    # OPTIONAL
          elasticsearch => {
            id       => 'MyElasticsearchId',
            endpoint => 'MyElasticsearchEndpoint',
            index    => 'MyElasticsearchIndex',
            roleArn  => 'MyAwsArn',
            type     => 'MyElasticsearchType',

          },    # OPTIONAL
          s3 => {
            key        => 'MyKey',
            bucketName => 'MyBucketName',
            roleArn    => 'MyAwsArn',
            cannedAcl  => 'private'
            , # values: private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write; OPTIONAL
          },    # OPTIONAL
          salesforce => {
            token => 'MySalesforceToken',       # min: 40,
            url   => 'MySalesforceEndpoint',    # max: 2000

          },    # OPTIONAL
          republish => {
            roleArn => 'MyAwsArn',
            topic   => 'MyTopicPattern',

          },    # OPTIONAL
          firehose => {
            roleArn            => 'MyAwsArn',
            deliveryStreamName => 'MyDeliveryStreamName',
            separator          => 'MyFirehoseSeparator',    # OPTIONAL
          },    # OPTIONAL
          cloudwatchMetric => {
            metricName      => 'MyMetricName',
            metricValue     => 'MyMetricValue',
            metricUnit      => 'MyMetricUnit',
            metricNamespace => 'MyMetricNamespace',
            roleArn         => 'MyAwsArn',
            metricTimestamp => 'MyMetricTimestamp',    # OPTIONAL
          },    # OPTIONAL
          sns => {
            roleArn       => 'MyAwsArn',
            targetArn     => 'MyAwsArn',
            messageFormat => 'RAW',        # values: RAW, JSON; OPTIONAL
          },    # OPTIONAL
          lambda => {
            functionArn => 'MyFunctionArn',

          },    # OPTIONAL
          dynamoDB => {
            hashKeyValue  => 'MyHashKeyValue',
            roleArn       => 'MyAwsArn',
            tableName     => 'MyTableName',
            hashKeyField  => 'MyHashKeyField',
            rangeKeyField => 'MyRangeKeyField',    # OPTIONAL
            hashKeyType  => 'STRING',    # values: STRING, NUMBER; OPTIONAL
            rangeKeyType => 'STRING',    # values: STRING, NUMBER; OPTIONAL
            rangeKeyValue => 'MyRangeKeyValue',      # OPTIONAL
            operation     => 'MyDynamoOperation',    # OPTIONAL
            payloadField  => 'MyPayloadField',       # OPTIONAL
          },    # OPTIONAL
          sqs => {
            queueUrl  => 'MyQueueUrl',
            roleArn   => 'MyAwsArn',
            useBase64 => 1,              # OPTIONAL
          },    # OPTIONAL
          iotAnalytics => {
            channelName => 'MyChannelName',    # OPTIONAL
            channelArn  => 'MyAwsArn',
            roleArn     => 'MyAwsArn',
          },    # OPTIONAL
        },
        awsIotSqlVersion => 'MyAwsIotSqlVersion',    # OPTIONAL
        description      => 'MyDescription',         # OPTIONAL
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

