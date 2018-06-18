
package Paws::Config::DescribeAggregateComplianceByConfigRules;
  use Moose;
  has ConfigurationAggregatorName => (is => 'ro', isa => 'Str', required => 1);
  has Filters => (is => 'ro', isa => 'Paws::Config::ConfigRuleComplianceFilters');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAggregateComplianceByConfigRules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribeAggregateComplianceByConfigRulesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeAggregateComplianceByConfigRules - Arguments for method DescribeAggregateComplianceByConfigRules on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAggregateComplianceByConfigRules on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DescribeAggregateComplianceByConfigRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAggregateComplianceByConfigRules.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DescribeAggregateComplianceByConfigRulesResponse =
      $config->DescribeAggregateComplianceByConfigRules(
      ConfigurationAggregatorName => 'MyConfigurationAggregatorName',
      Filters                     => {
        AccountId      => 'MyAccountId',    # OPTIONAL
        AwsRegion      => 'MyAwsRegion',    # min: 1, max: 64; OPTIONAL
        ComplianceType => 'COMPLIANT'
        , # values: COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA; OPTIONAL
        ConfigRuleName => 'MyConfigRuleName',    # min: 1, max: 64; OPTIONAL
      },    # OPTIONAL
      Limit     => 1,                # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $AggregateComplianceByConfigRules =
      $DescribeAggregateComplianceByConfigRulesResponse
      ->AggregateComplianceByConfigRules;
    my $NextToken =
      $DescribeAggregateComplianceByConfigRulesResponse->NextToken;

# Returns a L<Paws::Config::DescribeAggregateComplianceByConfigRulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DescribeAggregateComplianceByConfigRules>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationAggregatorName => Str

The name of the configuration aggregator.



=head2 Filters => L<Paws::Config::ConfigRuleComplianceFilters>

Filters the results by ConfigRuleComplianceFilters object.



=head2 Limit => Int

The maximum number of evaluation results returned on each page. The
default is maximum. If you specify 0, AWS Config uses the default.



=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAggregateComplianceByConfigRules in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

