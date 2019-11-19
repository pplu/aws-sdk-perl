
package Paws::S3::NotificationConfiguration;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3::Types qw/S3_LambdaFunctionConfiguration S3_QueueConfiguration S3_TopicConfiguration/;
  has LambdaFunctionConfigurations => (is => 'ro', isa => ArrayRef[S3_LambdaFunctionConfiguration]);
  has QueueConfigurations => (is => 'ro', isa => ArrayRef[S3_QueueConfiguration]);
  has TopicConfigurations => (is => 'ro', isa => ArrayRef[S3_TopicConfiguration]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'LambdaFunctionConfigurations' => 'CloudFunctionConfiguration',
                       'TopicConfigurations' => 'TopicConfiguration',
                       'QueueConfigurations' => 'QueueConfiguration'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LambdaFunctionConfigurations' => {
                                                   'type' => 'ArrayRef[S3_LambdaFunctionConfiguration]',
                                                   'class' => 'Paws::S3::LambdaFunctionConfiguration'
                                                 },
               'QueueConfigurations' => {
                                          'class' => 'Paws::S3::QueueConfiguration',
                                          'type' => 'ArrayRef[S3_QueueConfiguration]'
                                        },
               'TopicConfigurations' => {
                                          'class' => 'Paws::S3::TopicConfiguration',
                                          'type' => 'ArrayRef[S3_TopicConfiguration]'
                                        }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::NotificationConfiguration

=head1 ATTRIBUTES


=head2 LambdaFunctionConfigurations => ArrayRef[S3_LambdaFunctionConfiguration]

Describes the AWS Lambda functions to invoke and the events for which
to invoke them.



=head2 QueueConfigurations => ArrayRef[S3_QueueConfiguration]

The Amazon Simple Queue Service queues to publish messages to and the
events for which to publish messages.



=head2 TopicConfigurations => ArrayRef[S3_TopicConfiguration]

The topic to which notifications are sent and the events for which
notifications are generated.




=cut

