package Paws::SimpleWorkflow::ScheduleLambdaFunctionFailedEventAttributes;
  use Moose;
  has Cause => (is => 'ro', isa => 'Str', request_name => 'cause', traits => ['NameInRequest'], required => 1);
  has DecisionTaskCompletedEventId => (is => 'ro', isa => 'Int', request_name => 'decisionTaskCompletedEventId', traits => ['NameInRequest'], required => 1);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ScheduleLambdaFunctionFailedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ScheduleLambdaFunctionFailedEventAttributes object:

  $service_obj->Method(Att1 => { Cause => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ScheduleLambdaFunctionFailedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Cause

=head1 DESCRIPTION

Provides the details of the C<ScheduleLambdaFunctionFailed> event. It
isn't set for other event types.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cause => Str

  The cause of the failure. To help diagnose issues, use this information
to trace back the chain of events leading up to this event.

If C<cause> is set to C<OPERATION_NOT_PERMITTED>, the decision failed
because it lacked sufficient permissions. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 B<REQUIRED> DecisionTaskCompletedEventId => Int

  The ID of the C<LambdaFunctionCompleted> event corresponding to the
decision that resulted in scheduling this Lambda task. To help diagnose
issues, use this information to trace back the chain of events leading
up to this event.


=head2 B<REQUIRED> Id => Str

  The ID provided in the C<ScheduleLambdaFunction> decision that failed.


=head2 B<REQUIRED> Name => Str

  The name of the Lambda function.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

