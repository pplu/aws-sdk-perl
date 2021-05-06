package Paws::ComputeOptimizer;
  use Moose;
  sub service { 'compute-optimizer' }
  sub signing_name { 'compute-optimizer' }
  sub version { '2019-11-01' }
  sub target_prefix { 'ComputeOptimizerService' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub GetAutoScalingGroupRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetAutoScalingGroupRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEC2InstanceRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetEC2InstanceRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEC2RecommendationProjectedMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetEC2RecommendationProjectedMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnrollmentStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetEnrollmentStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecommendationSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetRecommendationSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnrollmentStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::UpdateEnrollmentStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/GetAutoScalingGroupRecommendations GetEC2InstanceRecommendations GetEC2RecommendationProjectedMetrics GetEnrollmentStatus GetRecommendationSummaries UpdateEnrollmentStatus / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer - Perl Interface to AWS AWS Compute Optimizer

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ComputeOptimizer');
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

AWS Compute Optimizer is a service that analyzes the configuration and
utilization metrics of your AWS resources, such as EC2 instances and
Auto Scaling groups. It reports whether your resources are optimal, and
generates optimization recommendations to reduce the cost and improve
the performance of your workloads. Compute Optimizer also provides
recent utilization metric data, as well as projected utilization metric
data for the recommendations, which you can use to evaluate which
recommendation provides the best price-performance trade-off. The
analysis of your usage patterns can help you decide when to move or
resize your running resources, and still meet your performance and
capacity requirements. For more information about Compute Optimizer,
see the AWS Compute Optimizer User Guide
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01>


=head1 METHODS

=head2 GetAutoScalingGroupRecommendations

=over

=item [AccountIds => ArrayRef[Str|Undef]]

=item [AutoScalingGroupArns => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetAutoScalingGroupRecommendations>

Returns: a L<Paws::ComputeOptimizer::GetAutoScalingGroupRecommendationsResponse> instance

Returns Auto Scaling group recommendations.

AWS Compute Optimizer currently generates recommendations for Auto
Scaling groups that are configured to run instances of the M, C, R, T,
and X instance families. The service does not generate recommendations
for Auto Scaling groups that have a scaling policy attached to them, or
that do not have the same values for desired, minimum, and maximum
capacity. In order for Compute Optimizer to analyze your Auto Scaling
groups, they must be of a fixed size. For more information, see the AWS
Compute Optimizer User Guide
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/what-is.html).


=head2 GetEC2InstanceRecommendations

=over

=item [AccountIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::Filter>]]

=item [InstanceArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetEC2InstanceRecommendations>

Returns: a L<Paws::ComputeOptimizer::GetEC2InstanceRecommendationsResponse> instance

Returns Amazon EC2 instance recommendations.

AWS Compute Optimizer currently generates recommendations for Amazon
Elastic Compute Cloud (Amazon EC2) and Amazon EC2 Auto Scaling. It
generates recommendations for M, C, R, T, and X instance families. For
more information, see the AWS Compute Optimizer User Guide
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/what-is.html).


=head2 GetEC2RecommendationProjectedMetrics

=over

=item EndTime => Str

=item InstanceArn => Str

=item Period => Int

=item StartTime => Str

=item Stat => Str


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetEC2RecommendationProjectedMetrics>

Returns: a L<Paws::ComputeOptimizer::GetEC2RecommendationProjectedMetricsResponse> instance

Returns the projected utilization metrics of Amazon EC2 instance
recommendations.


=head2 GetEnrollmentStatus






Each argument is described in detail in: L<Paws::ComputeOptimizer::GetEnrollmentStatus>

Returns: a L<Paws::ComputeOptimizer::GetEnrollmentStatusResponse> instance

Returns the enrollment (opt in) status of an account to the AWS Compute
Optimizer service.

If the account is a master account of an organization, this operation
also confirms the enrollment status of member accounts within the
organization.


=head2 GetRecommendationSummaries

=over

=item [AccountIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetRecommendationSummaries>

Returns: a L<Paws::ComputeOptimizer::GetRecommendationSummariesResponse> instance

Returns the optimization findings for an account.

For example, it returns the number of Amazon EC2 instances in an
account that are under-provisioned, over-provisioned, or optimized. It
also returns the number of Auto Scaling groups in an account that are
not optimized, or optimized.


=head2 UpdateEnrollmentStatus

=over

=item Status => Str

=item [IncludeMemberAccounts => Bool]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::UpdateEnrollmentStatus>

Returns: a L<Paws::ComputeOptimizer::UpdateEnrollmentStatusResponse> instance

Updates the enrollment (opt in) status of an account to the AWS Compute
Optimizer service.

If the account is a master account of an organization, this operation
can also enroll member accounts within the organization.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

