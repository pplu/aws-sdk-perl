package Paws::SES::LambdaAction;
  use Moose;
  has FunctionArn => (is => 'ro', isa => 'Str', required => 1);
  has InvocationType => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::LambdaAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::LambdaAction object:

  $service_obj->Method(Att1 => { FunctionArn => $value, ..., TopicArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::LambdaAction object:

  $result = $service_obj->Method(...);
  $result->Att1->FunctionArn

=head1 DESCRIPTION

When included in a receipt rule, this action calls an AWS Lambda
function and, optionally, publishes a notification to Amazon Simple
Notification Service (Amazon SNS).

To enable Amazon SES to call your AWS Lambda function or to publish to
an Amazon SNS topic of another account, Amazon SES must have permission
to access those resources. For information about giving permissions,
see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html).

For information about using AWS Lambda actions in receipt rules, see
the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-lambda.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionArn => Str

  The Amazon Resource Name (ARN) of the AWS Lambda function. An example
of an AWS Lambda function ARN is
C<arn:aws:lambda:us-west-2:account-id:function:MyFunction>. For more
information about AWS Lambda, see the AWS Lambda Developer Guide
(http://docs.aws.amazon.com/lambda/latest/dg/welcome.html).


=head2 InvocationType => Str

  The invocation type of the AWS Lambda function. An invocation type of
C<RequestResponse> means that the execution of the function will
immediately result in a response, and a value of C<Event> means that
the function will be invoked asynchronously. The default value is
C<Event>. For information about AWS Lambda invocation types, see the
AWS Lambda Developer Guide
(http://docs.aws.amazon.com/lambda/latest/dg/API_Invoke.html).

There is a 30-second timeout on C<RequestResponse> invocations. You
should use C<Event> invocation in most cases. Use C<RequestResponse>
only when you want to make a mail flow decision, such as whether to
stop the receipt rule or the receipt rule set.


=head2 TopicArn => Str

  The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when
the Lambda action is taken. An example of an Amazon SNS topic ARN is
C<arn:aws:sns:us-west-2:123456789012:MyTopic>. For more information
about Amazon SNS topics, see the Amazon SNS Developer Guide
(http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

