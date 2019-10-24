# Generated from default/object.tt
package Paws::IoT::Action;
  use Moo;
  use Types::Standard qw//;
  use Paws::IoT::Types qw/IoT_S3Action IoT_DynamoDBv2Action IoT_IotEventsAction IoT_CloudwatchAlarmAction IoT_IotAnalyticsAction IoT_SqsAction IoT_SalesforceAction IoT_KinesisAction IoT_SnsAction IoT_FirehoseAction IoT_LambdaAction IoT_StepFunctionsAction IoT_ElasticsearchAction IoT_DynamoDBAction IoT_CloudwatchMetricAction IoT_RepublishAction/;
  has CloudwatchAlarm => (is => 'ro', isa => IoT_CloudwatchAlarmAction);
  has CloudwatchMetric => (is => 'ro', isa => IoT_CloudwatchMetricAction);
  has DynamoDB => (is => 'ro', isa => IoT_DynamoDBAction);
  has DynamoDBv2 => (is => 'ro', isa => IoT_DynamoDBv2Action);
  has Elasticsearch => (is => 'ro', isa => IoT_ElasticsearchAction);
  has Firehose => (is => 'ro', isa => IoT_FirehoseAction);
  has IotAnalytics => (is => 'ro', isa => IoT_IotAnalyticsAction);
  has IotEvents => (is => 'ro', isa => IoT_IotEventsAction);
  has Kinesis => (is => 'ro', isa => IoT_KinesisAction);
  has Lambda => (is => 'ro', isa => IoT_LambdaAction);
  has Republish => (is => 'ro', isa => IoT_RepublishAction);
  has S3 => (is => 'ro', isa => IoT_S3Action);
  has Salesforce => (is => 'ro', isa => IoT_SalesforceAction);
  has Sns => (is => 'ro', isa => IoT_SnsAction);
  has Sqs => (is => 'ro', isa => IoT_SqsAction);
  has StepFunctions => (is => 'ro', isa => IoT_StepFunctionsAction);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IotAnalytics' => {
                                   'class' => 'Paws::IoT::IotAnalyticsAction',
                                   'type' => 'IoT_IotAnalyticsAction'
                                 },
               'StepFunctions' => {
                                    'class' => 'Paws::IoT::StepFunctionsAction',
                                    'type' => 'IoT_StepFunctionsAction'
                                  },
               'Sqs' => {
                          'class' => 'Paws::IoT::SqsAction',
                          'type' => 'IoT_SqsAction'
                        },
               'Lambda' => {
                             'class' => 'Paws::IoT::LambdaAction',
                             'type' => 'IoT_LambdaAction'
                           },
               'IotEvents' => {
                                'class' => 'Paws::IoT::IotEventsAction',
                                'type' => 'IoT_IotEventsAction'
                              },
               'CloudwatchMetric' => {
                                       'class' => 'Paws::IoT::CloudwatchMetricAction',
                                       'type' => 'IoT_CloudwatchMetricAction'
                                     },
               'Salesforce' => {
                                 'class' => 'Paws::IoT::SalesforceAction',
                                 'type' => 'IoT_SalesforceAction'
                               },
               'DynamoDBv2' => {
                                 'class' => 'Paws::IoT::DynamoDBv2Action',
                                 'type' => 'IoT_DynamoDBv2Action'
                               },
               'Republish' => {
                                'class' => 'Paws::IoT::RepublishAction',
                                'type' => 'IoT_RepublishAction'
                              },
               'CloudwatchAlarm' => {
                                      'class' => 'Paws::IoT::CloudwatchAlarmAction',
                                      'type' => 'IoT_CloudwatchAlarmAction'
                                    },
               'DynamoDB' => {
                               'class' => 'Paws::IoT::DynamoDBAction',
                               'type' => 'IoT_DynamoDBAction'
                             },
               'Sns' => {
                          'class' => 'Paws::IoT::SnsAction',
                          'type' => 'IoT_SnsAction'
                        },
               'Firehose' => {
                               'class' => 'Paws::IoT::FirehoseAction',
                               'type' => 'IoT_FirehoseAction'
                             },
               'Elasticsearch' => {
                                    'class' => 'Paws::IoT::ElasticsearchAction',
                                    'type' => 'IoT_ElasticsearchAction'
                                  },
               'Kinesis' => {
                              'class' => 'Paws::IoT::KinesisAction',
                              'type' => 'IoT_KinesisAction'
                            },
               'S3' => {
                         'class' => 'Paws::IoT::S3Action',
                         'type' => 'IoT_S3Action'
                       }
             },
  'NameInRequest' => {
                       'IotAnalytics' => 'iotAnalytics',
                       'StepFunctions' => 'stepFunctions',
                       'Sqs' => 'sqs',
                       'Lambda' => 'lambda',
                       'IotEvents' => 'iotEvents',
                       'CloudwatchMetric' => 'cloudwatchMetric',
                       'Salesforce' => 'salesforce',
                       'DynamoDBv2' => 'dynamoDBv2',
                       'Republish' => 'republish',
                       'CloudwatchAlarm' => 'cloudwatchAlarm',
                       'DynamoDB' => 'dynamoDB',
                       'Sns' => 'sns',
                       'Firehose' => 'firehose',
                       'Elasticsearch' => 'elasticsearch',
                       'Kinesis' => 'kinesis',
                       'S3' => 's3'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::Action

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::Action object:

  $service_obj->Method(Att1 => { CloudwatchAlarm => $value, ..., StepFunctions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::Action object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudwatchAlarm

=head1 DESCRIPTION

Describes the actions associated with a rule.

=head1 ATTRIBUTES


=head2 CloudwatchAlarm => IoT_CloudwatchAlarmAction

  Change the state of a CloudWatch alarm.


=head2 CloudwatchMetric => IoT_CloudwatchMetricAction

  Capture a CloudWatch metric.


=head2 DynamoDB => IoT_DynamoDBAction

  Write to a DynamoDB table.


=head2 DynamoDBv2 => IoT_DynamoDBv2Action

  Write to a DynamoDB table. This is a new version of the DynamoDB
action. It allows you to write each attribute in an MQTT message
payload into a separate DynamoDB column.


=head2 Elasticsearch => IoT_ElasticsearchAction

  Write data to an Amazon Elasticsearch Service domain.


=head2 Firehose => IoT_FirehoseAction

  Write to an Amazon Kinesis Firehose stream.


=head2 IotAnalytics => IoT_IotAnalyticsAction

  Sends message data to an AWS IoT Analytics channel.


=head2 IotEvents => IoT_IotEventsAction

  Sends an input to an AWS IoT Events detector.


=head2 Kinesis => IoT_KinesisAction

  Write data to an Amazon Kinesis stream.


=head2 Lambda => IoT_LambdaAction

  Invoke a Lambda function.


=head2 Republish => IoT_RepublishAction

  Publish to another MQTT topic.


=head2 S3 => IoT_S3Action

  Write to an Amazon S3 bucket.


=head2 Salesforce => IoT_SalesforceAction

  Send a message to a Salesforce IoT Cloud Input Stream.


=head2 Sns => IoT_SnsAction

  Publish to an Amazon SNS topic.


=head2 Sqs => IoT_SqsAction

  Publish to an Amazon SQS queue.


=head2 StepFunctions => IoT_StepFunctionsAction

  Starts execution of a Step Functions state machine.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

