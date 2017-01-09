
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





=head2 QueueConfiguration => L<Paws::S3::QueueConfigurationDeprecated>





=head2 TopicConfiguration => L<Paws::S3::TopicConfigurationDeprecated>






=cut

