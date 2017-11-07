package Paws::Config::DeliveryChannel;
  use Moose;
  has ConfigSnapshotDeliveryProperties => (is => 'ro', isa => 'Paws::Config::ConfigSnapshotDeliveryProperties', request_name => 'configSnapshotDeliveryProperties', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has S3BucketName => (is => 'ro', isa => 'Str', request_name => 's3BucketName', traits => ['NameInRequest']);
  has S3KeyPrefix => (is => 'ro', isa => 'Str', request_name => 's3KeyPrefix', traits => ['NameInRequest']);
  has SnsTopicARN => (is => 'ro', isa => 'Str', request_name => 'snsTopicARN', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DeliveryChannel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::DeliveryChannel object:

  $service_obj->Method(Att1 => { ConfigSnapshotDeliveryProperties => $value, ..., SnsTopicARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::DeliveryChannel object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigSnapshotDeliveryProperties

=head1 DESCRIPTION

The channel through which AWS Config delivers notifications and updated
configuration states.

=head1 ATTRIBUTES


=head2 ConfigSnapshotDeliveryProperties => L<Paws::Config::ConfigSnapshotDeliveryProperties>

  The options for how often AWS Config delivers configuration snapshots
to the Amazon S3 bucket.


=head2 Name => Str

  The name of the delivery channel. By default, AWS Config assigns the
name "default" when creating the delivery channel. To change the
delivery channel name, you must use the DeleteDeliveryChannel action to
delete your current delivery channel, and then you must use the
PutDeliveryChannel command to create a delivery channel that has the
desired name.


=head2 S3BucketName => Str

  The name of the Amazon S3 bucket to which AWS Config delivers
configuration snapshots and configuration history files.

If you specify a bucket that belongs to another AWS account, that
bucket must have policies that grant access permissions to AWS Config.
For more information, see Permissions for the Amazon S3 Bucket
(http://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html)
in the AWS Config Developer Guide.


=head2 S3KeyPrefix => Str

  The prefix for the specified Amazon S3 bucket.


=head2 SnsTopicARN => Str

  The Amazon Resource Name (ARN) of the Amazon SNS topic to which AWS
Config sends notifications about configuration changes.

If you choose a topic from another account, the topic must have
policies that grant access permissions to AWS Config. For more
information, see Permissions for the Amazon SNS Topic
(http://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html)
in the AWS Config Developer Guide.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

