package Paws::ComputeOptimizer::InstanceRecommendation;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest']);
  has CurrentInstanceType => (is => 'ro', isa => 'Str', request_name => 'currentInstanceType', traits => ['NameInRequest']);
  has Finding => (is => 'ro', isa => 'Str', request_name => 'finding', traits => ['NameInRequest']);
  has InstanceArn => (is => 'ro', isa => 'Str', request_name => 'instanceArn', traits => ['NameInRequest']);
  has InstanceName => (is => 'ro', isa => 'Str', request_name => 'instanceName', traits => ['NameInRequest']);
  has LastRefreshTimestamp => (is => 'ro', isa => 'Str', request_name => 'lastRefreshTimestamp', traits => ['NameInRequest']);
  has LookBackPeriodInDays => (is => 'ro', isa => 'Num', request_name => 'lookBackPeriodInDays', traits => ['NameInRequest']);
  has RecommendationOptions => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::InstanceRecommendationOption]', request_name => 'recommendationOptions', traits => ['NameInRequest']);
  has RecommendationSources => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::RecommendationSource]', request_name => 'recommendationSources', traits => ['NameInRequest']);
  has UtilizationMetrics => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::UtilizationMetric]', request_name => 'utilizationMetrics', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::InstanceRecommendation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComputeOptimizer::InstanceRecommendation object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., UtilizationMetrics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComputeOptimizer::InstanceRecommendation object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Describes an Amazon EC2 instance recommendation.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The AWS account ID of the instance recommendation.


=head2 CurrentInstanceType => Str

  The instance type of the current instance.


=head2 Finding => Str

  The finding classification for the instance.

Findings for instances include:

=over

=item *

B<C<Underprovisioned> >E<mdash>An instance is considered
under-provisioned when at least one specification of your instance,
such as CPU, memory, or network, does not meet the performance
requirements of your workload. Under-provisioned instances may lead to
poor application performance.

=item *

B<C<Overprovisioned> >E<mdash>An instance is considered
over-provisioned when at least one specification of your instance, such
as CPU, memory, or network, can be sized down while still meeting the
performance requirements of your workload, and no specification is
under-provisioned. Over-provisioned instances may lead to unnecessary
infrastructure cost.

=item *

B<C<Optimized> >E<mdash>An instance is considered optimized when all
specifications of your instance, such as CPU, memory, and network, meet
the performance requirements of your workload and is not over
provisioned. An optimized instance runs your workloads with optimal
performance and infrastructure cost. For optimized resources, AWS
Compute Optimizer might recommend a new generation instance type.

=back

The values that are returned might be C<UNDER_PROVISIONED>,
C<OVER_PROVISIONED>, or C<OPTIMIZED>.


=head2 InstanceArn => Str

  The Amazon Resource Name (ARN) of the current instance.


=head2 InstanceName => Str

  The name of the current instance.


=head2 LastRefreshTimestamp => Str

  The time stamp of when the instance recommendation was last refreshed.


=head2 LookBackPeriodInDays => Num

  The number of days for which utilization metrics were analyzed for the
instance.


=head2 RecommendationOptions => ArrayRef[L<Paws::ComputeOptimizer::InstanceRecommendationOption>]

  An array of objects that describe the recommendation options for the
instance.


=head2 RecommendationSources => ArrayRef[L<Paws::ComputeOptimizer::RecommendationSource>]

  An array of objects that describe the source resource of the
recommendation.


=head2 UtilizationMetrics => ArrayRef[L<Paws::ComputeOptimizer::UtilizationMetric>]

  An array of objects that describe the utilization metrics of the
instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

