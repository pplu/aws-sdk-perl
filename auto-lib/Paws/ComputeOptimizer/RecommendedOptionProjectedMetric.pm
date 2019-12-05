package Paws::ComputeOptimizer::RecommendedOptionProjectedMetric;
  use Moose;
  has ProjectedMetrics => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::ProjectedMetric]', request_name => 'projectedMetrics', traits => ['NameInRequest']);
  has Rank => (is => 'ro', isa => 'Int', request_name => 'rank', traits => ['NameInRequest']);
  has RecommendedInstanceType => (is => 'ro', isa => 'Str', request_name => 'recommendedInstanceType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::RecommendedOptionProjectedMetric

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComputeOptimizer::RecommendedOptionProjectedMetric object:

  $service_obj->Method(Att1 => { ProjectedMetrics => $value, ..., RecommendedInstanceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComputeOptimizer::RecommendedOptionProjectedMetric object:

  $result = $service_obj->Method(...);
  $result->Att1->ProjectedMetrics

=head1 DESCRIPTION

Describes a projected utilization metric of a recommendation option.

=head1 ATTRIBUTES


=head2 ProjectedMetrics => ArrayRef[L<Paws::ComputeOptimizer::ProjectedMetric>]

  An array of objects that describe a projected utilization metric.


=head2 Rank => Int

  The rank of the recommendation option projected metric.

The top recommendation option is ranked as C<1>.

The projected metric rank correlates to the recommendation option rank.
For example, the projected metric ranked as C<1> is related to the
recommendation option that is also ranked as C<1> in the same response.


=head2 RecommendedInstanceType => Str

  The recommended instance type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

