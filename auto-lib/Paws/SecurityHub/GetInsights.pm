
package Paws::SecurityHub::GetInsights;
  use Moose;
  has InsightArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInsights');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/insights/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::GetInsightsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetInsights - Arguments for method GetInsights on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInsights on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method GetInsights.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInsights.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $GetInsightsResponse = $securityhub->GetInsights(
      InsightArns => [ 'MyNonEmptyString', ... ],    # OPTIONAL
      MaxResults  => 1,                              # OPTIONAL
      NextToken   => 'MyNextToken',                  # OPTIONAL
    );

    # Results:
    my $Insights  = $GetInsightsResponse->Insights;
    my $NextToken = $GetInsightsResponse->NextToken;

    # Returns a L<Paws::SecurityHub::GetInsightsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/GetInsights>

=head1 ATTRIBUTES


=head2 InsightArns => ArrayRef[Str|Undef]

The ARNs of the insights to describe.



=head2 MaxResults => Int

The maximum number of items to return in the response.



=head2 NextToken => Str

The token that is required for pagination. On your first call to the
C<GetInsights> operation, set the value of this parameter to C<NULL>.

For subsequent calls to the operation, to continue listing data, set
the value of this parameter to the value returned from the previous
response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInsights in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

