package Paws::ApplicationInsights;
  use Moose;
  sub service { 'applicationinsights' }
  sub signing_name { 'applicationinsights' }
  sub version { '2018-11-25' }
  sub target_prefix { 'EC2WindowsBarleyService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::CreateComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLogPattern {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::CreateLogPattern', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::DeleteComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLogPattern {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::DeleteLogPattern', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::DescribeApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::DescribeComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeComponentConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::DescribeComponentConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeComponentConfigurationRecommendation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::DescribeComponentConfigurationRecommendation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLogPattern {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::DescribeLogPattern', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeObservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::DescribeObservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProblem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::DescribeProblem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProblemObservations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::DescribeProblemObservations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComponents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::ListComponents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLogPatterns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::ListLogPatterns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLogPatternSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::ListLogPatternSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProblems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::ListProblems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::UpdateComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateComponentConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::UpdateComponentConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLogPattern {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationInsights::UpdateLogPattern', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateApplication CreateComponent CreateLogPattern DeleteApplication DeleteComponent DeleteLogPattern DescribeApplication DescribeComponent DescribeComponentConfiguration DescribeComponentConfigurationRecommendation DescribeLogPattern DescribeObservation DescribeProblem DescribeProblemObservations ListApplications ListComponents ListLogPatterns ListLogPatternSets ListProblems ListTagsForResource TagResource UntagResource UpdateApplication UpdateComponent UpdateComponentConfiguration UpdateLogPattern / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights - Perl Interface to AWS Amazon CloudWatch Application Insights

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ApplicationInsights');
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

Amazon CloudWatch Application Insights for .NET and SQL Server

Amazon CloudWatch Application Insights for .NET and SQL Server is a
service that helps you detect common problems with your .NET and SQL
Server-based applications. It enables you to pinpoint the source of
issues in your applications (built with technologies such as Microsoft
IIS, .NET, and Microsoft SQL Server), by providing key insights into
detected problems.

After you onboard your application, CloudWatch Application Insights for
.NET and SQL Server identifies, recommends, and sets up metrics and
logs. It continuously analyzes and correlates your metrics and logs for
unusual behavior to surface actionable problems with your application.
For example, if your application is slow and unresponsive and leading
to HTTP 500 errors in your Application Load Balancer (ALB), Application
Insights informs you that a memory pressure problem with your SQL
Server database is occurring. It bases this analysis on impactful
metrics and log errors.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights-2018-11-25>


=head1 METHODS

=head2 CreateApplication

=over

=item ResourceGroupName => Str

=item [OpsCenterEnabled => Bool]

=item [OpsItemSNSTopicArn => Str]

=item [Tags => ArrayRef[L<Paws::ApplicationInsights::Tag>]]


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::CreateApplication>

Returns: a L<Paws::ApplicationInsights::CreateApplicationResponse> instance

Adds an application that is created from a resource group.


=head2 CreateComponent

=over

=item ComponentName => Str

=item ResourceGroupName => Str

=item ResourceList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::CreateComponent>

Returns: a L<Paws::ApplicationInsights::CreateComponentResponse> instance

Creates a custom component by grouping similar standalone instances to
monitor.


=head2 CreateLogPattern

=over

=item Pattern => Str

=item PatternName => Str

=item PatternSetName => Str

=item Rank => Int

=item ResourceGroupName => Str


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::CreateLogPattern>

Returns: a L<Paws::ApplicationInsights::CreateLogPatternResponse> instance

Adds an log pattern to a C<LogPatternSet>.


=head2 DeleteApplication

=over

=item ResourceGroupName => Str


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::DeleteApplication>

Returns: a L<Paws::ApplicationInsights::DeleteApplicationResponse> instance

Removes the specified application from monitoring. Does not delete the
application.


=head2 DeleteComponent

=over

=item ComponentName => Str

=item ResourceGroupName => Str


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::DeleteComponent>

Returns: a L<Paws::ApplicationInsights::DeleteComponentResponse> instance

Ungroups a custom component. When you ungroup custom components, all
applicable monitors that are set up for the component are removed and
the instances revert to their standalone status.


=head2 DeleteLogPattern

=over

=item PatternName => Str

=item PatternSetName => Str

=item ResourceGroupName => Str


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::DeleteLogPattern>

Returns: a L<Paws::ApplicationInsights::DeleteLogPatternResponse> instance

Removes the specified log pattern from a C<LogPatternSet>.


=head2 DescribeApplication

=over

=item ResourceGroupName => Str


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::DescribeApplication>

Returns: a L<Paws::ApplicationInsights::DescribeApplicationResponse> instance

Describes the application.


=head2 DescribeComponent

=over

=item ComponentName => Str

=item ResourceGroupName => Str


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::DescribeComponent>

Returns: a L<Paws::ApplicationInsights::DescribeComponentResponse> instance

Describes a component and lists the resources that are grouped together
in a component.


=head2 DescribeComponentConfiguration

=over

=item ComponentName => Str

=item ResourceGroupName => Str


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::DescribeComponentConfiguration>

Returns: a L<Paws::ApplicationInsights::DescribeComponentConfigurationResponse> instance

Describes the monitoring configuration of the component.


=head2 DescribeComponentConfigurationRecommendation

=over

=item ComponentName => Str

=item ResourceGroupName => Str

=item Tier => Str


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::DescribeComponentConfigurationRecommendation>

Returns: a L<Paws::ApplicationInsights::DescribeComponentConfigurationRecommendationResponse> instance

Describes the recommended monitoring configuration of the component.


=head2 DescribeLogPattern

=over

=item PatternName => Str

=item PatternSetName => Str

=item ResourceGroupName => Str


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::DescribeLogPattern>

Returns: a L<Paws::ApplicationInsights::DescribeLogPatternResponse> instance

Describe a specific log pattern from a C<LogPatternSet>.


=head2 DescribeObservation

=over

=item ObservationId => Str


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::DescribeObservation>

Returns: a L<Paws::ApplicationInsights::DescribeObservationResponse> instance

Describes an anomaly or error with the application.


=head2 DescribeProblem

=over

=item ProblemId => Str


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::DescribeProblem>

Returns: a L<Paws::ApplicationInsights::DescribeProblemResponse> instance

Describes an application problem.


=head2 DescribeProblemObservations

=over

=item ProblemId => Str


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::DescribeProblemObservations>

Returns: a L<Paws::ApplicationInsights::DescribeProblemObservationsResponse> instance

Describes the anomalies or errors associated with the problem.


=head2 ListApplications

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::ListApplications>

Returns: a L<Paws::ApplicationInsights::ListApplicationsResponse> instance

Lists the IDs of the applications that you are monitoring.


=head2 ListComponents

=over

=item ResourceGroupName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::ListComponents>

Returns: a L<Paws::ApplicationInsights::ListComponentsResponse> instance

Lists the auto-grouped, standalone, and custom components of the
application.


=head2 ListLogPatterns

=over

=item ResourceGroupName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PatternSetName => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::ListLogPatterns>

Returns: a L<Paws::ApplicationInsights::ListLogPatternsResponse> instance

Lists the log patterns in the specific log C<LogPatternSet>.


=head2 ListLogPatternSets

=over

=item ResourceGroupName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::ListLogPatternSets>

Returns: a L<Paws::ApplicationInsights::ListLogPatternSetsResponse> instance

Lists the log pattern sets in the specific application.


=head2 ListProblems

=over

=item [EndTime => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceGroupName => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::ListProblems>

Returns: a L<Paws::ApplicationInsights::ListProblemsResponse> instance

Lists the problems with your application.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::ListTagsForResource>

Returns: a L<Paws::ApplicationInsights::ListTagsForResourceResponse> instance

Retrieve a list of the tags (keys and values) that are associated with
a specified application. A I<tag> is a label that you optionally define
and associate with an application. Each tag consists of a required
I<tag key> and an optional associated I<tag value>. A tag key is a
general label that acts as a category for more specific tag values. A
tag value acts as a descriptor within a tag key.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::ApplicationInsights::Tag>]


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::TagResource>

Returns: a L<Paws::ApplicationInsights::TagResourceResponse> instance

Add one or more tags (keys and values) to a specified application. A
I<tag> is a label that you optionally define and associate with an
application. Tags can help you categorize and manage application in
different ways, such as by purpose, owner, environment, or other
criteria.

Each tag consists of a required I<tag key> and an associated I<tag
value>, both of which you define. A tag key is a general label that
acts as a category for more specific tag values. A tag value acts as a
descriptor within a tag key.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::UntagResource>

Returns: a L<Paws::ApplicationInsights::UntagResourceResponse> instance

Remove one or more tags (keys and values) from a specified application.


=head2 UpdateApplication

=over

=item ResourceGroupName => Str

=item [OpsCenterEnabled => Bool]

=item [OpsItemSNSTopicArn => Str]

=item [RemoveSNSTopic => Bool]


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::UpdateApplication>

Returns: a L<Paws::ApplicationInsights::UpdateApplicationResponse> instance

Updates the application.


=head2 UpdateComponent

=over

=item ComponentName => Str

=item ResourceGroupName => Str

=item [NewComponentName => Str]

=item [ResourceList => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::UpdateComponent>

Returns: a L<Paws::ApplicationInsights::UpdateComponentResponse> instance

Updates the custom component name and/or the list of resources that
make up the component.


=head2 UpdateComponentConfiguration

=over

=item ComponentName => Str

=item ResourceGroupName => Str

=item [ComponentConfiguration => Str]

=item [Monitor => Bool]

=item [Tier => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::UpdateComponentConfiguration>

Returns: a L<Paws::ApplicationInsights::UpdateComponentConfigurationResponse> instance

Updates the monitoring configurations for the component. The
configuration input parameter is an escaped JSON of the configuration
and should match the schema of what is returned by
C<DescribeComponentConfigurationRecommendation>.


=head2 UpdateLogPattern

=over

=item PatternName => Str

=item PatternSetName => Str

=item ResourceGroupName => Str

=item [Pattern => Str]

=item [Rank => Int]


=back

Each argument is described in detail in: L<Paws::ApplicationInsights::UpdateLogPattern>

Returns: a L<Paws::ApplicationInsights::UpdateLogPatternResponse> instance

Adds a log pattern to a C<LogPatternSet>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

