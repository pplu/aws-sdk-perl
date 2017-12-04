package Paws::SES::BounceAction;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has Sender => (is => 'ro', isa => 'Str', required => 1);
  has SmtpReplyCode => (is => 'ro', isa => 'Str', required => 1);
  has StatusCode => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::BounceAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::BounceAction object:

  $service_obj->Method(Att1 => { Message => $value, ..., TopicArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::BounceAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Message

=head1 DESCRIPTION

When included in a receipt rule, this action rejects the received email
by returning a bounce response to the sender and, optionally, publishes
a notification to Amazon Simple Notification Service (Amazon SNS).

For information about sending a bounce message in response to a
received email, see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-bounce.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> Message => Str

  Human-readable text to include in the bounce message.


=head2 B<REQUIRED> Sender => Str

  The email address of the sender of the bounced email. This is the
address from which the bounce message will be sent.


=head2 B<REQUIRED> SmtpReplyCode => Str

  The SMTP reply code, as defined by RFC 5321
(https://tools.ietf.org/html/rfc5321).


=head2 StatusCode => Str

  The SMTP enhanced status code, as defined by RFC 3463
(https://tools.ietf.org/html/rfc3463).


=head2 TopicArn => Str

  The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when
the bounce action is taken. An example of an Amazon SNS topic ARN is
C<arn:aws:sns:us-west-2:123456789012:MyTopic>. For more information
about Amazon SNS topics, see the Amazon SNS Developer Guide
(http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

