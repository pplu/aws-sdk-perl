package Paws::SES::ReceiptAction;
  use Moose;
  has AddHeaderAction => (is => 'ro', isa => 'Paws::SES::AddHeaderAction');
  has BounceAction => (is => 'ro', isa => 'Paws::SES::BounceAction');
  has LambdaAction => (is => 'ro', isa => 'Paws::SES::LambdaAction');
  has S3Action => (is => 'ro', isa => 'Paws::SES::S3Action');
  has SNSAction => (is => 'ro', isa => 'Paws::SES::SNSAction');
  has StopAction => (is => 'ro', isa => 'Paws::SES::StopAction');
  has WorkmailAction => (is => 'ro', isa => 'Paws::SES::WorkmailAction');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ReceiptAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::ReceiptAction object:

  $service_obj->Method(Att1 => { AddHeaderAction => $value, ..., WorkmailAction => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::ReceiptAction object:

  $result = $service_obj->Method(...);
  $result->Att1->AddHeaderAction

=head1 DESCRIPTION

An action that Amazon SES can take when it receives an email on behalf
of one or more email addresses or domains that you own. An instance of
this data type can represent only one action.

For information about setting up receipt rules, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html).

=head1 ATTRIBUTES


=head2 AddHeaderAction => L<Paws::SES::AddHeaderAction>

  Adds a header to the received email.


=head2 BounceAction => L<Paws::SES::BounceAction>

  Rejects the received email by returning a bounce response to the sender
and, optionally, publishes a notification to Amazon Simple Notification
Service (Amazon SNS).


=head2 LambdaAction => L<Paws::SES::LambdaAction>

  Calls an AWS Lambda function, and optionally, publishes a notification
to Amazon SNS.


=head2 S3Action => L<Paws::SES::S3Action>

  Saves the received message to an Amazon Simple Storage Service (Amazon
S3) bucket and, optionally, publishes a notification to Amazon SNS.


=head2 SNSAction => L<Paws::SES::SNSAction>

  Publishes the email content within a notification to Amazon SNS.


=head2 StopAction => L<Paws::SES::StopAction>

  Terminates the evaluation of the receipt rule set and optionally
publishes a notification to Amazon SNS.


=head2 WorkmailAction => L<Paws::SES::WorkmailAction>

  Calls Amazon WorkMail and, optionally, publishes a notification to
Amazon Amazon SNS.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

