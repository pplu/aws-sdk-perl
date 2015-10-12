package Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes;
  use Moose;
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Int', required => 1);
  has id => (is => 'ro', isa => 'Str', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has startToCloseTimeout => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes object:

  $service_obj->Method(Att1 => { decisionTaskCompletedEventId => $value, ..., startToCloseTimeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->decisionTaskCompletedEventId

=head1 ATTRIBUTES

=head2 B<REQUIRED> decisionTaskCompletedEventId => Int

  The ID of the C<DecisionTaskCompleted> event for the decision that
resulted in the scheduling of this AWS Lambda function. This
information can be useful for diagnosing problems by tracing back the
chain of events leading up to this event.

=head2 B<REQUIRED> id => Str

  The unique Amazon SWF ID for the AWS Lambda task.

=head2 input => Str

  Input provided to the AWS Lambda function.

=head2 B<REQUIRED> name => Str

  The name of the scheduled AWS Lambda function.

=head2 startToCloseTimeout => Str

  The maximum time, in seconds, that the AWS Lambda function can take to
execute from start to close before it is marked as failed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

