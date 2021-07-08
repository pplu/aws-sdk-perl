
package Paws::Macie2::GetUsageTotals;
  use Moose;
  has TimeRange => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'timeRange');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUsageTotals');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/usage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::GetUsageTotalsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetUsageTotals - Arguments for method GetUsageTotals on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUsageTotals on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method GetUsageTotals.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUsageTotals.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $GetUsageTotalsResponse = $macie2->GetUsageTotals(
      TimeRange => 'My__string',    # OPTIONAL
    );

    # Results:
    my $TimeRange   = $GetUsageTotalsResponse->TimeRange;
    my $UsageTotals = $GetUsageTotalsResponse->UsageTotals;

    # Returns a L<Paws::Macie2::GetUsageTotalsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/GetUsageTotals>

=head1 ATTRIBUTES


=head2 TimeRange => Str

The inclusive time period to retrieve the data for. Valid values are:
MONTH_TO_DATE, for the current calendar month to date; and,
PAST_30_DAYS, for the preceding 30 days. If you don't specify a value
for this parameter, Amazon Macie provides aggregated usage data for the
preceding 30 days.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUsageTotals in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

