
package Paws::Config::GetConformancePackComplianceDetails;
  use Moose;
  has ConformancePackName => (is => 'ro', isa => 'Str', required => 1);
  has Filters => (is => 'ro', isa => 'Paws::Config::ConformancePackEvaluationFilters');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConformancePackComplianceDetails');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::GetConformancePackComplianceDetailsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetConformancePackComplianceDetails - Arguments for method GetConformancePackComplianceDetails on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConformancePackComplianceDetails on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method GetConformancePackComplianceDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConformancePackComplianceDetails.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $GetConformancePackComplianceDetailsResponse =
      $config->GetConformancePackComplianceDetails(
      ConformancePackName => 'MyConformancePackName',
      Filters             => {
        ComplianceType =>
          'COMPLIANT',    # values: COMPLIANT, NON_COMPLIANT; OPTIONAL
        ConfigRuleNames => [
          'MyStringWithCharLimit64', ...    # min: 1, max: 64
        ],                                  # max: 10; OPTIONAL
        ResourceIds => [
          'MyStringWithCharLimit256', ...    # min: 1, max: 256
        ],                                   # max: 5; OPTIONAL
        ResourceType => 'MyStringWithCharLimit256',    # min: 1, max: 256
      },    # OPTIONAL
      Limit     => 1,                # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $ConformancePackName =
      $GetConformancePackComplianceDetailsResponse->ConformancePackName;
    my $ConformancePackRuleEvaluationResults =
      $GetConformancePackComplianceDetailsResponse
      ->ConformancePackRuleEvaluationResults;
    my $NextToken = $GetConformancePackComplianceDetailsResponse->NextToken;

# Returns a L<Paws::Config::GetConformancePackComplianceDetailsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/GetConformancePackComplianceDetails>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConformancePackName => Str

Name of the conformance pack.



=head2 Filters => L<Paws::Config::ConformancePackEvaluationFilters>

A C<ConformancePackEvaluationFilters> object.



=head2 Limit => Int

The maximum number of evaluation results returned on each page. If you
do no specify a number, AWS Config uses the default. The default is
100.



=head2 NextToken => Str

The C<nextToken> string returned in a previous request that you use to
request the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConformancePackComplianceDetails in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

