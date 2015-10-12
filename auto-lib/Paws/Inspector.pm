package Paws::Inspector;
  use Moose;
  sub service { 'inspector' }
  sub version { '2015-08-18' }
  sub target_prefix { 'InspectorService' }
  sub json_version { "1.1" }

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub AddAttributesToFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::AddAttributesToFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachAssessmentAndRulesPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::AttachAssessmentAndRulesPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::CreateAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResourceGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::CreateResourceGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DeleteAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DeleteRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DescribeApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DescribeAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCrossAccountAccessRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DescribeCrossAccountAccessRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFinding {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DescribeFinding', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResourceGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DescribeResourceGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRulesPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DescribeRulesPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DescribeRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachAssessmentAndRulesPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DetachAssessmentAndRulesPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssessmentTelemetry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::GetAssessmentTelemetry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssessmentAgents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::ListAssessmentAgents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssessments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::ListAssessments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAttachedAssessments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::ListAttachedAssessments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAttachedRulesPackages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::ListAttachedRulesPackages', @_);
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
  sub ListRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::ListRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub LocalizeText {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::LocalizeText', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PreviewAgentsForResourceGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::PreviewAgentsForResourceGroup', @_);
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
  sub RunAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::RunAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::SetTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDataCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::StartDataCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDataCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::StopDataCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::UpdateAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub operations { qw/AddAttributesToFindings AttachAssessmentAndRulesPackage CreateApplication CreateAssessment CreateResourceGroup DeleteApplication DeleteAssessment DeleteRun DescribeApplication DescribeAssessment DescribeCrossAccountAccessRole DescribeFinding DescribeResourceGroup DescribeRulesPackage DescribeRun DetachAssessmentAndRulesPackage GetAssessmentTelemetry ListApplications ListAssessmentAgents ListAssessments ListAttachedAssessments ListAttachedRulesPackages ListFindings ListRulesPackages ListRuns ListTagsForResource LocalizeText PreviewAgentsForResourceGroup RegisterCrossAccountAccessRole RemoveAttributesFromFindings RunAssessment SetTagsForResource StartDataCollection StopDataCollection UpdateApplication UpdateAssessment / }

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

Amazon Inspector enables you to analyze the behavior of the
applications you run in AWS and to identify potential security issues.
For more information, see Amazon Inspector User Guide.

=head1 METHODS

