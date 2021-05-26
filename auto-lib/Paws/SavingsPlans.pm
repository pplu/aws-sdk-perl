package Paws::SavingsPlans;
  use Moose;
  sub service { 'savingsplans' }
  sub signing_name { 'savingsplans' }
  sub version { '2019-06-28' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateSavingsPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SavingsPlans::CreateSavingsPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSavingsPlanRates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SavingsPlans::DescribeSavingsPlanRates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSavingsPlans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SavingsPlans::DescribeSavingsPlans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSavingsPlansOfferingRates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SavingsPlans::DescribeSavingsPlansOfferingRates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSavingsPlansOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SavingsPlans::DescribeSavingsPlansOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SavingsPlans::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SavingsPlans::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SavingsPlans::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateSavingsPlan DescribeSavingsPlanRates DescribeSavingsPlans DescribeSavingsPlansOfferingRates DescribeSavingsPlansOfferings ListTagsForResource TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans - Perl Interface to AWS AWS Savings Plans

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SavingsPlans');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Savings Plans are a pricing model that offer significant savings on AWS
usage (for example, on Amazon EC2 instances). You commit to a
consistent amount of usage, in USD per hour, for a term of 1 or 3
years, and receive a lower price for that usage. For more information,
see the AWS Savings Plans User Guide
(https://docs.aws.amazon.com/savingsplans/latest/userguide/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28>


=head1 METHODS

=head2 CreateSavingsPlan

=over

=item Commitment => Str

=item SavingsPlanOfferingId => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::SavingsPlans::TagMap>]

=item [UpfrontPaymentAmount => Str]


=back

Each argument is described in detail in: L<Paws::SavingsPlans::CreateSavingsPlan>

Returns: a L<Paws::SavingsPlans::CreateSavingsPlanResponse> instance

Creates a Savings Plan.


=head2 DescribeSavingsPlanRates

=over

=item SavingsPlanId => Str

=item [Filters => ArrayRef[L<Paws::SavingsPlans::SavingsPlanRateFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SavingsPlans::DescribeSavingsPlanRates>

Returns: a L<Paws::SavingsPlans::DescribeSavingsPlanRatesResponse> instance

Describes the specified Savings Plans rates.


=head2 DescribeSavingsPlans

=over

=item [Filters => ArrayRef[L<Paws::SavingsPlans::SavingsPlanFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SavingsPlanArns => ArrayRef[Str|Undef]]

=item [SavingsPlanIds => ArrayRef[Str|Undef]]

=item [States => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SavingsPlans::DescribeSavingsPlans>

Returns: a L<Paws::SavingsPlans::DescribeSavingsPlansResponse> instance

Describes the specified Savings Plans.


=head2 DescribeSavingsPlansOfferingRates

=over

=item [Filters => ArrayRef[L<Paws::SavingsPlans::SavingsPlanOfferingRateFilterElement>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Operations => ArrayRef[Str|Undef]]

=item [Products => ArrayRef[Str|Undef]]

=item [SavingsPlanOfferingIds => ArrayRef[Str|Undef]]

=item [SavingsPlanPaymentOptions => ArrayRef[Str|Undef]]

=item [SavingsPlanTypes => ArrayRef[Str|Undef]]

=item [ServiceCodes => ArrayRef[Str|Undef]]

=item [UsageTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SavingsPlans::DescribeSavingsPlansOfferingRates>

Returns: a L<Paws::SavingsPlans::DescribeSavingsPlansOfferingRatesResponse> instance

Describes the specified Savings Plans offering rates.


=head2 DescribeSavingsPlansOfferings

=over

=item [Currencies => ArrayRef[Str|Undef]]

=item [Descriptions => ArrayRef[Str|Undef]]

=item [Durations => ArrayRef[Int]]

=item [Filters => ArrayRef[L<Paws::SavingsPlans::SavingsPlanOfferingFilterElement>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OfferingIds => ArrayRef[Str|Undef]]

=item [Operations => ArrayRef[Str|Undef]]

=item [PaymentOptions => ArrayRef[Str|Undef]]

=item [PlanTypes => ArrayRef[Str|Undef]]

=item [ProductType => Str]

=item [ServiceCodes => ArrayRef[Str|Undef]]

=item [UsageTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SavingsPlans::DescribeSavingsPlansOfferings>

Returns: a L<Paws::SavingsPlans::DescribeSavingsPlansOfferingsResponse> instance

Describes the specified Savings Plans offerings.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::SavingsPlans::ListTagsForResource>

Returns: a L<Paws::SavingsPlans::ListTagsForResourceResponse> instance

Lists the tags for the specified resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::SavingsPlans::TagMap>


=back

Each argument is described in detail in: L<Paws::SavingsPlans::TagResource>

Returns: a L<Paws::SavingsPlans::TagResourceResponse> instance

Adds the specified tags to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SavingsPlans::UntagResource>

Returns: a L<Paws::SavingsPlans::UntagResourceResponse> instance

Removes the specified tags from the specified resource.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

