package Paws::Inspector;
  use Moose;
  sub service { 'inspector' }
  sub version { '2016-02-16' }
  sub target_prefix { 'InspectorService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddAttributesToFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::AddAttributesToFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssessmentTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::CreateAssessmentTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssessmentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::CreateAssessmentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResourceGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::CreateResourceGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssessmentRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DeleteAssessmentRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssessmentTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DeleteAssessmentTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssessmentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DeleteAssessmentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAssessmentRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DescribeAssessmentRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAssessmentTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DescribeAssessmentTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAssessmentTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DescribeAssessmentTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCrossAccountAccessRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DescribeCrossAccountAccessRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DescribeFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResourceGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DescribeResourceGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRulesPackages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DescribeRulesPackages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssessmentReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::GetAssessmentReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTelemetryMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::GetTelemetryMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssessmentRunAgents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::ListAssessmentRunAgents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssessmentRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::ListAssessmentRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssessmentTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::ListAssessmentTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssessmentTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::ListAssessmentTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::ListEventSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::ListFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRulesPackages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::ListRulesPackages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PreviewAgents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::PreviewAgents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterCrossAccountAccessRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::RegisterCrossAccountAccessRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveAttributesFromFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::RemoveAttributesFromFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::SetTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartAssessmentRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::StartAssessmentRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopAssessmentRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::StopAssessmentRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubscribeToEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::SubscribeToEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnsubscribeFromEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::UnsubscribeFromEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssessmentTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::UpdateAssessmentTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AddAttributesToFindings CreateAssessmentTarget CreateAssessmentTemplate CreateResourceGroup DeleteAssessmentRun DeleteAssessmentTarget DeleteAssessmentTemplate DescribeAssessmentRuns DescribeAssessmentTargets DescribeAssessmentTemplates DescribeCrossAccountAccessRole DescribeFindings DescribeResourceGroups DescribeRulesPackages GetAssessmentReport GetTelemetryMetadata ListAssessmentRunAgents ListAssessmentRuns ListAssessmentTargets ListAssessmentTemplates ListEventSubscriptions ListFindings ListRulesPackages ListTagsForResource PreviewAgents RegisterCrossAccountAccessRole RemoveAttributesFromFindings SetTagsForResource StartAssessmentRun StopAssessmentRun SubscribeToEvent UnsubscribeFromEvent UpdateAssessmentTarget / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector - Perl Interface to AWS Amazon Inspector

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Inspector');
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

Amazon Inspector

Amazon Inspector enables you to analyze the behavior of your AWS
resources and to identify potential security issues. For more
information, see Amazon Inspector User Guide.

=head1 METHODS

=head2 AddAttributesToFindings(Attributes => ArrayRef[L<Paws::Inspector::Attribute>], FindingArns => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Inspector::AddAttributesToFindings>

Returns: a L<Paws::Inspector::AddAttributesToFindingsResponse> instance

  Assigns attributes (key and value pairs) to the findings that are
specified by the ARNs of the findings.


=head2 CreateAssessmentTarget(AssessmentTargetName => Str, ResourceGroupArn => Str)

Each argument is described in detail in: L<Paws::Inspector::CreateAssessmentTarget>

Returns: a L<Paws::Inspector::CreateAssessmentTargetResponse> instance

  Creates a new assessment target using the ARN of the resource group
that is generated by CreateResourceGroup. You can create up to 50
assessment targets per AWS account. You can run up to 500 concurrent
agents per AWS account. For more information, see Amazon Inspector
Assessment Targets.


=head2 CreateAssessmentTemplate(AssessmentTargetArn => Str, AssessmentTemplateName => Str, DurationInSeconds => Int, RulesPackageArns => ArrayRef[Str|Undef], [UserAttributesForFindings => ArrayRef[L<Paws::Inspector::Attribute>]])

Each argument is described in detail in: L<Paws::Inspector::CreateAssessmentTemplate>

Returns: a L<Paws::Inspector::CreateAssessmentTemplateResponse> instance

  Creates an assessment template for the assessment target that is
specified by the ARN of the assessment target.


=head2 CreateResourceGroup(ResourceGroupTags => ArrayRef[L<Paws::Inspector::ResourceGroupTag>])

Each argument is described in detail in: L<Paws::Inspector::CreateResourceGroup>

Returns: a L<Paws::Inspector::CreateResourceGroupResponse> instance

  Creates a resource group using the specified set of tags (key and value
pairs) that are used to select the EC2 instances to be included in an
Amazon Inspector assessment target. The created resource group is then
used to create an Amazon Inspector assessment target. For more
information, see CreateAssessmentTarget.


=head2 DeleteAssessmentRun(AssessmentRunArn => Str)

Each argument is described in detail in: L<Paws::Inspector::DeleteAssessmentRun>

Returns: nothing

  Deletes the assessment run that is specified by the ARN of the
assessment run.


=head2 DeleteAssessmentTarget(AssessmentTargetArn => Str)

Each argument is described in detail in: L<Paws::Inspector::DeleteAssessmentTarget>

Returns: nothing

  Deletes the assessment target that is specified by the ARN of the
assessment target.


=head2 DeleteAssessmentTemplate(AssessmentTemplateArn => Str)

Each argument is described in detail in: L<Paws::Inspector::DeleteAssessmentTemplate>

Returns: nothing

  Deletes the assessment template that is specified by the ARN of the
assessment template.


=head2 DescribeAssessmentRuns(AssessmentRunArns => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Inspector::DescribeAssessmentRuns>

Returns: a L<Paws::Inspector::DescribeAssessmentRunsResponse> instance

  Describes the assessment runs that are specified by the ARNs of the
assessment runs.


=head2 DescribeAssessmentTargets(AssessmentTargetArns => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Inspector::DescribeAssessmentTargets>

Returns: a L<Paws::Inspector::DescribeAssessmentTargetsResponse> instance

  Describes the assessment targets that are specified by the ARNs of the
assessment targets.


=head2 DescribeAssessmentTemplates(AssessmentTemplateArns => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Inspector::DescribeAssessmentTemplates>

Returns: a L<Paws::Inspector::DescribeAssessmentTemplatesResponse> instance

  Describes the assessment templates that are specified by the ARNs of
the assessment templates.


=head2 DescribeCrossAccountAccessRole( => )

Each argument is described in detail in: L<Paws::Inspector::DescribeCrossAccountAccessRole>

Returns: a L<Paws::Inspector::DescribeCrossAccountAccessRoleResponse> instance

  Describes the IAM role that enables Amazon Inspector to access your AWS
account.


=head2 DescribeFindings(FindingArns => ArrayRef[Str|Undef], [Locale => Str])

Each argument is described in detail in: L<Paws::Inspector::DescribeFindings>

Returns: a L<Paws::Inspector::DescribeFindingsResponse> instance

  Describes the findings that are specified by the ARNs of the findings.


=head2 DescribeResourceGroups(ResourceGroupArns => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Inspector::DescribeResourceGroups>

Returns: a L<Paws::Inspector::DescribeResourceGroupsResponse> instance

  Describes the resource groups that are specified by the ARNs of the
resource groups.


=head2 DescribeRulesPackages(RulesPackageArns => ArrayRef[Str|Undef], [Locale => Str])

Each argument is described in detail in: L<Paws::Inspector::DescribeRulesPackages>

Returns: a L<Paws::Inspector::DescribeRulesPackagesResponse> instance

  Describes the rules packages that are specified by the ARNs of the
rules packages.


=head2 GetAssessmentReport(AssessmentRunArn => Str, ReportFileFormat => Str, ReportType => Str)

Each argument is described in detail in: L<Paws::Inspector::GetAssessmentReport>

Returns: a L<Paws::Inspector::GetAssessmentReportResponse> instance

  Produces an assessment report that includes detailed and comprehensive
results of a specified assessment run.


=head2 GetTelemetryMetadata(AssessmentRunArn => Str)

Each argument is described in detail in: L<Paws::Inspector::GetTelemetryMetadata>

Returns: a L<Paws::Inspector::GetTelemetryMetadataResponse> instance

  Information about the data that is collected for the specified
assessment run.


=head2 ListAssessmentRunAgents(AssessmentRunArn => Str, [Filter => L<Paws::Inspector::AgentFilter>, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Inspector::ListAssessmentRunAgents>

Returns: a L<Paws::Inspector::ListAssessmentRunAgentsResponse> instance

  Lists the agents of the assessment runs that are specified by the ARNs
of the assessment runs.


=head2 ListAssessmentRuns([AssessmentTemplateArns => ArrayRef[Str|Undef], Filter => L<Paws::Inspector::AssessmentRunFilter>, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Inspector::ListAssessmentRuns>

Returns: a L<Paws::Inspector::ListAssessmentRunsResponse> instance

  Lists the assessment runs that correspond to the assessment templates
that are specified by the ARNs of the assessment templates.


=head2 ListAssessmentTargets([Filter => L<Paws::Inspector::AssessmentTargetFilter>, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Inspector::ListAssessmentTargets>

Returns: a L<Paws::Inspector::ListAssessmentTargetsResponse> instance

  Lists the ARNs of the assessment targets within this AWS account. For
more information about assessment targets, see Amazon Inspector
Assessment Targets.


=head2 ListAssessmentTemplates([AssessmentTargetArns => ArrayRef[Str|Undef], Filter => L<Paws::Inspector::AssessmentTemplateFilter>, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Inspector::ListAssessmentTemplates>

Returns: a L<Paws::Inspector::ListAssessmentTemplatesResponse> instance

  Lists the assessment templates that correspond to the assessment
targets that are specified by the ARNs of the assessment targets.


=head2 ListEventSubscriptions([MaxResults => Int, NextToken => Str, ResourceArn => Str])

Each argument is described in detail in: L<Paws::Inspector::ListEventSubscriptions>

Returns: a L<Paws::Inspector::ListEventSubscriptionsResponse> instance

  Lists all the event subscriptions for the assessment template that is
specified by the ARN of the assessment template. For more information,
see SubscribeToEvent and UnsubscribeFromEvent.


=head2 ListFindings([AssessmentRunArns => ArrayRef[Str|Undef], Filter => L<Paws::Inspector::FindingFilter>, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Inspector::ListFindings>

Returns: a L<Paws::Inspector::ListFindingsResponse> instance

  Lists findings that are generated by the assessment runs that are
specified by the ARNs of the assessment runs.


=head2 ListRulesPackages([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Inspector::ListRulesPackages>

Returns: a L<Paws::Inspector::ListRulesPackagesResponse> instance

  Lists all available Amazon Inspector rules packages.


=head2 ListTagsForResource(ResourceArn => Str)

Each argument is described in detail in: L<Paws::Inspector::ListTagsForResource>

Returns: a L<Paws::Inspector::ListTagsForResourceResponse> instance

  Lists all tags associated with an assessment template.


=head2 PreviewAgents(PreviewAgentsArn => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Inspector::PreviewAgents>

Returns: a L<Paws::Inspector::PreviewAgentsResponse> instance

  Previews the agents installed on the EC2 instances that are part of the
specified assessment target.


=head2 RegisterCrossAccountAccessRole(RoleArn => Str)

Each argument is described in detail in: L<Paws::Inspector::RegisterCrossAccountAccessRole>

Returns: nothing

  Registers the IAM role that Amazon Inspector uses to list your EC2
instances at the start of the assessment run or when you call the
PreviewAgents action.


=head2 RemoveAttributesFromFindings(AttributeKeys => ArrayRef[Str|Undef], FindingArns => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Inspector::RemoveAttributesFromFindings>

Returns: a L<Paws::Inspector::RemoveAttributesFromFindingsResponse> instance

  Removes entire attributes (key and value pairs) from the findings that
are specified by the ARNs of the findings where an attribute with the
specified key exists.


=head2 SetTagsForResource(ResourceArn => Str, [Tags => ArrayRef[L<Paws::Inspector::Tag>]])

Each argument is described in detail in: L<Paws::Inspector::SetTagsForResource>

Returns: nothing

  Sets tags (key and value pairs) to the assessment template that is
specified by the ARN of the assessment template.


=head2 StartAssessmentRun(AssessmentTemplateArn => Str, [AssessmentRunName => Str])

Each argument is described in detail in: L<Paws::Inspector::StartAssessmentRun>

Returns: a L<Paws::Inspector::StartAssessmentRunResponse> instance

  Starts the assessment run specified by the ARN of the assessment
template. For this API to function properly, you must not exceed the
limit of running up to 500 concurrent agents per AWS account.


=head2 StopAssessmentRun(AssessmentRunArn => Str)

Each argument is described in detail in: L<Paws::Inspector::StopAssessmentRun>

Returns: nothing

  Stops the assessment run that is specified by the ARN of the assessment
run.


=head2 SubscribeToEvent(Event => Str, ResourceArn => Str, TopicArn => Str)

Each argument is described in detail in: L<Paws::Inspector::SubscribeToEvent>

Returns: nothing

  Enables the process of sending Amazon Simple Notification Service (SNS)
notifications about a specified event to a specified SNS topic.


=head2 UnsubscribeFromEvent(Event => Str, ResourceArn => Str, TopicArn => Str)

Each argument is described in detail in: L<Paws::Inspector::UnsubscribeFromEvent>

Returns: nothing

  Disables the process of sending Amazon Simple Notification Service
(SNS) notifications about a specified event to a specified SNS topic.


=head2 UpdateAssessmentTarget(AssessmentTargetArn => Str, AssessmentTargetName => Str, ResourceGroupArn => Str)

Each argument is described in detail in: L<Paws::Inspector::UpdateAssessmentTarget>

Returns: nothing

  Updates the assessment target that is specified by the ARN of the
assessment target.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

