
package Paws::S3::NotificationConfiguration;
  use Moose;
  has LambdaFunctionConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::S3::LambdaFunctionConfiguration]', request_name => 'CloudFunctionConfiguration', traits => ['NameInRequest']);
  has QueueConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::S3::QueueConfiguration]', request_name => 'QueueConfiguration', traits => ['NameInRequest']);
  has TopicConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::S3::TopicConfiguration]', request_name => 'TopicConfiguration', traits => ['NameInRequest']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::NotificationConfiguration

=head1 ATTRIBUTES


=head2 LambdaFunctionConfigurations => ArrayRef[L<Paws::S3::LambdaFunctionConfiguration>]





=head2 QueueConfigurations => ArrayRef[L<Paws::S3::QueueConfiguration>]





=head2 TopicConfigurations => ArrayRef[L<Paws::S3::TopicConfiguration>]






=cut

