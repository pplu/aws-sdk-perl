package Paws::SES::WorkmailAction;
  use Moose;
  has OrganizationArn => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::WorkmailAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::WorkmailAction object:

  $service_obj->Method(Att1 => { OrganizationArn => $value, ..., TopicArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::WorkmailAction object:

  $result = $service_obj->Method(...);
  $result->Att1->OrganizationArn

=head1 DESCRIPTION

When included in a receipt rule, this action calls Amazon WorkMail and,
optionally, publishes a notification to Amazon Simple Notification
Service (Amazon SNS). You will typically not use this action directly
because Amazon WorkMail adds the rule automatically during its setup
procedure.

For information using a receipt rule to call Amazon WorkMail, see the
Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-workmail.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> OrganizationArn => Str

  The ARN of the Amazon WorkMail organization. An example of an Amazon
WorkMail organization ARN is
C<arn:aws:workmail:us-west-2:123456789012:organization/m-68755160c4cb4e29a2b2f8fb58f359d7>.
For information about Amazon WorkMail organizations, see the Amazon
WorkMail Administrator Guide
(http://docs.aws.amazon.com/workmail/latest/adminguide/organizations_overview.html).


=head2 TopicArn => Str

  The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when
the WorkMail action is called. An example of an Amazon SNS topic ARN is
C<arn:aws:sns:us-west-2:123456789012:MyTopic>. For more information
about Amazon SNS topics, see the Amazon SNS Developer Guide
(http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

