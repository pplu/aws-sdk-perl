package Paws::CloudWatch::InsightRuleContributorDatapoint;
  use Moose;
  has ApproximateValue => (is => 'ro', isa => 'Num', required => 1);
  has Timestamp => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::InsightRuleContributorDatapoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::InsightRuleContributorDatapoint object:

  $service_obj->Method(Att1 => { ApproximateValue => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::InsightRuleContributorDatapoint object:

  $result = $service_obj->Method(...);
  $result->Att1->ApproximateValue

=head1 DESCRIPTION

One data point related to one contributor.

For more information, see GetInsightRuleReport and
InsightRuleContributor.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApproximateValue => Num

  The approximate value that this contributor added during this
timestamp.


=head2 B<REQUIRED> Timestamp => Str

  The timestamp of the data point.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

