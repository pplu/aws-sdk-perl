
package Paws::Config::GetAggregateComplianceDetailsByConfigRule;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has AwsRegion => (is => 'ro', isa => 'Str', required => 1);
  has ComplianceType => (is => 'ro', isa => 'Str');
  has ConfigRuleName => (is => 'ro', isa => 'Str', required => 1);
  has ConfigurationAggregatorName => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAggregateComplianceDetailsByConfigRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::GetAggregateComplianceDetailsByConfigRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetAggregateComplianceDetailsByConfigRule - Arguments for method GetAggregateComplianceDetailsByConfigRule on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAggregateComplianceDetailsByConfigRule on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method GetAggregateComplianceDetailsByConfigRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAggregateComplianceDetailsByConfigRule.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $GetAggregateComplianceDetailsByConfigRuleResponse =
      $config->GetAggregateComplianceDetailsByConfigRule(
      AccountId                   => 'MyAccountId',
      AwsRegion                   => 'MyAwsRegion',
      ConfigRuleName              => 'MyConfigRuleName',
      ConfigurationAggregatorName => 'MyConfigurationAggregatorName',
      ComplianceType              => 'COMPLIANT',                     # OPTIONAL
      Limit                       => 1,                               # OPTIONAL
      NextToken                   => 'MyNextToken',                   # OPTIONAL
      );

    # Results:
    my $AggregateEvaluationResults =
      $GetAggregateComplianceDetailsByConfigRuleResponse
      ->AggregateEvaluationResults;
    my $NextToken =
      $GetAggregateComplianceDetailsByConfigRuleResponse->NextToken;

# Returns a L<Paws::Config::GetAggregateComplianceDetailsByConfigRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/GetAggregateComplianceDetailsByConfigRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The 12-digit account ID of the source account.



=head2 B<REQUIRED> AwsRegion => Str

The source region from where the data is aggregated.



=head2 ComplianceType => Str

The resource compliance status.

For the C<GetAggregateComplianceDetailsByConfigRuleRequest> data type,
AWS Config supports only the C<COMPLIANT> and C<NON_COMPLIANT>. AWS
Config does not support the C<NOT_APPLICABLE> and C<INSUFFICIENT_DATA>
values.

Valid values are: C<"COMPLIANT">, C<"NON_COMPLIANT">, C<"NOT_APPLICABLE">, C<"INSUFFICIENT_DATA">

=head2 B<REQUIRED> ConfigRuleName => Str

The name of the AWS Config rule for which you want compliance
information.



=head2 B<REQUIRED> ConfigurationAggregatorName => Str

The name of the configuration aggregator.



=head2 Limit => Int

The maximum number of evaluation results returned on each page. The
default is 50. You cannot specify a number greater than 100. If you
specify 0, AWS Config uses the default.



=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAggregateComplianceDetailsByConfigRule in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

