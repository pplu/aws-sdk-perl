package Paws::CloudWatch::InsightRuleContributor;
  use Moose;
  has ApproximateAggregateValue => (is => 'ro', isa => 'Num', required => 1);
  has Datapoints => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::InsightRuleContributorDatapoint]', required => 1);
  has Keys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::InsightRuleContributor

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::InsightRuleContributor object:

  $service_obj->Method(Att1 => { ApproximateAggregateValue => $value, ..., Keys => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::InsightRuleContributor object:

  $result = $service_obj->Method(...);
  $result->Att1->ApproximateAggregateValue

=head1 DESCRIPTION

One of the unique contributors found by a Contributor Insights rule. If
the rule contains multiple keys, then a unique contributor is a unique
combination of values from all the keys in the rule.

If the rule contains a single key, then each unique contributor is each
unique value for this key.

For more information, see GetInsightRuleReport.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApproximateAggregateValue => Num

  An approximation of the aggregate value that comes from this
contributor.


=head2 B<REQUIRED> Datapoints => ArrayRef[L<Paws::CloudWatch::InsightRuleContributorDatapoint>]

  An array of the data points where this contributor is present. Only the
data points when this contributor appeared are included in the array.


=head2 B<REQUIRED> Keys => ArrayRef[Str|Undef]

  One of the log entry field keywords that is used to define contributors
for this rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

