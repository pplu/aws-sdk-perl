package Paws::Config::ConfigRule;
  use Moose;
  has ConfigRuleArn => (is => 'ro', isa => 'Str');
  has ConfigRuleId => (is => 'ro', isa => 'Str');
  has ConfigRuleName => (is => 'ro', isa => 'Str');
  has ConfigRuleState => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has InputParameters => (is => 'ro', isa => 'Str');
  has MaximumExecutionFrequency => (is => 'ro', isa => 'Str');
  has Scope => (is => 'ro', isa => 'Paws::Config::Scope');
  has Source => (is => 'ro', isa => 'Paws::Config::Source', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConfigRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConfigRule object:

  $service_obj->Method(Att1 => { ConfigRuleArn => $value, ..., Source => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConfigRule object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigRuleArn

=head1 DESCRIPTION

An AWS Config rule represents an AWS Lambda function that you create
for a custom rule or a predefined function for an AWS managed rule. The
function evaluates configuration items to assess whether your AWS
resources comply with your desired configurations. This function can
run when AWS Config detects a configuration change to an AWS resource
and at a periodic frequency that you choose (for example, every 24
hours).

You can use the AWS CLI and AWS SDKs if you want to create a rule that
triggers evaluations for your resources when AWS Config delivers the
configuration snapshot. For more information, see
ConfigSnapshotDeliveryProperties.

For more information about developing and using AWS Config rules, see
Evaluating AWS Resource Configurations with AWS Config
(http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html)
in the I<AWS Config Developer Guide>.

=head1 ATTRIBUTES


=head2 ConfigRuleArn => Str

  The Amazon Resource Name (ARN) of the AWS Config rule.


=head2 ConfigRuleId => Str

  The ID of the AWS Config rule.


=head2 ConfigRuleName => Str

  The name that you assign to the AWS Config rule. The name is required
if you are adding a new rule.


=head2 ConfigRuleState => Str

  Indicates whether the AWS Config rule is active or is currently being
deleted by AWS Config. It can also indicate the evaluation status for
the AWS Config rule.

AWS Config sets the state of the rule to C<EVALUATING> temporarily
after you use the C<StartConfigRulesEvaluation> request to evaluate
your resources against the AWS Config rule.

AWS Config sets the state of the rule to C<DELETING_RESULTS>
temporarily after you use the C<DeleteEvaluationResults> request to
delete the current evaluation results for the AWS Config rule.

AWS Config temporarily sets the state of a rule to C<DELETING> after
you use the C<DeleteConfigRule> request to delete the rule. After AWS
Config deletes the rule, the rule and all of its evaluations are erased
and are no longer available.


=head2 CreatedBy => Str

  Service principal name of the service that created the rule.

The field is populated only if the service linked rule is created by a
service. The field is empty if you create your own rule.


=head2 Description => Str

  The description that you provide for the AWS Config rule.


=head2 InputParameters => Str

  A string, in JSON format, that is passed to the AWS Config rule Lambda
function.


=head2 MaximumExecutionFrequency => Str

  The maximum frequency with which AWS Config runs evaluations for a
rule. You can specify a value for C<MaximumExecutionFrequency> when:

=over

=item *

You are using an AWS managed rule that is triggered at a periodic
frequency.

=item *

Your custom rule is triggered when AWS Config delivers the
configuration snapshot. For more information, see
ConfigSnapshotDeliveryProperties.

=back

By default, rules with a periodic trigger are evaluated every 24 hours.
To change the frequency, specify a valid value for the
C<MaximumExecutionFrequency> parameter.


=head2 Scope => L<Paws::Config::Scope>

  Defines which resources can trigger an evaluation for the rule. The
scope can include one or more resource types, a combination of one
resource type and one resource ID, or a combination of a tag key and
value. Specify a scope to constrain the resources that can trigger an
evaluation for the rule. If you do not specify a scope, evaluations are
triggered when any resource in the recording group changes.


=head2 B<REQUIRED> Source => L<Paws::Config::Source>

  Provides the rule owner (AWS or customer), the rule identifier, and the
notifications that cause the function to evaluate your AWS resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

