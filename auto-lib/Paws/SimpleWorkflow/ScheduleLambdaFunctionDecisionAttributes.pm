package Paws::SimpleWorkflow::ScheduleLambdaFunctionDecisionAttributes;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has Input => (is => 'ro', isa => 'Str', request_name => 'input', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has StartToCloseTimeout => (is => 'ro', isa => 'Str', request_name => 'startToCloseTimeout', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ScheduleLambdaFunctionDecisionAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ScheduleLambdaFunctionDecisionAttributes object:

  $service_obj->Method(Att1 => { Id => $value, ..., StartToCloseTimeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ScheduleLambdaFunctionDecisionAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Provides details of the C<ScheduleLambdaFunction> decision.

B<Access Control>

You can use IAM policies to control this decision's access to Amazon
SWF resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * Constrain the following parameters by using a C<Condition>
element with the appropriate keys.

=over

=item * C<activityType.name>: String constraint. The key is
C<swf:activityType.name>.

=item * C<activityType.version>: String constraint. The key is
C<swf:activityType.version>.

=item * C<taskList>: String constraint. The key is
C<swf:taskList.name>.

=back

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails. The associated event attribute's B<cause> parameter
will be set to OPERATION_NOT_PERMITTED. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

  B<Required.> The SWF C<id> of the AWS Lambda task.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not
contain the literal string quotarnquot.


=head2 Input => Str

  The input provided to the AWS Lambda function.


=head2 B<REQUIRED> Name => Str

  B<Required.> The name of the AWS Lambda function to invoke.


=head2 StartToCloseTimeout => Str

  If set, specifies the maximum duration the function may take to
execute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

