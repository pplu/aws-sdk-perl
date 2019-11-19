# Generated from json/callargs_class.tt

package Paws::CostExplorer::GetSavingsPlansPurchaseRecommendation;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CostExplorer::Types qw//;
  has LookbackPeriodInDays => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NextPageToken => (is => 'ro', isa => Str, predicate => 1);
  has PageSize => (is => 'ro', isa => Int, predicate => 1);
  has PaymentOption => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SavingsPlansType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TermInYears => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetSavingsPlansPurchaseRecommendation');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CostExplorer::GetSavingsPlansPurchaseRecommendationResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PaymentOption' => {
                                    'type' => 'Str'
                                  },
               'TermInYears' => {
                                  'type' => 'Str'
                                },
               'LookbackPeriodInDays' => {
                                           'type' => 'Str'
                                         },
               'PageSize' => {
                               'type' => 'Int'
                             },
               'SavingsPlansType' => {
                                       'type' => 'Str'
                                     },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  }
             },
  'IsRequired' => {
                    'SavingsPlansType' => 1,
                    'PaymentOption' => 1,
                    'TermInYears' => 1,
                    'LookbackPeriodInDays' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetSavingsPlansPurchaseRecommendation - Arguments for method GetSavingsPlansPurchaseRecommendation on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSavingsPlansPurchaseRecommendation on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetSavingsPlansPurchaseRecommendation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSavingsPlansPurchaseRecommendation.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetSavingsPlansPurchaseRecommendationResponse =
      $ce->GetSavingsPlansPurchaseRecommendation(
      LookbackPeriodInDays => 'SEVEN_DAYS',
      PaymentOption        => 'NO_UPFRONT',
      SavingsPlansType     => 'COMPUTE_SP',
      TermInYears          => 'ONE_YEAR',
      NextPageToken        => 'MyNextPageToken',    # OPTIONAL
      PageSize             => 1,                    # OPTIONAL
      );

    # Results:
    my $Metadata = $GetSavingsPlansPurchaseRecommendationResponse->Metadata;
    my $NextPageToken =
      $GetSavingsPlansPurchaseRecommendationResponse->NextPageToken;
    my $SavingsPlansPurchaseRecommendation =
      $GetSavingsPlansPurchaseRecommendationResponse
      ->SavingsPlansPurchaseRecommendation;

# Returns a L<Paws::CostExplorer::GetSavingsPlansPurchaseRecommendationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetSavingsPlansPurchaseRecommendation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LookbackPeriodInDays => Str

The lookback period used to generate the recommendation.

Valid values are: C<"SEVEN_DAYS">, C<"THIRTY_DAYS">, C<"SIXTY_DAYS">

=head2 NextPageToken => Str

The token to retrieve the next set of results. Amazon Web Services
provides the token when the response from a previous call has more
results than the maximum page size.



=head2 PageSize => Int

The number of recommendations that you want returned in a single
response object.



=head2 B<REQUIRED> PaymentOption => Str

The payment option used to generate these recommendations.

Valid values are: C<"NO_UPFRONT">, C<"PARTIAL_UPFRONT">, C<"ALL_UPFRONT">, C<"LIGHT_UTILIZATION">, C<"MEDIUM_UTILIZATION">, C<"HEAVY_UTILIZATION">

=head2 B<REQUIRED> SavingsPlansType => Str

The Savings Plans recommendation type requested.

Valid values are: C<"COMPUTE_SP">, C<"EC2_INSTANCE_SP">

=head2 B<REQUIRED> TermInYears => Str

The savings plan recommendation term used to generated these
recommendations.

Valid values are: C<"ONE_YEAR">, C<"THREE_YEARS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSavingsPlansPurchaseRecommendation in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

