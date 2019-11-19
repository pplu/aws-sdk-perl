# Generated from default/object.tt
package Paws::SES::ReceiptAction;
  use Moo;
  use Types::Standard qw//;
  use Paws::SES::Types qw/SES_LambdaAction SES_AddHeaderAction SES_S3Action SES_WorkmailAction SES_BounceAction SES_SNSAction SES_StopAction/;
  has AddHeaderAction => (is => 'ro', isa => SES_AddHeaderAction);
  has BounceAction => (is => 'ro', isa => SES_BounceAction);
  has LambdaAction => (is => 'ro', isa => SES_LambdaAction);
  has S3Action => (is => 'ro', isa => SES_S3Action);
  has SNSAction => (is => 'ro', isa => SES_SNSAction);
  has StopAction => (is => 'ro', isa => SES_StopAction);
  has WorkmailAction => (is => 'ro', isa => SES_WorkmailAction);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StopAction' => {
                                 'type' => 'SES_StopAction',
                                 'class' => 'Paws::SES::StopAction'
                               },
               'BounceAction' => {
                                   'type' => 'SES_BounceAction',
                                   'class' => 'Paws::SES::BounceAction'
                                 },
               'AddHeaderAction' => {
                                      'type' => 'SES_AddHeaderAction',
                                      'class' => 'Paws::SES::AddHeaderAction'
                                    },
               'SNSAction' => {
                                'type' => 'SES_SNSAction',
                                'class' => 'Paws::SES::SNSAction'
                              },
               'S3Action' => {
                               'class' => 'Paws::SES::S3Action',
                               'type' => 'SES_S3Action'
                             },
               'LambdaAction' => {
                                   'class' => 'Paws::SES::LambdaAction',
                                   'type' => 'SES_LambdaAction'
                                 },
               'WorkmailAction' => {
                                     'type' => 'SES_WorkmailAction',
                                     'class' => 'Paws::SES::WorkmailAction'
                                   }
             }
}
;
    return $Params_map;
  }


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
(https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html).

=head1 ATTRIBUTES


=head2 AddHeaderAction => SES_AddHeaderAction

  Adds a header to the received email.


=head2 BounceAction => SES_BounceAction

  Rejects the received email by returning a bounce response to the sender
and, optionally, publishes a notification to Amazon Simple Notification
Service (Amazon SNS).


=head2 LambdaAction => SES_LambdaAction

  Calls an AWS Lambda function, and optionally, publishes a notification
to Amazon SNS.


=head2 S3Action => SES_S3Action

  Saves the received message to an Amazon Simple Storage Service (Amazon
S3) bucket and, optionally, publishes a notification to Amazon SNS.


=head2 SNSAction => SES_SNSAction

  Publishes the email content within a notification to Amazon SNS.


=head2 StopAction => SES_StopAction

  Terminates the evaluation of the receipt rule set and optionally
publishes a notification to Amazon SNS.


=head2 WorkmailAction => SES_WorkmailAction

  Calls Amazon WorkMail and, optionally, publishes a notification to
Amazon Amazon SNS.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

