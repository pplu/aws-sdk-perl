package Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes;
  use Moose;
  has DecisionTaskCompletedEventId => (is => 'ro', isa => 'Int', request_name => 'decisionTaskCompletedEventId', traits => ['NameInRequest'], required => 1);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has Input => (is => 'ro', isa => 'Str', request_name => 'input', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has StartToCloseTimeout => (is => 'ro', isa => 'Str', request_name => 'startToCloseTimeout', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes object:

  $service_obj->Method(Att1 => { DecisionTaskCompletedEventId => $value, ..., StartToCloseTimeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->DecisionTaskCompletedEventId

=head1 DESCRIPTION

Provides details for the C<LambdaFunctionScheduled> event.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DecisionTaskCompletedEventId => Int

  The ID of the C<DecisionTaskCompleted> event for the decision that
resulted in the scheduling of this AWS Lambda function. This
information can be useful for diagnosing problems by tracing back the
chain of events leading up to this event.


=head2 B<REQUIRED> Id => Str

  The unique Amazon SWF ID for the AWS Lambda task.


=head2 Input => Str

  Input provided to the AWS Lambda function.


=head2 B<REQUIRED> Name => Str

  The name of the scheduled AWS Lambda function.


=head2 StartToCloseTimeout => Str

  The maximum time, in seconds, that the AWS Lambda function can take to
execute from start to close before it is marked as failed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

