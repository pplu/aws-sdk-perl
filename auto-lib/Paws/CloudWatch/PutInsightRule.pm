
package Paws::CloudWatch::PutInsightRule;
  use Moose;
  has RuleDefinition => (is => 'ro', isa => 'Str', required => 1);
  has RuleName => (is => 'ro', isa => 'Str', required => 1);
  has RuleState => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutInsightRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::PutInsightRuleOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutInsightRuleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::PutInsightRule - Arguments for method PutInsightRule on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutInsightRule on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method PutInsightRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutInsightRule.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $PutInsightRuleOutput = $monitoring->PutInsightRule(
      RuleDefinition => 'MyInsightRuleDefinition',
      RuleName       => 'MyInsightRuleName',
      RuleState      => 'MyInsightRuleState',        # OPTIONAL
      Tags           => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/PutInsightRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleDefinition => Str

The definition of the rule, as a JSON object. For details on the valid
syntax, see Contributor Insights Rule Syntax
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html).



=head2 B<REQUIRED> RuleName => Str

A unique name for the rule.



=head2 RuleState => Str

The state of the rule. Valid values are ENABLED and DISABLED.



=head2 Tags => ArrayRef[L<Paws::CloudWatch::Tag>]

A list of key-value pairs to associate with the Contributor Insights
rule. You can associate as many as 50 tags with a rule.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions, by granting a user permission to
access or change only the resources that have certain tag values.

To be able to associate tags with a rule, you must have the
C<cloudwatch:TagResource> permission in addition to the
C<cloudwatch:PutInsightRule> permission.

If you are using this operation to update an existing Contributor
Insights rule, any tags you specify in this parameter are ignored. To
change the tags of an existing rule, use TagResource
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutInsightRule in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

