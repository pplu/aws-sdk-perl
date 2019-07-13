package Paws::IoT::Action;
  use Moose;
  has CloudwatchAlarm => (is => 'ro', isa => 'Paws::IoT::CloudwatchAlarmAction', request_name => 'cloudwatchAlarm', traits => ['NameInRequest']);
  has CloudwatchMetric => (is => 'ro', isa => 'Paws::IoT::CloudwatchMetricAction', request_name => 'cloudwatchMetric', traits => ['NameInRequest']);
  has DynamoDB => (is => 'ro', isa => 'Paws::IoT::DynamoDBAction', request_name => 'dynamoDB', traits => ['NameInRequest']);
  has DynamoDBv2 => (is => 'ro', isa => 'Paws::IoT::DynamoDBv2Action', request_name => 'dynamoDBv2', traits => ['NameInRequest']);
  has Elasticsearch => (is => 'ro', isa => 'Paws::IoT::ElasticsearchAction', request_name => 'elasticsearch', traits => ['NameInRequest']);
  has Firehose => (is => 'ro', isa => 'Paws::IoT::FirehoseAction', request_name => 'firehose', traits => ['NameInRequest']);
  has IotAnalytics => (is => 'ro', isa => 'Paws::IoT::IotAnalyticsAction', request_name => 'iotAnalytics', traits => ['NameInRequest']);
  has IotEvents => (is => 'ro', isa => 'Paws::IoT::IotEventsAction', request_name => 'iotEvents', traits => ['NameInRequest']);
  has Kinesis => (is => 'ro', isa => 'Paws::IoT::KinesisAction', request_name => 'kinesis', traits => ['NameInRequest']);
  has Lambda => (is => 'ro', isa => 'Paws::IoT::LambdaAction', request_name => 'lambda', traits => ['NameInRequest']);
  has Republish => (is => 'ro', isa => 'Paws::IoT::RepublishAction', request_name => 'republish', traits => ['NameInRequest']);
  has S3 => (is => 'ro', isa => 'Paws::IoT::S3Action', request_name => 's3', traits => ['NameInRequest']);
  has Salesforce => (is => 'ro', isa => 'Paws::IoT::SalesforceAction', request_name => 'salesforce', traits => ['NameInRequest']);
  has Sns => (is => 'ro', isa => 'Paws::IoT::SnsAction', request_name => 'sns', traits => ['NameInRequest']);
  has Sqs => (is => 'ro', isa => 'Paws::IoT::SqsAction', request_name => 'sqs', traits => ['NameInRequest']);
  has StepFunctions => (is => 'ro', isa => 'Paws::IoT::StepFunctionsAction', request_name => 'stepFunctions', traits => ['NameInRequest']);
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


=head2 CloudwatchAlarm => L<Paws::IoT::CloudwatchAlarmAction>

  Change the state of a CloudWatch alarm.


=head2 CloudwatchMetric => L<Paws::IoT::CloudwatchMetricAction>

  Capture a CloudWatch metric.


=head2 DynamoDB => L<Paws::IoT::DynamoDBAction>

  Write to a DynamoDB table.


=head2 DynamoDBv2 => L<Paws::IoT::DynamoDBv2Action>

  Write to a DynamoDB table. This is a new version of the DynamoDB
action. It allows you to write each attribute in an MQTT message
payload into a separate DynamoDB column.


=head2 Elasticsearch => L<Paws::IoT::ElasticsearchAction>

  Write data to an Amazon Elasticsearch Service domain.


=head2 Firehose => L<Paws::IoT::FirehoseAction>

  Write to an Amazon Kinesis Firehose stream.


=head2 IotAnalytics => L<Paws::IoT::IotAnalyticsAction>

  Sends message data to an AWS IoT Analytics channel.


=head2 IotEvents => L<Paws::IoT::IotEventsAction>

  Sends an input to an AWS IoT Events detector.


=head2 Kinesis => L<Paws::IoT::KinesisAction>

  Write data to an Amazon Kinesis stream.


=head2 Lambda => L<Paws::IoT::LambdaAction>

  Invoke a Lambda function.


=head2 Republish => L<Paws::IoT::RepublishAction>

  Publish to another MQTT topic.


=head2 S3 => L<Paws::IoT::S3Action>

  Write to an Amazon S3 bucket.


=head2 Salesforce => L<Paws::IoT::SalesforceAction>

  Send a message to a Salesforce IoT Cloud Input Stream.


=head2 Sns => L<Paws::IoT::SnsAction>

  Publish to an Amazon SNS topic.


=head2 Sqs => L<Paws::IoT::SqsAction>

  Publish to an Amazon SQS queue.


=head2 StepFunctions => L<Paws::IoT::StepFunctionsAction>

  Starts execution of a Step Functions state machine.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

