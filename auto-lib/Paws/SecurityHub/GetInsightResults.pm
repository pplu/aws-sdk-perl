
package Paws::SecurityHub::GetInsightResults;
  use Moose;
  has InsightArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InsightArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInsightResults');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/insights/results/{InsightArn+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::GetInsightResultsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetInsightResults - Arguments for method GetInsightResults on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInsightResults on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method GetInsightResults.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInsightResults.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $GetInsightResultsResponse = $securityhub->GetInsightResults(
      InsightArn => 'MyNonEmptyString',

    );

    # Results:
    my $InsightResults = $GetInsightResultsResponse->InsightResults;

    # Returns a L<Paws::SecurityHub::GetInsightResultsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/GetInsightResults>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InsightArn => Str

The ARN of the insight whose results you want to see.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInsightResults in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

