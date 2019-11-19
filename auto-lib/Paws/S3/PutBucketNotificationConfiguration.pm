
package Paws::S3::PutBucketNotificationConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_NotificationConfiguration/;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NotificationConfiguration => (is => 'ro', isa => S3_NotificationConfiguration, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutBucketNotificationConfiguration');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?notification');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'Bucket' => 'Bucket'
                  },
  'types' => {
               'Bucket' => {
                             'type' => 'Str'
                           },
               'NotificationConfiguration' => {
                                                'class' => 'Paws::S3::NotificationConfiguration',
                                                'type' => 'S3_NotificationConfiguration'
                                              }
             },
  'IsRequired' => {
                    'Bucket' => 1,
                    'NotificationConfiguration' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketNotificationConfiguration - Arguments for method PutBucketNotificationConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketNotificationConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketNotificationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketNotificationConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketNotificationConfiguration(
      Bucket                    => 'MyBucketName',
      NotificationConfiguration => {
        LambdaFunctionConfigurations => [
          {
            Events => [
              's3:ReducedRedundancyLostObject',
              ... # values: s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated, s3:ObjectRestore:Post, s3:ObjectRestore:Completed
            ],
            LambdaFunctionArn => 'MyLambdaFunctionArn',
            Filter            => {
              Key => {
                FilterRules => [
                  {
                    Name => 'prefix',    # values: prefix, suffix; OPTIONAL
                    Value => 'MyFilterRuleValue',    # OPTIONAL
                  },
                  ...
                ],                                   # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            Id => 'MyNotificationId',    # OPTIONAL
          },
          ...
        ],                               # OPTIONAL
        QueueConfigurations => [
          {
            Events => [
              's3:ReducedRedundancyLostObject',
              ... # values: s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated, s3:ObjectRestore:Post, s3:ObjectRestore:Completed
            ],
            QueueArn => 'MyQueueArn',
            Filter   => {
              Key => {
                FilterRules => [
                  {
                    Name => 'prefix',    # values: prefix, suffix; OPTIONAL
                    Value => 'MyFilterRuleValue',    # OPTIONAL
                  },
                  ...
                ],                                   # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            Id => 'MyNotificationId',    # OPTIONAL
          },
          ...
        ],                               # OPTIONAL
        TopicConfigurations => [
          {
            Events => [
              's3:ReducedRedundancyLostObject',
              ... # values: s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated, s3:ObjectRestore:Post, s3:ObjectRestore:Completed
            ],
            TopicArn => 'MyTopicArn',
            Filter   => {
              Key => {
                FilterRules => [
                  {
                    Name => 'prefix',    # values: prefix, suffix; OPTIONAL
                    Value => 'MyFilterRuleValue',    # OPTIONAL
                  },
                  ...
                ],                                   # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            Id => 'MyNotificationId',    # OPTIONAL
          },
          ...
        ],                               # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketNotificationConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket.



=head2 B<REQUIRED> NotificationConfiguration => S3_NotificationConfiguration






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketNotificationConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

