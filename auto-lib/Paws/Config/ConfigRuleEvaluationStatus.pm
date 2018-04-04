package Paws::Config::ConfigRuleEvaluationStatus;
  use Moose;
  has ConfigRuleArn => (is => 'ro', isa => 'Str');
  has ConfigRuleId => (is => 'ro', isa => 'Str');
  has ConfigRuleName => (is => 'ro', isa => 'Str');
  has FirstActivatedTime => (is => 'ro', isa => 'Str');
  has FirstEvaluationStarted => (is => 'ro', isa => 'Bool');
  has LastErrorCode => (is => 'ro', isa => 'Str');
  has LastErrorMessage => (is => 'ro', isa => 'Str');
  has LastFailedEvaluationTime => (is => 'ro', isa => 'Str');
  has LastFailedInvocationTime => (is => 'ro', isa => 'Str');
  has LastSuccessfulEvaluationTime => (is => 'ro', isa => 'Str');
  has LastSuccessfulInvocationTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConfigRuleEvaluationStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConfigRuleEvaluationStatus object:

  $service_obj->Method(Att1 => { ConfigRuleArn => $value, ..., LastSuccessfulInvocationTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConfigRuleEvaluationStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigRuleArn

=head1 DESCRIPTION

Status information for your AWS managed Config rules. The status
includes information such as the last time the rule ran, the last time
it failed, and the related error for the last failure.

This action does not return status information about custom AWS Config
rules.

=head1 ATTRIBUTES


=head2 ConfigRuleArn => Str

  The Amazon Resource Name (ARN) of the AWS Config rule.


=head2 ConfigRuleId => Str

  The ID of the AWS Config rule.


=head2 ConfigRuleName => Str

  The name of the AWS Config rule.


=head2 FirstActivatedTime => Str

  The time that you first activated the AWS Config rule.


=head2 FirstEvaluationStarted => Bool

  Indicates whether AWS Config has evaluated your resources against the
rule at least once.

=over

=item *

C<true> - AWS Config has evaluated your AWS resources against the rule
at least once.

=item *

C<false> - AWS Config has not once finished evaluating your AWS
resources against the rule.

=back



=head2 LastErrorCode => Str

  The error code that AWS Config returned when the rule last failed.


=head2 LastErrorMessage => Str

  The error message that AWS Config returned when the rule last failed.


=head2 LastFailedEvaluationTime => Str

  The time that AWS Config last failed to evaluate your AWS resources
against the rule.


=head2 LastFailedInvocationTime => Str

  The time that AWS Config last failed to invoke the AWS Config rule to
evaluate your AWS resources.


=head2 LastSuccessfulEvaluationTime => Str

  The time that AWS Config last successfully evaluated your AWS resources
against the rule.


=head2 LastSuccessfulInvocationTime => Str

  The time that AWS Config last successfully invoked the AWS Config rule
to evaluate your AWS resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

