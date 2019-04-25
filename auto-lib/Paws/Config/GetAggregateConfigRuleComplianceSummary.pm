
package Paws::Config::GetAggregateConfigRuleComplianceSummary;
  use Moose;
  has ConfigurationAggregatorName => (is => 'ro', isa => 'Str', required => 1);
  has Filters => (is => 'ro', isa => 'Paws::Config::ConfigRuleComplianceSummaryFilters');
  has GroupByKey => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAggregateConfigRuleComplianceSummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::GetAggregateConfigRuleComplianceSummaryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetAggregateConfigRuleComplianceSummary - Arguments for method GetAggregateConfigRuleComplianceSummary on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAggregateConfigRuleComplianceSummary on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method GetAggregateConfigRuleComplianceSummary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAggregateConfigRuleComplianceSummary.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $GetAggregateConfigRuleComplianceSummaryResponse =
      $config->GetAggregateConfigRuleComplianceSummary(
      ConfigurationAggregatorName => 'MyConfigurationAggregatorName',
      Filters                     => {
        AccountId => 'MyAccountId',    # OPTIONAL
        AwsRegion => 'MyAwsRegion',    # min: 1, max: 64; OPTIONAL
      },    # OPTIONAL
      GroupByKey => 'ACCOUNT_ID',     # OPTIONAL
      Limit      => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $AggregateComplianceCounts =
      $GetAggregateConfigRuleComplianceSummaryResponse
      ->AggregateComplianceCounts;
    my $GroupByKey =
      $GetAggregateConfigRuleComplianceSummaryResponse->GroupByKey;
    my $NextToken = $GetAggregateConfigRuleComplianceSummaryResponse->NextToken;

# Returns a L<Paws::Config::GetAggregateConfigRuleComplianceSummaryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/GetAggregateConfigRuleComplianceSummary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationAggregatorName => Str

The name of the configuration aggregator.



=head2 Filters => L<Paws::Config::ConfigRuleComplianceSummaryFilters>

Filters the results based on the ConfigRuleComplianceSummaryFilters
object.



=head2 GroupByKey => Str

Groups the result based on ACCOUNT_ID or AWS_REGION.

Valid values are: C<"ACCOUNT_ID">, C<"AWS_REGION">

=head2 Limit => Int

The maximum number of evaluation results returned on each page. The
default is 1000. You cannot specify a number greater than 1000. If you
specify 0, AWS Config uses the default.



=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAggregateConfigRuleComplianceSummary in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

