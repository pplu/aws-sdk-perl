package Paws::SageMaker::DebugRuleEvaluationStatus;
  use Moose;
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has RuleConfigurationName => (is => 'ro', isa => 'Str');
  has RuleEvaluationJobArn => (is => 'ro', isa => 'Str');
  has RuleEvaluationStatus => (is => 'ro', isa => 'Str');
  has StatusDetails => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DebugRuleEvaluationStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::DebugRuleEvaluationStatus object:

  $service_obj->Method(Att1 => { LastModifiedTime => $value, ..., StatusDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::DebugRuleEvaluationStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->LastModifiedTime

=head1 DESCRIPTION

Information about the status of the rule evaluation.

=head1 ATTRIBUTES


=head2 LastModifiedTime => Str

  Timestamp when the rule evaluation status was last modified.


=head2 RuleConfigurationName => Str

  The name of the rule configuration


=head2 RuleEvaluationJobArn => Str

  The Amazon Resource Name (ARN) of the rule evaluation job.


=head2 RuleEvaluationStatus => Str

  Status of the rule evaluation.


=head2 StatusDetails => Str

  Details from the rule evaluation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

