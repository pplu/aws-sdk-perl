
package Paws::AutoScaling::PutNotificationConfiguration;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has NotificationTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has TopicARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutNotificationConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::PutNotificationConfiguration - Arguments for method PutNotificationConfiguration on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutNotificationConfiguration on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method PutNotificationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutNotificationConfiguration.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To add an Auto Scaling notification
    # This example adds the specified notification to the specified Auto Scaling
    # group.
    $autoscaling->PutNotificationConfiguration(
      {
        'AutoScalingGroupName' => 'my-auto-scaling-group',
        'NotificationTypes'    => ['autoscaling:TEST_NOTIFICATION'],
        'TopicARN' => 'arn:aws:sns:us-west-2:123456789012:my-sns-topic'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/PutNotificationConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 B<REQUIRED> NotificationTypes => ArrayRef[Str|Undef]

The type of event that causes the notification to be sent. For more
information about notification types supported by Amazon EC2 Auto
Scaling, see DescribeAutoScalingNotificationTypes.



=head2 B<REQUIRED> TopicARN => Str

The Amazon Resource Name (ARN) of the Amazon Simple Notification
Service (Amazon SNS) topic.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutNotificationConfiguration in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

