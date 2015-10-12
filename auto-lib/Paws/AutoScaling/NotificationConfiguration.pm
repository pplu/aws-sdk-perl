package Paws::AutoScaling::NotificationConfiguration;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has NotificationType => (is => 'ro', isa => 'Str');
  has TopicARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::NotificationConfiguration

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::NotificationConfiguration object:

  $service_obj->Method(Att1 => { AutoScalingGroupName => $value, ..., TopicARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::NotificationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingGroupName

=head1 ATTRIBUTES

=head2 AutoScalingGroupName => Str

  The name of the group.

=head2 NotificationType => Str

  The types of events for an action to start.

=over

=item *

C<autoscaling:EC2_INSTANCE_LAUNCH>

=item *

C<autoscaling:EC2_INSTANCE_LAUNCH_ERROR>

=item *

C<autoscaling:EC2_INSTANCE_TERMINATE>

=item *

C<autoscaling:EC2_INSTANCE_TERMINATE_ERROR>

=item *

C<autoscaling:TEST_NOTIFICATION>

=back

=head2 TopicARN => Str

  The Amazon Resource Name (ARN) of the Amazon Simple Notification
Service (SNS) topic.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

