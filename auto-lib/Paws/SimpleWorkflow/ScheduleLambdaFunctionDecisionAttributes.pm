package Paws::SimpleWorkflow::ScheduleLambdaFunctionDecisionAttributes;
  use Moose;
  has id => (is => 'ro', isa => 'Str', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has startToCloseTimeout => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ScheduleLambdaFunctionDecisionAttributes

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ScheduleLambdaFunctionDecisionAttributes object:

  $service_obj->Method(Att1 => { id => $value, ..., startToCloseTimeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ScheduleLambdaFunctionDecisionAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->id

=head1 ATTRIBUTES

=head2 B<REQUIRED> id => Str

  B<Required.> The SWF C<id> of the AWS Lambda task.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not
contain the literal string quotarnquot.

=head2 input => Str

  The input provided to the AWS Lambda function.

=head2 B<REQUIRED> name => Str

  B<Required.> The name of the AWS Lambda function to invoke.

=head2 startToCloseTimeout => Str

  If set, specifies the maximum duration the function may take to
execute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

