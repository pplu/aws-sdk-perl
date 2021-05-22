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

  
  sub DescribeRecommendationExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::DescribeRecommendationExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportAutoScalingGroupRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::ExportAutoScalingGroupRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportEBSVolumeRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::ExportEBSVolumeRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportEC2InstanceRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::ExportEC2InstanceRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportLambdaFunctionRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::ExportLambdaFunctionRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAutoScalingGroupRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetAutoScalingGroupRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEBSVolumeRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetEBSVolumeRecommendations', @_);
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
  sub GetLambdaFunctionRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetLambdaFunctionRecommendations', @_);
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
  


  sub operations { qw/DescribeRecommendationExportJobs ExportAutoScalingGroupRecommendations ExportEBSVolumeRecommendations ExportEC2InstanceRecommendations ExportLambdaFunctionRecommendations GetAutoScalingGroupRecommendations GetEBSVolumeRecommendations GetEC2InstanceRecommendations GetEC2RecommendationProjectedMetrics GetEnrollmentStatus GetLambdaFunctionRecommendations GetRecommendationSummaries UpdateEnrollmentStatus / }

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
utilization metrics of your AWS compute resources, such as EC2
instances, Auto Scaling groups, AWS Lambda functions, and Amazon EBS
volumes. It reports whether your resources are optimal, and generates
optimization recommendations to reduce the cost and improve the
performance of your workloads. Compute Optimizer also provides recent
utilization metric data, as well as projected utilization metric data
for the recommendations, which you can use to evaluate which
recommendation provides the best price-performance trade-off. The
analysis of your usage patterns can help you decide when to move or
resize your running resources, and still meet your performance and
capacity requirements. For more information about Compute Optimizer,
including the required permissions to use the service, see the AWS
Compute Optimizer User Guide
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01>


=head1 METHODS

=head2 DescribeRecommendationExportJobs

=over

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::JobFilter>]]

=item [JobIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::DescribeRecommendationExportJobs>

Returns: a L<Paws::ComputeOptimizer::DescribeRecommendationExportJobsResponse> instance

Describes recommendation export jobs created in the last seven days.

Use the C<ExportAutoScalingGroupRecommendations> or
C<ExportEC2InstanceRecommendations> actions to request an export of
your recommendations. Then use the C<DescribeRecommendationExportJobs>
action to view your export jobs.


=head2 ExportAutoScalingGroupRecommendations

=over

=item S3DestinationConfig => L<Paws::ComputeOptimizer::S3DestinationConfig>

=item [AccountIds => ArrayRef[Str|Undef]]

=item [FieldsToExport => ArrayRef[Str|Undef]]

=item [FileFormat => Str]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::Filter>]]

=item [IncludeMemberAccounts => Bool]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::ExportAutoScalingGroupRecommendations>

Returns: a L<Paws::ComputeOptimizer::ExportAutoScalingGroupRecommendationsResponse> instance

Exports optimization recommendations for Auto Scaling groups.

Recommendations are exported in a comma-separated values (.csv) file,
and its metadata in a JavaScript Object Notation (.json) file, to an
existing Amazon Simple Storage Service (Amazon S3) bucket that you
specify. For more information, see Exporting Recommendations
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
in the I<Compute Optimizer User Guide>.

You can have only one Auto Scaling group export job in progress per AWS
Region.


=head2 ExportEBSVolumeRecommendations

=over

=item S3DestinationConfig => L<Paws::ComputeOptimizer::S3DestinationConfig>

=item [AccountIds => ArrayRef[Str|Undef]]

=item [FieldsToExport => ArrayRef[Str|Undef]]

=item [FileFormat => Str]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::EBSFilter>]]

=item [IncludeMemberAccounts => Bool]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::ExportEBSVolumeRecommendations>

Returns: a L<Paws::ComputeOptimizer::ExportEBSVolumeRecommendationsResponse> instance

Exports optimization recommendations for Amazon EBS volumes.

Recommendations are exported in a comma-separated values (.csv) file,
and its metadata in a JavaScript Object Notation (.json) file, to an
existing Amazon Simple Storage Service (Amazon S3) bucket that you
specify. For more information, see Exporting Recommendations
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
in the I<Compute Optimizer User Guide>.

You can have only one Amazon EBS volume export job in progress per AWS
Region.


=head2 ExportEC2InstanceRecommendations

=over

=item S3DestinationConfig => L<Paws::ComputeOptimizer::S3DestinationConfig>

=item [AccountIds => ArrayRef[Str|Undef]]

=item [FieldsToExport => ArrayRef[Str|Undef]]

=item [FileFormat => Str]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::Filter>]]

=item [IncludeMemberAccounts => Bool]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::ExportEC2InstanceRecommendations>

Returns: a L<Paws::ComputeOptimizer::ExportEC2InstanceRecommendationsResponse> instance

Exports optimization recommendations for Amazon EC2 instances.

Recommendations are exported in a comma-separated values (.csv) file,
and its metadata in a JavaScript Object Notation (.json) file, to an
existing Amazon Simple Storage Service (Amazon S3) bucket that you
specify. For more information, see Exporting Recommendations
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
in the I<Compute Optimizer User Guide>.

