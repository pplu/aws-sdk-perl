
package Paws::S3::NotificationConfiguration;
  use Moose;
  has LambdaFunctionConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::S3::LambdaFunctionConfiguration]', traits => ['NameInRequest'], request_name => 'CloudFunctionConfiguration');
  has QueueConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::S3::QueueConfiguration]', traits => ['NameInRequest'], request_name => 'QueueConfiguration');
  has TopicConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::S3::TopicConfiguration]', traits => ['NameInRequest'], request_name => 'TopicConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::NotificationConfiguration

=head1 ATTRIBUTES


=head2 LambdaFunctionConfigurations => ArrayRef[L<Paws::S3::LambdaFunctionConfiguration>]

Describes the AWS Lambda functions to invoke and the events for which
to invoke them.



=head2 QueueConfigurations => ArrayRef[L<Paws::S3::QueueConfiguration>]

The Amazon Simple Queue Service queues to publish messages to and the
events for which to publish messages.



=head2 TopicConfigurations => ArrayRef[L<Paws::S3::TopicConfiguration>]

The topic to which notifications are sent and the events for which
notifications are generated.




=cut

