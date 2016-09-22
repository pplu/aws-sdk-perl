package Paws::IoT::Action;
  use Moose;
  has CloudwatchAlarm => (is => 'ro', isa => 'Paws::IoT::CloudwatchAlarmAction', xmlname => 'cloudwatchAlarm', request_name => 'cloudwatchAlarm', traits => ['Unwrapped','NameInRequest']);
  has CloudwatchMetric => (is => 'ro', isa => 'Paws::IoT::CloudwatchMetricAction', xmlname => 'cloudwatchMetric', request_name => 'cloudwatchMetric', traits => ['Unwrapped','NameInRequest']);
  has DynamoDB => (is => 'ro', isa => 'Paws::IoT::DynamoDBAction', xmlname => 'dynamoDB', request_name => 'dynamoDB', traits => ['Unwrapped','NameInRequest']);
  has Elasticsearch => (is => 'ro', isa => 'Paws::IoT::ElasticsearchAction', xmlname => 'elasticsearch', request_name => 'elasticsearch', traits => ['Unwrapped','NameInRequest']);
  has Firehose => (is => 'ro', isa => 'Paws::IoT::FirehoseAction', xmlname => 'firehose', request_name => 'firehose', traits => ['Unwrapped','NameInRequest']);
  has Kinesis => (is => 'ro', isa => 'Paws::IoT::KinesisAction', xmlname => 'kinesis', request_name => 'kinesis', traits => ['Unwrapped','NameInRequest']);
  has Lambda => (is => 'ro', isa => 'Paws::IoT::LambdaAction', xmlname => 'lambda', request_name => 'lambda', traits => ['Unwrapped','NameInRequest']);
  has Republish => (is => 'ro', isa => 'Paws::IoT::RepublishAction', xmlname => 'republish', request_name => 'republish', traits => ['Unwrapped','NameInRequest']);
  has S3 => (is => 'ro', isa => 'Paws::IoT::S3Action', xmlname => 's3', request_name => 's3', traits => ['Unwrapped','NameInRequest']);
  has Sns => (is => 'ro', isa => 'Paws::IoT::SnsAction', xmlname => 'sns', request_name => 'sns', traits => ['Unwrapped','NameInRequest']);
  has Sqs => (is => 'ro', isa => 'Paws::IoT::SqsAction', xmlname => 'sqs', request_name => 'sqs', traits => ['Unwrapped','NameInRequest']);
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

  $service_obj->Method(Att1 => { CloudwatchAlarm => $value, ..., Sqs => $value  });

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


=head2 Elasticsearch => L<Paws::IoT::ElasticsearchAction>

  Write data to an Amazon Elasticsearch Service domain.


=head2 Firehose => L<Paws::IoT::FirehoseAction>

  Write to an Amazon Kinesis Firehose stream.


=head2 Kinesis => L<Paws::IoT::KinesisAction>

  Write data to an Amazon Kinesis stream.


=head2 Lambda => L<Paws::IoT::LambdaAction>

  Invoke a Lambda function.


=head2 Republish => L<Paws::IoT::RepublishAction>

  Publish to another MQTT topic.


=head2 S3 => L<Paws::IoT::S3Action>

  Write to an Amazon S3 bucket.


=head2 Sns => L<Paws::IoT::SnsAction>

  Publish to an Amazon SNS topic.


=head2 Sqs => L<Paws::IoT::SqsAction>

  Publish to an Amazon SQS queue.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

