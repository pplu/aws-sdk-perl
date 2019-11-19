
package Paws::SavingsPlans::DescribeSavingsPlans;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int Undef/;
  use Paws::SavingsPlans::Types qw/SavingsPlans_SavingsPlanFilter/;
  has Filters => (is => 'ro', isa => ArrayRef[SavingsPlans_SavingsPlanFilter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has SavingsPlanArns => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has SavingsPlanIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has States => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeSavingsPlans');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/DescribeSavingsPlans');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SavingsPlans::DescribeSavingsPlansResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SavingsPlanArns' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'States' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'Filters' => {
                              'class' => 'Paws::SavingsPlans::SavingsPlanFilter',
                              'type' => 'ArrayRef[SavingsPlans_SavingsPlanFilter]'
                            },
               'SavingsPlanIds' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   }
             },
  'NameInRequest' => {
                       'States' => 'states',
                       'NextToken' => 'nextToken',
                       'MaxResults' => 'maxResults',
                       'SavingsPlanIds' => 'savingsPlanIds',
                       'Filters' => 'filters',
                       'SavingsPlanArns' => 'savingsPlanArns'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::DescribeSavingsPlans - Arguments for method DescribeSavingsPlans on L<Paws::SavingsPlans>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSavingsPlans on the
L<AWS Savings Plans|Paws::SavingsPlans> service. Use the attributes of this class
as arguments to method DescribeSavingsPlans.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSavingsPlans.

=head1 SYNOPSIS

    my $savingsplans = Paws->service('SavingsPlans');
    my $DescribeSavingsPlansResponse = $savingsplans->DescribeSavingsPlans(
      Filters => [
        {
          Name => 'region'
          , # values: region, ec2-instance-family, commitment, upfront, term, savings-plan-type, payment-option, start, end; OPTIONAL
          Values => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],                                    # OPTIONAL
      MaxResults      => 1,                              # OPTIONAL
      NextToken       => 'MyPaginationToken',            # OPTIONAL
      SavingsPlanArns => [ 'MySavingsPlanArn', ... ],    # OPTIONAL
      SavingsPlanIds  => [ 'MySavingsPlanId', ... ],     # OPTIONAL
      States          => [
        'payment-pending',
        ...    # values: payment-pending, payment-failed, active, retired
      ],       # OPTIONAL
    );

    # Results:
    my $NextToken    = $DescribeSavingsPlansResponse->NextToken;
    my $SavingsPlans = $DescribeSavingsPlansResponse->SavingsPlans;

    # Returns a L<Paws::SavingsPlans::DescribeSavingsPlansResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/savingsplans/DescribeSavingsPlans>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[SavingsPlans_SavingsPlanFilter]

The filters.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
additional results, make another call with the returned token value.



=head2 NextToken => Str

The token for the next page of results.



=head2 SavingsPlanArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the Savings Plans.



=head2 SavingsPlanIds => ArrayRef[Str|Undef]

The IDs of the Savings Plans.



=head2 States => ArrayRef[Str|Undef]

The states.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSavingsPlans in L<Paws::SavingsPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

