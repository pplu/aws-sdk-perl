
package Paws::S3::NotificationConfigurationDeprecated;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_QueueConfigurationDeprecated S3_CloudFunctionConfiguration S3_TopicConfigurationDeprecated/;
  has CloudFunctionConfiguration => (is => 'ro', isa => S3_CloudFunctionConfiguration);
  has QueueConfiguration => (is => 'ro', isa => S3_QueueConfigurationDeprecated);
  has TopicConfiguration => (is => 'ro', isa => S3_TopicConfigurationDeprecated);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CloudFunctionConfiguration' => {
                                                 'class' => 'Paws::S3::CloudFunctionConfiguration',
                                                 'type' => 'S3_CloudFunctionConfiguration'
                                               },
               'TopicConfiguration' => {
                                         'class' => 'Paws::S3::TopicConfigurationDeprecated',
                                         'type' => 'S3_TopicConfigurationDeprecated'
                                       },
               'QueueConfiguration' => {
                                         'class' => 'Paws::S3::QueueConfigurationDeprecated',
                                         'type' => 'S3_QueueConfigurationDeprecated'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
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





=head2 QueueConfiguration => S3_QueueConfigurationDeprecated





=head2 TopicConfiguration => S3_TopicConfigurationDeprecated






=cut

