package Paws::Snowball::Notification;
  use Moose;
  has JobStatesToNotify => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NotifyAll => (is => 'ro', isa => 'Bool');
  has SnsTopicARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::Notification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::Notification object:

  $service_obj->Method(Att1 => { JobStatesToNotify => $value, ..., SnsTopicARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::Notification object:

  $result = $service_obj->Method(...);
  $result->Att1->JobStatesToNotify

=head1 DESCRIPTION

The Amazon Simple Notification Service (Amazon SNS) notification
settings associated with a specific job. The C<Notification> object is
returned as a part of the response syntax of the C<DescribeJob> action
in the C<JobMetadata> data type.

When the notification settings are defined during job creation, you can
choose to notify based on a specific set of job states using the
C<JobStatesToNotify> array of strings, or you can specify that you want
to have Amazon SNS notifications sent out for all job states with
C<NotifyAll> set to true.

=head1 ATTRIBUTES


=head2 JobStatesToNotify => ArrayRef[Str|Undef]

  The list of job states that will trigger a notification for this job.


=head2 NotifyAll => Bool

  Any change in job state will trigger a notification for this job.


=head2 SnsTopicARN => Str

  The new SNS C<TopicArn> that you want to associate with this job. You
can create Amazon Resource Names (ARNs) for topics by using the
CreateTopic
(http://docs.aws.amazon.com/sns/latest/api/API_CreateTopic.html) Amazon
SNS API action.

You can subscribe email addresses to an Amazon SNS topic through the
AWS Management Console, or by using the Subscribe
(http://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html) AWS
Simple Notification Service (SNS) API action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

