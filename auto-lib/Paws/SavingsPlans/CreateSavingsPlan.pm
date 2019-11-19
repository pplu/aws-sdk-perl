
package Paws::SavingsPlans::CreateSavingsPlan;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SavingsPlans::Types qw/SavingsPlans_TagMap/;
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has Commitment => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SavingsPlanOfferingId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => SavingsPlans_TagMap, predicate => 1);
  has UpfrontPaymentAmount => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateSavingsPlan');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/CreateSavingsPlan');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SavingsPlans::CreateSavingsPlanResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Commitment' => 1,
                    'SavingsPlanOfferingId' => 1
                  },
  'NameInRequest' => {
                       'SavingsPlanOfferingId' => 'savingsPlanOfferingId',
                       'Commitment' => 'commitment',
                       'ClientToken' => 'clientToken',
                       'Tags' => 'tags',
                       'UpfrontPaymentAmount' => 'upfrontPaymentAmount'
                     },
  'types' => {
               'SavingsPlanOfferingId' => {
                                            'type' => 'Str'
                                          },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'Commitment' => {
                                 'type' => 'Str'
                               },
               'UpfrontPaymentAmount' => {
                                           'type' => 'Str'
                                         },
               'Tags' => {
                           'type' => 'SavingsPlans_TagMap',
                           'class' => 'Paws::SavingsPlans::TagMap'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::CreateSavingsPlan - Arguments for method CreateSavingsPlan on L<Paws::SavingsPlans>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSavingsPlan on the
L<AWS Savings Plans|Paws::SavingsPlans> service. Use the attributes of this class
as arguments to method CreateSavingsPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSavingsPlan.

=head1 SYNOPSIS

    my $savingsplans = Paws->service('SavingsPlans');
    my $CreateSavingsPlanResponse = $savingsplans->CreateSavingsPlan(
      Commitment            => 'MyAmount',
      SavingsPlanOfferingId => 'MySavingsPlanOfferingId',
      ClientToken           => 'MyClientToken',                    # OPTIONAL
      Tags                  => { 'MyTagKey' => 'MyTagValue', },    # OPTIONAL
      UpfrontPaymentAmount  => 'MyAmount',                         # OPTIONAL
    );

    # Results:
    my $SavingsPlanId = $CreateSavingsPlanResponse->SavingsPlanId;

    # Returns a L<Paws::SavingsPlans::CreateSavingsPlanResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/savingsplans/CreateSavingsPlan>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> Commitment => Str

The hourly commitment, in USD. This is a value between 0.001 and 1
million. You cannot specify more than three digits after the decimal
point.



=head2 B<REQUIRED> SavingsPlanOfferingId => Str

The ID of the offering.



=head2 Tags => SavingsPlans_TagMap

One or more tags.



=head2 UpfrontPaymentAmount => Str

The up-front payment amount. This is a whole number between 50 and 99
percent of the total value of the Savings Plan. This parameter is
supported only if the payment option is C<Partial Upfront>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSavingsPlan in L<Paws::SavingsPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

