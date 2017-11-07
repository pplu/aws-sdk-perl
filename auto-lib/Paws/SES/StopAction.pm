package Paws::SES::StopAction;
  use Moose;
  has Scope => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::StopAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::StopAction object:

  $service_obj->Method(Att1 => { Scope => $value, ..., TopicArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::StopAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Scope

=head1 DESCRIPTION

When included in a receipt rule, this action terminates the evaluation
of the receipt rule set and, optionally, publishes a notification to
Amazon Simple Notification Service (Amazon SNS).

For information about setting a stop action in a receipt rule, see the
Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-stop.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> Scope => Str

  The name of the RuleSet that is being stopped.


=head2 TopicArn => Str

  The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when
the stop action is taken. An example of an Amazon SNS topic ARN is
C<arn:aws:sns:us-west-2:123456789012:MyTopic>. For more information
about Amazon SNS topics, see the Amazon SNS Developer Guide
(http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

