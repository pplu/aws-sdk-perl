package Paws::Chime::MeetingNotificationConfiguration;
  use Moose;
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SqsQueueArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::MeetingNotificationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::MeetingNotificationConfiguration object:

  $service_obj->Method(Att1 => { SnsTopicArn => $value, ..., SqsQueueArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::MeetingNotificationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->SnsTopicArn

=head1 DESCRIPTION

The configuration for resource targets to receive notifications when
Amazon Chime SDK meeting and attendee events occur.

=head1 ATTRIBUTES


=head2 SnsTopicArn => Str

  The SNS topic ARN.


=head2 SqsQueueArn => Str

  The SQS queue ARN.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

