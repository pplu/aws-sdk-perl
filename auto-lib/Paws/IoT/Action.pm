# Generated from default/object.tt
package Paws::IoT::Action;
  use Moo;
  use Types::Standard qw//;
  use Paws::IoT::Types qw/IoT_RepublishAction IoT_SnsAction IoT_FirehoseAction IoT_IotEventsAction IoT_LambdaAction IoT_CloudwatchMetricAction IoT_ElasticsearchAction IoT_SalesforceAction IoT_IotAnalyticsAction IoT_HttpAction IoT_CloudwatchAlarmAction IoT_DynamoDBAction IoT_KinesisAction IoT_StepFunctionsAction IoT_SqsAction IoT_S3Action IoT_DynamoDBv2Action/;
  has CloudwatchAlarm => (is => 'ro', isa => IoT_CloudwatchAlarmAction);
  has CloudwatchMetric => (is => 'ro', isa => IoT_CloudwatchMetricAction);
  has DynamoDB => (is => 'ro', isa => IoT_DynamoDBAction);
  has DynamoDBv2 => (is => 'ro', isa => IoT_DynamoDBv2Action);
  has Elasticsearch => (is => 'ro', isa => IoT_ElasticsearchAction);
  has Firehose => (is => 'ro', isa => IoT_FirehoseAction);
  has Http => (is => 'ro', isa => IoT_HttpAction);
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
               'Republish' => {
                                'type' => 'IoT_RepublishAction',
                                'class' => 'Paws::IoT::RepublishAction'
                              },
               'Firehose' => {
                               'class' => 'Paws::IoT::FirehoseAction',
                               'type' => 'IoT_FirehoseAction'
                             },
               'DynamoDB' => {
                               'type' => 'IoT_DynamoDBAction',
                               'class' => 'Paws::IoT::DynamoDBAction'
                             },
               'CloudwatchAlarm' => {
                                      'type' => 'IoT_CloudwatchAlarmAction',
                                      'class' => 'Paws::IoT::CloudwatchAlarmAction'
                                    },
               'Http' => {
                           'type' => 'IoT_HttpAction',
                           'class' => 'Paws::IoT::HttpAction'
                         },
               'S3' => {
                         'type' => 'IoT_S3Action',
                         'class' => 'Paws::IoT::S3Action'
                       },
               'IotEvents' => {
                                'type' => 'IoT_IotEventsAction',
                                'class' => 'Paws::IoT::IotEventsAction'
                              },
               'Sns' => {
                          'type' => 'IoT_SnsAction',
                          'class' => 'Paws::IoT::SnsAction'
                        },
               'Kinesis' => {
                              'class' => 'Paws::IoT::KinesisAction',
                              'type' => 'IoT_KinesisAction'
                            },
               'Salesforce' => {
                                 'type' => 'IoT_SalesforceAction',
                                 'class' => 'Paws::IoT::SalesforceAction'
                               },
               'DynamoDBv2' => {
                                 'class' => 'Paws::IoT::DynamoDBv2Action',
                                 'type' => 'IoT_DynamoDBv2Action'
                               },
               'Sqs' => {
                          'type' => 'IoT_SqsAction',
                          'class' => 'Paws::IoT::SqsAction'
                        },
               'Elasticsearch' => {
                                    'type' => 'IoT_ElasticsearchAction',
                                    'class' => 'Paws::IoT::ElasticsearchAction'
                                  },
               'Lambda' => {
                             'type' => 'IoT_LambdaAction',
                             'class' => 'Paws::IoT::LambdaAction'
                           },
               'CloudwatchMetric' => {
                                       'class' => 'Paws::IoT::CloudwatchMetricAction',
                                       'type' => 'IoT_CloudwatchMetricAction'
                                     },
               'StepFunctions' => {
                                    'class' => 'Paws::IoT::StepFunctionsAction',
                                    'type' => 'IoT_StepFunctionsAction'
                                  }
             },
  'NameInRequest' => {
                       'IotAnalytics' => 'iotAnalytics',
                       'DynamoDB' => 'dynamoDB',
                       'Firehose' => 'firehose',
                       'Republish' => 'republish',
                       'Sns' => 'sns',
                       'IotEvents' => 'iotEvents',
                       'S3' => 's3',
                       'Http' => 'http',
                       'CloudwatchAlarm' => 'cloudwatchAlarm',
                       'Kinesis' => 'kinesis',
                       'Elasticsearch' => 'elasticsearch',
                       'Sqs' => 'sqs',
                       'Lambda' => 'lambda',
                       'DynamoDBv2' => 'dynamoDBv2',
                       'Salesforce' => 'salesforce',
                       'CloudwatchMetric' => 'cloudwatchMetric',
                       'StepFunctions' => 'stepFunctions'
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


=head2 Http => IoT_HttpAction

  Send data to an HTTPS endpoint.


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

