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

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 AddHeaderAction => Paws::SES::AddHeaderAction

  

Adds a header to the received email.










=head2 BounceAction => Paws::SES::BounceAction

  

Rejects the received email by returning a bounce response to the sender
and, optionally, publishes a notification to Amazon Simple Notification
Service (Amazon SNS).










=head2 LambdaAction => Paws::SES::LambdaAction

  

Calls an AWS Lambda function, and optionally, publishes a notification
to Amazon SNS.










=head2 S3Action => Paws::SES::S3Action

  

Saves the received message to an Amazon Simple Storage Service (Amazon
S3) bucket and, optionally, publishes a notification to Amazon SNS.










=head2 SNSAction => Paws::SES::SNSAction

  

Publishes the email content within a notification to Amazon SNS.










=head2 StopAction => Paws::SES::StopAction

  

Terminates the evaluation of the receipt rule set and optionally
publishes a notification to Amazon SNS.










=head2 WorkmailAction => Paws::SES::WorkmailAction

  

Calls Amazon WorkMail and, optionally, publishes a notification to
Amazon SNS.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

