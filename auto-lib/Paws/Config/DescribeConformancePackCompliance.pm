
package Paws::Config::DescribeConformancePackCompliance;
  use Moose;
  has ConformancePackName => (is => 'ro', isa => 'Str', required => 1);
  has Filters => (is => 'ro', isa => 'Paws::Config::ConformancePackComplianceFilters');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConformancePackCompliance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribeConformancePackComplianceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConformancePackCompliance - Arguments for method DescribeConformancePackCompliance on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConformancePackCompliance on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DescribeConformancePackCompliance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConformancePackCompliance.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DescribeConformancePackComplianceResponse =
      $config->DescribeConformancePackCompliance(
      ConformancePackName => 'MyConformancePackName',
      Filters             => {
        ComplianceType =>
          'COMPLIANT',    # values: COMPLIANT, NON_COMPLIANT; OPTIONAL
        ConfigRuleNames => [
          'MyStringWithCharLimit64', ...    # min: 1, max: 64
        ],                                  # max: 10; OPTIONAL
      },    # OPTIONAL
      Limit     => 1,                # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $ConformancePackName =
      $DescribeConformancePackComplianceResponse->ConformancePackName;
    my $ConformancePackRuleComplianceList =
      $DescribeConformancePackComplianceResponse
      ->ConformancePackRuleComplianceList;
    my $NextToken = $DescribeConformancePackComplianceResponse->NextToken;

  # Returns a L<Paws::Config::DescribeConformancePackComplianceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DescribeConformancePackCompliance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConformancePackName => Str

Name of the conformance pack.



=head2 Filters => L<Paws::Config::ConformancePackComplianceFilters>

A C<ConformancePackComplianceFilters> object.



=head2 Limit => Int

The maximum number of AWS Config rules within a conformance pack are
returned on each page.



=head2 NextToken => Str

The C<nextToken> string returned in a previous request that you use to
request the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConformancePackCompliance in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

