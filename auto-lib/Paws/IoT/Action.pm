package Paws::IoT::Action;
  use Moose;
  has dynamoDB => (is => 'ro', isa => 'Paws::IoT::DynamoDBAction');
  has firehose => (is => 'ro', isa => 'Paws::IoT::FirehoseAction');
  has kinesis => (is => 'ro', isa => 'Paws::IoT::KinesisAction');
  has lambda => (is => 'ro', isa => 'Paws::IoT::LambdaAction');
  has republish => (is => 'ro', isa => 'Paws::IoT::RepublishAction');
  has s3 => (is => 'ro', isa => 'Paws::IoT::S3Action');
  has sns => (is => 'ro', isa => 'Paws::IoT::SnsAction');
  has sqs => (is => 'ro', isa => 'Paws::IoT::SqsAction');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::Action

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::Action object:

  $service_obj->Method(Att1 => { dynamoDB => $value, ..., sqs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::Action object:

  $result = $service_obj->Method(...);
  $result->Att1->dynamoDB

=head1 ATTRIBUTES

=head2 dynamoDB => Paws::IoT::DynamoDBAction

  

Write to a DynamoDB table.










=head2 firehose => Paws::IoT::FirehoseAction

  

=head2 kinesis => Paws::IoT::KinesisAction

  

Write data to a Kinesis stream.










=head2 lambda => Paws::IoT::LambdaAction

  

Invoke a Lambda function.










=head2 republish => Paws::IoT::RepublishAction

  

Publish to another MQTT topic.










=head2 s3 => Paws::IoT::S3Action

  

Write to an S3 bucket.










=head2 sns => Paws::IoT::SnsAction

  

Publish to an SNS topic.










=head2 sqs => Paws::IoT::SqsAction

  

Publish to an SQS queue.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

