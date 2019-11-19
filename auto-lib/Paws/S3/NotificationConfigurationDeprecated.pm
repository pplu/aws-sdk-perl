
package Paws::S3::NotificationConfigurationDeprecated;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_TopicConfigurationDeprecated S3_CloudFunctionConfiguration S3_QueueConfigurationDeprecated/;
  has CloudFunctionConfiguration => (is => 'ro', isa => S3_CloudFunctionConfiguration);
  has QueueConfiguration => (is => 'ro', isa => S3_QueueConfigurationDeprecated);
  has TopicConfiguration => (is => 'ro', isa => S3_TopicConfigurationDeprecated);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TopicConfiguration' => {
                                         'class' => 'Paws::S3::TopicConfigurationDeprecated',
                                         'type' => 'S3_TopicConfigurationDeprecated'
                                       },
               'CloudFunctionConfiguration' => {
                                                 'type' => 'S3_CloudFunctionConfiguration',
                                                 'class' => 'Paws::S3::CloudFunctionConfiguration'
                                               },
               'QueueConfiguration' => {
                                         'class' => 'Paws::S3::QueueConfigurationDeprecated',
                                         'type' => 'S3_QueueConfigurationDeprecated'
                                       }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::NotificationConfigurationDeprecated

=head1 ATTRIBUTES


=head2 CloudFunctionConfiguration => S3_CloudFunctionConfiguration

Container for specifying the AWS Lambda notification configuration.



=head2 QueueConfiguration => S3_QueueConfigurationDeprecated

This data type is deprecated. This data type specifies the
configuration for publishing messages to an Amazon Simple Queue Service
(Amazon SQS) queue when Amazon S3 detects specified events.



=head2 TopicConfiguration => S3_TopicConfigurationDeprecated

This data type is deperecated. A container for specifying the
configuration for publication of messages to an Amazon Simple
Notification Service (Amazon SNS) topic when Amazon S3 detects
specified events.




=cut

