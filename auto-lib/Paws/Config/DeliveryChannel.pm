package Paws::Config::DeliveryChannel;
  use Moose;
  has ConfigSnapshotDeliveryProperties => (is => 'ro', isa => 'Paws::Config::ConfigSnapshotDeliveryProperties', xmlname => 'configSnapshotDeliveryProperties', request_name => 'configSnapshotDeliveryProperties', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
  has S3BucketName => (is => 'ro', isa => 'Str', xmlname => 's3BucketName', request_name => 's3BucketName', traits => ['Unwrapped','NameInRequest']);
  has S3KeyPrefix => (is => 'ro', isa => 'Str', xmlname => 's3KeyPrefix', request_name => 's3KeyPrefix', traits => ['Unwrapped','NameInRequest']);
  has SnsTopicARN => (is => 'ro', isa => 'Str', xmlname => 'snsTopicARN', request_name => 'snsTopicARN', traits => ['Unwrapped','NameInRequest']);
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

A logical container used for storing the configuration changes of an
AWS resource.

=head1 ATTRIBUTES


=head2 ConfigSnapshotDeliveryProperties => L<Paws::Config::ConfigSnapshotDeliveryProperties>

  


=head2 Name => Str

  The name of the delivery channel. By default, AWS Config automatically
assigns the name "default" when creating the delivery channel. You
cannot change the assigned name.


=head2 S3BucketName => Str

  The name of the Amazon S3 bucket used to store configuration history
for the delivery channel.


=head2 S3KeyPrefix => Str

  The prefix for the specified Amazon S3 bucket.


=head2 SnsTopicARN => Str

  The Amazon Resource Name (ARN) of the SNS topic that AWS Config
delivers notifications to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