=head2 AddAttributesToFindings([attributes => ArrayRef[L<Paws::Inspector::Attribute>], findingArns => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::Inspector::AddAttributesToFindings>

Returns: a L<Paws::Inspector::AddAttributesToFindingsResponse> instance

  Assigns attributes (key and value pair) to the findings specified by
the findings' ARNs.


=head2 AttachAssessmentAndRulesPackage([assessmentArn => Str, rulesPackageArn => Str])

Each argument is described in detail in: L<Paws::Inspector::AttachAssessmentAndRulesPackage>

Returns: a L<Paws::Inspector::AttachAssessmentAndRulesPackageResponse> instance

  Attaches the rules package specified by the rules package ARN to the
assessment specified by the assessment ARN.


=head2 CreateApplication([applicationName => Str, resourceGroupArn => Str])

Each argument is described in detail in: L<Paws::Inspector::CreateApplication>

Returns: a L<Paws::Inspector::CreateApplicationResponse> instance

  Creates a new application using the resource group ARN generated by
CreateResourceGroup. You can create up to 50 applications per AWS
account. You can run up to 500 concurrent agents per AWS account. For
more information, see Inspector Applications.


=head2 CreateAssessment([applicationArn => Str, assessmentName => Str, durationInSeconds => Int, userAttributesForFindings => ArrayRef[L<Paws::Inspector::Attribute>]])

Each argument is described in detail in: L<Paws::Inspector::CreateAssessment>

Returns: a L<Paws::Inspector::CreateAssessmentResponse> instance

  Creates an assessment for the application specified by the application
ARN. You can create up to 500 assessments per AWS account.


=head2 CreateResourceGroup([resourceGroupTags => Str])

Each argument is described in detail in: L<Paws::Inspector::CreateResourceGroup>

Returns: a L<Paws::Inspector::CreateResourceGroupResponse> instance

  Creates a resource group using the specified set of tags (key and value
pairs) that are used to select the EC2 instances to be included in an
Inspector application. The created resource group is then used to
create an Inspector application.


=head2 DeleteApplication([applicationArn => Str])

Each argument is described in detail in: L<Paws::Inspector::DeleteApplication>

Returns: a L<Paws::Inspector::DeleteApplicationResponse> instance

  Deletes the application specified by the application ARN.


=head2 DeleteAssessment([assessmentArn => Str])

Each argument is described in detail in: L<Paws::Inspector::DeleteAssessment>

Returns: a L<Paws::Inspector::DeleteAssessmentResponse> instance

  Deletes the assessment specified by the assessment ARN.


=head2 DeleteRun([runArn => Str])

Each argument is described in detail in: L<Paws::Inspector::DeleteRun>

Returns: a L<Paws::Inspector::DeleteRunResponse> instance

  Deletes the assessment run specified by the run ARN.


=head2 DescribeApplication([applicationArn => Str])

Each argument is described in detail in: L<Paws::Inspector::DescribeApplication>

Returns: a L<Paws::Inspector::DescribeApplicationResponse> instance

  Describes the application specified by the application ARN.


=head2 DescribeAssessment([assessmentArn => Str])

Each argument is described in detail in: L<Paws::Inspector::DescribeAssessment>

Returns: a L<Paws::Inspector::DescribeAssessmentResponse> instance

  Describes the assessment specified by the assessment ARN.


=head2 DescribeCrossAccountAccessRole( => )

Each argument is described in detail in: L<Paws::Inspector::DescribeCrossAccountAccessRole>

Returns: a L<Paws::Inspector::DescribeCrossAccountAccessRoleResponse> instance

  Describes the IAM role that enables Inspector to access your AWS
account.


=head2 DescribeFinding([findingArn => Str])

Each argument is described in detail in: L<Paws::Inspector::DescribeFinding>

Returns: a L<Paws::Inspector::DescribeFindingResponse> instance

  Describes the finding specified by the finding ARN.


=head2 DescribeResourceGroup([resourceGroupArn => Str])

Each argument is described in detail in: L<Paws::Inspector::DescribeResourceGroup>

Returns: a L<Paws::Inspector::DescribeResourceGroupResponse> instance

  Describes the resource group specified by the resource group ARN.


=head2 DescribeRulesPackage([rulesPackageArn => Str])

Each argument is described in detail in: L<Paws::Inspector::DescribeRulesPackage>

Returns: a L<Paws::Inspector::DescribeRulesPackageResponse> instance

  Describes the rules package specified by the rules package ARN.


=head2 DescribeRun([runArn => Str])

Each argument is described in detail in: L<Paws::Inspector::DescribeRun>

Returns: a L<Paws::Inspector::DescribeRunResponse> instance

  Describes the assessment run specified by the run ARN.


=head2 DetachAssessmentAndRulesPackage([assessmentArn => Str, rulesPackageArn => Str])

Each argument is described in detail in: L<Paws::Inspector::DetachAssessmentAndRulesPackage>

Returns: a L<Paws::Inspector::DetachAssessmentAndRulesPackageResponse> instance

  Detaches the rules package specified by the rules package ARN from the
assessment specified by the assessment ARN.


=head2 GetAssessmentTelemetry([assessmentArn => Str])

Each argument is described in detail in: L<Paws::Inspector::GetAssessmentTelemetry>

Returns: a L<Paws::Inspector::GetAssessmentTelemetryResponse> instance

  Returns the metadata about the telemetry (application behavioral data)
for the assessment specified by the assessment ARN.


=head2 ListApplications([filter => L<Paws::Inspector::ApplicationsFilter>, maxResults => Int, nextToken => Str])

Each argument is described in detail in: L<Paws::Inspector::ListApplications>

Returns: a L<Paws::Inspector::ListApplicationsResponse> instance

  Lists the ARNs of the applications within this AWS account. For more
information about applications, see Inspector Applications.


=head2 ListAssessmentAgents([assessmentArn => Str, filter => L<Paws::Inspector::AgentsFilter>, maxResults => Int, nextToken => Str])

Each argument is described in detail in: L<Paws::Inspector::ListAssessmentAgents>

Returns: a L<Paws::Inspector::ListAssessmentAgentsResponse> instance

  Lists the agents of the assessment specified by the assessment ARN.


=head2 ListAssessments([applicationArns => ArrayRef[Str], filter => L<Paws::Inspector::AssessmentsFilter>, maxResults => Int, nextToken => Str])

Each argument is described in detail in: L<Paws::Inspector::ListAssessments>

Returns: a L<Paws::Inspector::ListAssessmentsResponse> instance

  Lists the assessments corresponding to applications specified by the
applications' ARNs.


=head2 ListAttachedAssessments([filter => L<Paws::Inspector::AssessmentsFilter>, maxResults => Int, nextToken => Str, rulesPackageArn => Str])

Each argument is described in detail in: L<Paws::Inspector::ListAttachedAssessments>

Returns: a L<Paws::Inspector::ListAttachedAssessmentsResponse> instance

  Lists the assessments attached to the rules package specified by the
rules package ARN.


=head2 ListAttachedRulesPackages([assessmentArn => Str, maxResults => Int, nextToken => Str])

Each argument is described in detail in: L<Paws::Inspector::ListAttachedRulesPackages>

Returns: a L<Paws::Inspector::ListAttachedRulesPackagesResponse> instance

  Lists the rules packages attached to the assessment specified by the
assessment ARN.


=head2 ListFindings([filter => L<Paws::Inspector::FindingsFilter>, maxResults => Int, nextToken => Str, runArns => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::Inspector::ListFindings>

Returns: a L<Paws::Inspector::ListFindingsResponse> instance

  Lists findings generated by the assessment run specified by the run
ARNs.


=head2 ListRulesPackages([maxResults => Int, nextToken => Str])

Each argument is described in detail in: L<Paws::Inspector::ListRulesPackages>

Returns: a L<Paws::Inspector::ListRulesPackagesResponse> instance

  Lists all available Inspector rules packages.


=head2 ListRuns([assessmentArns => ArrayRef[Str], filter => L<Paws::Inspector::RunsFilter>, maxResults => Int, nextToken => Str])

Each argument is described in detail in: L<Paws::Inspector::ListRuns>

Returns: a L<Paws::Inspector::ListRunsResponse> instance

  Lists the assessment runs associated with the assessments specified by
the assessment ARNs.


=head2 ListTagsForResource([resourceArn => Str])

Each argument is described in detail in: L<Paws::Inspector::ListTagsForResource>

Returns: a L<Paws::Inspector::ListTagsForResourceResponse> instance

  Lists all tags associated with a resource.


=head2 LocalizeText([locale => Str, localizedTexts => ArrayRef[L<Paws::Inspector::LocalizedText>]])

Each argument is described in detail in: L<Paws::Inspector::LocalizeText>

Returns: a L<Paws::Inspector::LocalizeTextResponse> instance

  Translates a textual identifier into a user-readable text in a
specified locale.


=head2 PreviewAgentsForResourceGroup([maxResults => Int, nextToken => Str, resourceGroupArn => Str])

Each argument is described in detail in: L<Paws::Inspector::PreviewAgentsForResourceGroup>

Returns: a L<Paws::Inspector::PreviewAgentsForResourceGroupResponse> instance

  Previews the agents installed on the EC2 instances that are included in
the application created with the specified resource group.


=head2 RegisterCrossAccountAccessRole([roleArn => Str])

Each argument is described in detail in: L<Paws::Inspector::RegisterCrossAccountAccessRole>

Returns: a L<Paws::Inspector::RegisterCrossAccountAccessRoleResponse> instance

  Register the role that Inspector uses to list your EC2 instances during
the assessment.


=head2 RemoveAttributesFromFindings([attributeKeys => ArrayRef[Str], findingArns => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::Inspector::RemoveAttributesFromFindings>

Returns: a L<Paws::Inspector::RemoveAttributesFromFindingsResponse> instance

  Removes the entire attribute (key and value pair) from the findings
specified by the finding ARNs where an attribute with the specified key
exists.


=head2 RunAssessment([assessmentArn => Str, runName => Str])

Each argument is described in detail in: L<Paws::Inspector::RunAssessment>

Returns: a L<Paws::Inspector::RunAssessmentResponse> instance

  Starts the analysis of the applicationE<rsquo>s behavior against
selected rule packages for the assessment specified by the assessment
ARN.


=head2 SetTagsForResource([resourceArn => Str, tags => ArrayRef[L<Paws::Inspector::Tag>]])

Each argument is described in detail in: L<Paws::Inspector::SetTagsForResource>

Returns: a L<Paws::Inspector::SetTagsForResourceResponse> instance

  Sets tags (key and value pairs) to the assessment specified by the
assessment ARN.


=head2 StartDataCollection([assessmentArn => Str])

Each argument is described in detail in: L<Paws::Inspector::StartDataCollection>

Returns: a L<Paws::Inspector::StartDataCollectionResponse> instance

  Starts data collection for the assessment specified by the assessment
ARN. For this API to function properly, you must not exceed the limit
of running up to 500 concurrent agents per AWS account.


=head2 StopDataCollection([assessmentArn => Str])

Each argument is described in detail in: L<Paws::Inspector::StopDataCollection>

Returns: a L<Paws::Inspector::StopDataCollectionResponse> instance

  Stop data collection for the assessment specified by the assessment
ARN.


=head2 UpdateApplication([applicationArn => Str, applicationName => Str, resourceGroupArn => Str])

Each argument is described in detail in: L<Paws::Inspector::UpdateApplication>

Returns: a L<Paws::Inspector::UpdateApplicationResponse> instance

  Updates application specified by the application ARN.


=head2 UpdateAssessment([assessmentArn => Str, assessmentName => Str, durationInSeconds => Int])

Each argument is described in detail in: L<Paws::Inspector::UpdateAssessment>

Returns: a L<Paws::Inspector::UpdateAssessmentResponse> instance

  Updates the assessment specified by the assessment ARN.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

