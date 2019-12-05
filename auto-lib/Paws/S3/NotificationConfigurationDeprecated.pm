
package Paws::S3::NotificationConfigurationDeprecated;
  use Moose;
  has CloudFunctionConfiguration => (is => 'ro', isa => 'Paws::S3::CloudFunctionConfiguration');
  has QueueConfiguration => (is => 'ro', isa => 'Paws::S3::QueueConfigurationDeprecated');
  has TopicConfiguration => (is => 'ro', isa => 'Paws::S3::TopicConfigurationDeprecated');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::NotificationConfigurationDeprecated

=head1 ATTRIBUTES


=head2 CloudFunctionConfiguration => L<Paws::S3::CloudFunctionConfiguration>

Container for specifying the AWS Lambda notification configuration.



=head2 QueueConfiguration => L<Paws::S3::QueueConfigurationDeprecated>

This data type is deprecated. This data type specifies the
configuration for publishing messages to an Amazon Simple Queue Service
(Amazon SQS) queue when Amazon S3 detects specified events.



=head2 TopicConfiguration => L<Paws::S3::TopicConfigurationDeprecated>

This data type is deprecated. A container for specifying the
configuration for publication of messages to an Amazon Simple
Notification Service (Amazon SNS) topic when Amazon S3 detects
specified events.




=cut