You can have only one Amazon EC2 instance export job in progress per
AWS Region.


=head2 ExportLambdaFunctionRecommendations

=over

=item S3DestinationConfig => L<Paws::ComputeOptimizer::S3DestinationConfig>

=item [AccountIds => ArrayRef[Str|Undef]]

=item [FieldsToExport => ArrayRef[Str|Undef]]

=item [FileFormat => Str]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::LambdaFunctionRecommendationFilter>]]

=item [IncludeMemberAccounts => Bool]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::ExportLambdaFunctionRecommendations>

Returns: a L<Paws::ComputeOptimizer::ExportLambdaFunctionRecommendationsResponse> instance

Exports optimization recommendations for AWS Lambda functions.

Recommendations are exported in a comma-separated values (.csv) file,
and its metadata in a JavaScript Object Notation (.json) file, to an
existing Amazon Simple Storage Service (Amazon S3) bucket that you
specify. For more information, see Exporting Recommendations
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
in the I<Compute Optimizer User Guide>.

You can have only one Lambda function export job in progress per AWS
Region.


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

AWS Compute Optimizer generates recommendations for Amazon EC2 Auto
Scaling groups that meet a specific set of requirements. For more
information, see the Supported resources and requirements
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
in the I<AWS Compute Optimizer User Guide>.


=head2 GetEBSVolumeRecommendations

=over

=item [AccountIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::EBSFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VolumeArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetEBSVolumeRecommendations>

Returns: a L<Paws::ComputeOptimizer::GetEBSVolumeRecommendationsResponse> instance

Returns Amazon Elastic Block Store (Amazon EBS) volume recommendations.

AWS Compute Optimizer generates recommendations for Amazon EBS volumes
that meet a specific set of requirements. For more information, see the
Supported resources and requirements
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
in the I<AWS Compute Optimizer User Guide>.


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

AWS Compute Optimizer generates recommendations for Amazon Elastic
Compute Cloud (Amazon EC2) instances that meet a specific set of
requirements. For more information, see the Supported resources and
requirements
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
in the I<AWS Compute Optimizer User Guide>.


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

The C<Cpu> and C<Memory> metrics are the only projected utilization
metrics returned when you run this action. Additionally, the C<Memory>
metric is returned only for resources that have the unified CloudWatch
agent installed on them. For more information, see Enabling Memory
Utilization with the CloudWatch Agent
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent).


=head2 GetEnrollmentStatus






Each argument is described in detail in: L<Paws::ComputeOptimizer::GetEnrollmentStatus>

Returns: a L<Paws::ComputeOptimizer::GetEnrollmentStatusResponse> instance

Returns the enrollment (opt in) status of an account to the AWS Compute
Optimizer service.

If the account is the management account of an organization, this
action also confirms the enrollment status of member accounts within
the organization.


=head2 GetLambdaFunctionRecommendations

=over

=item [AccountIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::LambdaFunctionRecommendationFilter>]]

=item [FunctionArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetLambdaFunctionRecommendations>

Returns: a L<Paws::ComputeOptimizer::GetLambdaFunctionRecommendationsResponse> instance

Returns AWS Lambda function recommendations.

AWS Compute Optimizer generates recommendations for functions that meet
a specific set of requirements. For more information, see the Supported
resources and requirements
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
in the I<AWS Compute Optimizer User Guide>.


=head2 GetRecommendationSummaries

=over

=item [AccountIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetRecommendationSummaries>

Returns: a L<Paws::ComputeOptimizer::GetRecommendationSummariesResponse> instance

Returns the optimization findings for an account.

It returns the number of:

=over

=item *

Amazon EC2 instances in an account that are C<Underprovisioned>,
C<Overprovisioned>, or C<Optimized>.

=item *

Auto Scaling groups in an account that are C<NotOptimized>, or
C<Optimized>.

=item *

Amazon EBS volumes in an account that are C<NotOptimized>, or
C<Optimized>.

=item *

Lambda functions in an account that are C<NotOptimized>, or
C<Optimized>.

=back



=head2 UpdateEnrollmentStatus

=over

=item Status => Str

=item [IncludeMemberAccounts => Bool]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::UpdateEnrollmentStatus>

Returns: a L<Paws::ComputeOptimizer::UpdateEnrollmentStatusResponse> instance

Updates the enrollment (opt in and opt out) status of an account to the
AWS Compute Optimizer service.

If the account is a management account of an organization, this action
can also be used to enroll member accounts within the organization.

You must have the appropriate permissions to opt in to Compute
Optimizer, to view its recommendations, and to opt out. For more
information, see Controlling access with AWS Identity and Access
Management
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html)
in the I<AWS Compute Optimizer User Guide>.

When you opt in, Compute Optimizer automatically creates a
Service-Linked Role in your account to access its data. For more
information, see Using Service-Linked Roles for AWS Compute Optimizer
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/using-service-linked-roles.html)
in the I<AWS Compute Optimizer User Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

