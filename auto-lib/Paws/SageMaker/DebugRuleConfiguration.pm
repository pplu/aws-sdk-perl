package Paws::SageMaker::DebugRuleConfiguration;
  use Moose;
  has InstanceType => (is => 'ro', isa => 'Str');
  has LocalPath => (is => 'ro', isa => 'Str');
  has RuleConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has RuleEvaluatorImage => (is => 'ro', isa => 'Str', required => 1);
  has RuleParameters => (is => 'ro', isa => 'Paws::SageMaker::RuleParameters');
  has S3OutputPath => (is => 'ro', isa => 'Str');
  has VolumeSizeInGB => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DebugRuleConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::DebugRuleConfiguration object:

  $service_obj->Method(Att1 => { InstanceType => $value, ..., VolumeSizeInGB => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::DebugRuleConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceType

=head1 DESCRIPTION

Configuration information for debugging rules.

=head1 ATTRIBUTES


=head2 InstanceType => Str

  The instance type to deploy for a training job.


=head2 LocalPath => Str

  Path to local storage location for output of rules. Defaults to
C</opt/ml/processing/output/rule/>.


=head2 B<REQUIRED> RuleConfigurationName => Str

  The name of the rule configuration. It must be unique relative to other
rule configuration names.


=head2 B<REQUIRED> RuleEvaluatorImage => Str

  The Amazon Elastic Container (ECR) Image for the managed rule
evaluation.


=head2 RuleParameters => L<Paws::SageMaker::RuleParameters>

  Runtime configuration for rule container.


=head2 S3OutputPath => Str

  Path to Amazon S3 storage location for rules.


=head2 VolumeSizeInGB => Int

  The size, in GB, of the ML storage volume attached to the processing
instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

