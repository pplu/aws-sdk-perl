package Paws::Config::DeliveryChannel;
  use Moose;
  has configSnapshotDeliveryProperties => (is => 'ro', isa => 'Paws::Config::ConfigSnapshotDeliveryProperties');
  has name => (is => 'ro', isa => 'Str');
  has s3BucketName => (is => 'ro', isa => 'Str');
  has s3KeyPrefix => (is => 'ro', isa => 'Str');
  has snsTopicARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DeliveryChannel

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::DeliveryChannel object:

  $service_obj->Method(Att1 => { configSnapshotDeliveryProperties => $value, ..., snsTopicARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::DeliveryChannel object:

  $result = $service_obj->Method(...);
  $result->Att1->configSnapshotDeliveryProperties

=head1 ATTRIBUTES

=head2 configSnapshotDeliveryProperties => Paws::Config::ConfigSnapshotDeliveryProperties

  

=head2 name => Str

  

The name of the delivery channel. By default, AWS Config automatically
assigns the name "default" when creating the delivery channel. You
cannot change the assigned name.










=head2 s3BucketName => Str

  

The name of the Amazon S3 bucket used to store configuration history
for the delivery channel.










=head2 s3KeyPrefix => Str

  

The prefix for the specified Amazon S3 bucket.










=head2 snsTopicARN => Str

  

The Amazon Resource Name (ARN) of the SNS topic that AWS Config
delivers notifications to.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

