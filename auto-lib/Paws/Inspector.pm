package Paws::Inspector;
  use Moose;
  sub service { 'inspector' }
  sub signing_name { 'inspector' }
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
  sub CreateExclusionsPreview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::CreateExclusionsPreview', @_);
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
  sub DescribeExclusions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::DescribeExclusions', @_);
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
  sub GetExclusionsPreview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::GetExclusionsPreview', @_);
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
  sub ListExclusions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector::ListExclusions', @_);
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
  
  sub ListAllAssessmentRunAgents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssessmentRunAgents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssessmentRunAgents(@_, nextToken => $next_result->nextToken);
        push @{ $result->assessmentRunAgents }, @{ $next_result->assessmentRunAgents };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assessmentRunAgents') foreach (@{ $result->assessmentRunAgents });
        $result = $self->ListAssessmentRunAgents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assessmentRunAgents') foreach (@{ $result->assessmentRunAgents });
    }

    return undef
  }
  sub ListAllAssessmentRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssessmentRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssessmentRuns(@_, nextToken => $next_result->nextToken);
        push @{ $result->assessmentRunArns }, @{ $next_result->assessmentRunArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assessmentRunArns') foreach (@{ $result->assessmentRunArns });
        $result = $self->ListAssessmentRuns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assessmentRunArns') foreach (@{ $result->assessmentRunArns });
    }

    return undef
  }
  sub ListAllAssessmentTargets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssessmentTargets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssessmentTargets(@_, nextToken => $next_result->nextToken);
        push @{ $result->assessmentTargetArns }, @{ $next_result->assessmentTargetArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assessmentTargetArns') foreach (@{ $result->assessmentTargetArns });
        $result = $self->ListAssessmentTargets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assessmentTargetArns') foreach (@{ $result->assessmentTargetArns });
    }

    return undef
  }
  sub ListAllAssessmentTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssessmentTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssessmentTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->assessmentTemplateArns }, @{ $next_result->assessmentTemplateArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assessmentTemplateArns') foreach (@{ $result->assessmentTemplateArns });
        $result = $self->ListAssessmentTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assessmentTemplateArns') foreach (@{ $result->assessmentTemplateArns });
    }

    return undef
  }
  sub ListAllEventSubscriptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEventSubscriptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEventSubscriptions(@_, nextToken => $next_result->nextToken);
        push @{ $result->subscriptions }, @{ $next_result->subscriptions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'subscriptions') foreach (@{ $result->subscriptions });
        $result = $self->ListEventSubscriptions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'subscriptions') foreach (@{ $result->subscriptions });
    }

    return undef
  }
  sub ListAllExclusions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExclusions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListExclusions(@_, nextToken => $next_result->nextToken);
        push @{ $result->exclusionArns }, @{ $next_result->exclusionArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'exclusionArns') foreach (@{ $result->exclusionArns });
        $result = $self->ListExclusions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'exclusionArns') foreach (@{ $result->exclusionArns });
    }

    return undef
  }
  sub ListAllFindings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFindings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFindings(@_, nextToken => $next_result->nextToken);
        push @{ $result->findingArns }, @{ $next_result->findingArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'findingArns') foreach (@{ $result->findingArns });
        $result = $self->ListFindings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'findingArns') foreach (@{ $result->findingArns });
    }

    return undef
  }
  sub ListAllRulesPackages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRulesPackages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRulesPackages(@_, nextToken => $next_result->nextToken);
        push @{ $result->rulesPackageArns }, @{ $next_result->rulesPackageArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'rulesPackageArns') foreach (@{ $result->rulesPackageArns });
        $result = $self->ListRulesPackages(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'rulesPackageArns') foreach (@{ $result->rulesPackageArns });
    }

    return undef
  }
  sub PreviewAllAgents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->PreviewAgents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->PreviewAgents(@_, nextToken => $next_result->nextToken);
        push @{ $result->agentPreviews }, @{ $next_result->agentPreviews };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'agentPreviews') foreach (@{ $result->agentPreviews });
        $result = $self->PreviewAgents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'agentPreviews') foreach (@{ $result->agentPreviews });
    }

    return undef
  }


  sub operations { qw/AddAttributesToFindings CreateAssessmentTarget CreateAssessmentTemplate CreateExclusionsPreview CreateResourceGroup DeleteAssessmentRun DeleteAssessmentTarget DeleteAssessmentTemplate DescribeAssessmentRuns DescribeAssessmentTargets DescribeAssessmentTemplates DescribeCrossAccountAccessRole DescribeExclusions DescribeFindings DescribeResourceGroups DescribeRulesPackages GetAssessmentReport GetExclusionsPreview GetTelemetryMetadata ListAssessmentRunAgents ListAssessmentRuns ListAssessmentTargets ListAssessmentTemplates ListEventSubscriptions ListExclusions ListFindings ListRulesPackages ListTagsForResource PreviewAgents RegisterCrossAccountAccessRole RemoveAttributesFromFindings SetTagsForResource StartAssessmentRun StopAssessmentRun SubscribeToEvent UnsubscribeFromEvent UpdateAssessmentTarget / }

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
information, see Amazon Inspector User Guide
(http://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16>


=head1 METHODS

=head2 AddAttributesToFindings

=over

=item Attributes => ArrayRef[L<Paws::Inspector::Attribute>]

=item FindingArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Inspector::AddAttributesToFindings>

Returns: a L<Paws::Inspector::AddAttributesToFindingsResponse> instance

Assigns attributes (key and value pairs) to the findings that are
specified by the ARNs of the findings.


=head2 CreateAssessmentTarget

=over

=item AssessmentTargetName => Str

=item [ResourceGroupArn => Str]


=back

Each argument is described in detail in: L<Paws::Inspector::CreateAssessmentTarget>

Returns: a L<Paws::Inspector::CreateAssessmentTargetResponse> instance

Creates a new assessment target using the ARN of the resource group
that is generated by CreateResourceGroup. If resourceGroupArn is not
specified, all EC2 instances in the current AWS account and region are
included in the assessment target. If the service-linked role
(https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html)
isnE<rsquo>t already registered, this action also creates and registers
a service-linked role to grant Amazon Inspector access to AWS Services
needed to perform security assessments. You can create up to 50
assessment targets per AWS account. You can run up to 500 concurrent
agents per AWS account. For more information, see Amazon Inspector
Assessment Targets
(http://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html).


=head2 CreateAssessmentTemplate

=over

=item AssessmentTargetArn => Str

=item AssessmentTemplateName => Str

=item DurationInSeconds => Int

=item RulesPackageArns => ArrayRef[Str|Undef]

=item [UserAttributesForFindings => ArrayRef[L<Paws::Inspector::Attribute>]]


=back

Each argument is described in detail in: L<Paws::Inspector::CreateAssessmentTemplate>

Returns: a L<Paws::Inspector::CreateAssessmentTemplateResponse> instance

Creates an assessment template for the assessment target that is
specified by the ARN of the assessment target. If the service-linked
role
(https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html)
isnE<rsquo>t already registered, this action also creates and registers
a service-linked role to grant Amazon Inspector access to AWS Services
needed to perform security assessments.


=head2 CreateExclusionsPreview

=over

=item AssessmentTemplateArn => Str


=back

Each argument is described in detail in: L<Paws::Inspector::CreateExclusionsPreview>

Returns: a L<Paws::Inspector::CreateExclusionsPreviewResponse> instance

Starts the generation of an exclusions preview for the specified
assessment template. The exclusions preview lists the potential
exclusions (ExclusionPreview) that Inspector can detect before it runs
the assessment.


=head2 CreateResourceGroup

=over

=item ResourceGroupTags => ArrayRef[L<Paws::Inspector::ResourceGroupTag>]


=back

Each argument is described in detail in: L<Paws::Inspector::CreateResourceGroup>

Returns: a L<Paws::Inspector::CreateResourceGroupResponse> instance

Creates a resource group using the specified set of tags (key and value
pairs) that are used to select the EC2 instances to be included in an
Amazon Inspector assessment target. The created resource group is then
used to create an Amazon Inspector assessment target. For more
information, see CreateAssessmentTarget.


=head2 DeleteAssessmentRun

=over

=item AssessmentRunArn => Str


=back

Each argument is described in detail in: L<Paws::Inspector::DeleteAssessmentRun>

Returns: nothing

Deletes the assessment run that is specified by the ARN of the
assessment run.


=head2 DeleteAssessmentTarget

=over

=item AssessmentTargetArn => Str


=back

Each argument is described in detail in: L<Paws::Inspector::DeleteAssessmentTarget>

Returns: nothing

Deletes the assessment target that is specified by the ARN of the
assessment target.


=head2 DeleteAssessmentTemplate

=over

=item AssessmentTemplateArn => Str


=back

Each argument is described in detail in: L<Paws::Inspector::DeleteAssessmentTemplate>

Returns: nothing

Deletes the assessment template that is specified by the ARN of the
assessment template.


=head2 DescribeAssessmentRuns

=over

=item AssessmentRunArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Inspector::DescribeAssessmentRuns>

Returns: a L<Paws::Inspector::DescribeAssessmentRunsResponse> instance

Describes the assessment runs that are specified by the ARNs of the
assessment runs.


=head2 DescribeAssessmentTargets

=over

=item AssessmentTargetArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Inspector::DescribeAssessmentTargets>

Returns: a L<Paws::Inspector::DescribeAssessmentTargetsResponse> instance

Describes the assessment targets that are specified by the ARNs of the
assessment targets.


=head2 DescribeAssessmentTemplates

=over

=item AssessmentTemplateArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Inspector::DescribeAssessmentTemplates>

Returns: a L<Paws::Inspector::DescribeAssessmentTemplatesResponse> instance

Describes the assessment templates that are specified by the ARNs of
the assessment templates.


=head2 DescribeCrossAccountAccessRole

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Inspector::DescribeCrossAccountAccessRole>

Returns: a L<Paws::Inspector::DescribeCrossAccountAccessRoleResponse> instance

Describes the IAM role that enables Amazon Inspector to access your AWS
account.


=head2 DescribeExclusions

=over

=item ExclusionArns => ArrayRef[Str|Undef]

=item [Locale => Str]


=back

Each argument is described in detail in: L<Paws::Inspector::DescribeExclusions>

Returns: a L<Paws::Inspector::DescribeExclusionsResponse> instance

Describes the exclusions that are specified by the exclusions' ARNs.


=head2 DescribeFindings

=over

=item FindingArns => ArrayRef[Str|Undef]

=item [Locale => Str]


=back

Each argument is described in detail in: L<Paws::Inspector::DescribeFindings>

Returns: a L<Paws::Inspector::DescribeFindingsResponse> instance

Describes the findings that are specified by the ARNs of the findings.


=head2 DescribeResourceGroups

=over

=item ResourceGroupArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Inspector::DescribeResourceGroups>

Returns: a L<Paws::Inspector::DescribeResourceGroupsResponse> instance

Describes the resource groups that are specified by the ARNs of the
resource groups.


=head2 DescribeRulesPackages

=over

=item RulesPackageArns => ArrayRef[Str|Undef]

=item [Locale => Str]


=back

Each argument is described in detail in: L<Paws::Inspector::DescribeRulesPackages>

Returns: a L<Paws::Inspector::DescribeRulesPackagesResponse> instance

Describes the rules packages that are specified by the ARNs of the
rules packages.


=head2 GetAssessmentReport

=over

=item AssessmentRunArn => Str

=item ReportFileFormat => Str

=item ReportType => Str


=back

Each argument is described in detail in: L<Paws::Inspector::GetAssessmentReport>

Returns: a L<Paws::Inspector::GetAssessmentReportResponse> instance

Produces an assessment report that includes detailed and comprehensive
results of a specified assessment run.


=head2 GetExclusionsPreview

=over

=item AssessmentTemplateArn => Str

=item PreviewToken => Str

=item [Locale => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector::GetExclusionsPreview>

Returns: a L<Paws::Inspector::GetExclusionsPreviewResponse> instance

Retrieves the exclusions preview (a list of ExclusionPreview objects)
specified by the preview token. You can obtain the preview token by
running the CreateExclusionsPreview API.


=head2 GetTelemetryMetadata

=over

=item AssessmentRunArn => Str


=back

Each argument is described in detail in: L<Paws::Inspector::GetTelemetryMetadata>

Returns: a L<Paws::Inspector::GetTelemetryMetadataResponse> instance

Information about the data that is collected for the specified
assessment run.


=head2 ListAssessmentRunAgents

=over

=item AssessmentRunArn => Str

=item [Filter => L<Paws::Inspector::AgentFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector::ListAssessmentRunAgents>

Returns: a L<Paws::Inspector::ListAssessmentRunAgentsResponse> instance

Lists the agents of the assessment runs that are specified by the ARNs
of the assessment runs.


=head2 ListAssessmentRuns

=over

=item [AssessmentTemplateArns => ArrayRef[Str|Undef]]

=item [Filter => L<Paws::Inspector::AssessmentRunFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector::ListAssessmentRuns>

Returns: a L<Paws::Inspector::ListAssessmentRunsResponse> instance

Lists the assessment runs that correspond to the assessment templates
that are specified by the ARNs of the assessment templates.


=head2 ListAssessmentTargets

=over

=item [Filter => L<Paws::Inspector::AssessmentTargetFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector::ListAssessmentTargets>

Returns: a L<Paws::Inspector::ListAssessmentTargetsResponse> instance

Lists the ARNs of the assessment targets within this AWS account. For
more information about assessment targets, see Amazon Inspector
Assessment Targets
(http://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html).


=head2 ListAssessmentTemplates

=over

=item [AssessmentTargetArns => ArrayRef[Str|Undef]]

=item [Filter => L<Paws::Inspector::AssessmentTemplateFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector::ListAssessmentTemplates>

Returns: a L<Paws::Inspector::ListAssessmentTemplatesResponse> instance

Lists the assessment templates that correspond to the assessment
targets that are specified by the ARNs of the assessment targets.


=head2 ListEventSubscriptions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceArn => Str]


=back

Each argument is described in detail in: L<Paws::Inspector::ListEventSubscriptions>

Returns: a L<Paws::Inspector::ListEventSubscriptionsResponse> instance

Lists all the event subscriptions for the assessment template that is
specified by the ARN of the assessment template. For more information,
see SubscribeToEvent and UnsubscribeFromEvent.


=head2 ListExclusions

=over

=item AssessmentRunArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector::ListExclusions>

Returns: a L<Paws::Inspector::ListExclusionsResponse> instance

List exclusions that are generated by the assessment run.


=head2 ListFindings

=over

=item [AssessmentRunArns => ArrayRef[Str|Undef]]

=item [Filter => L<Paws::Inspector::FindingFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector::ListFindings>

Returns: a L<Paws::Inspector::ListFindingsResponse> instance

Lists findings that are generated by the assessment runs that are
specified by the ARNs of the assessment runs.


=head2 ListRulesPackages

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector::ListRulesPackages>

Returns: a L<Paws::Inspector::ListRulesPackagesResponse> instance

Lists all available Amazon Inspector rules packages.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Inspector::ListTagsForResource>

Returns: a L<Paws::Inspector::ListTagsForResourceResponse> instance

Lists all tags associated with an assessment template.


=head2 PreviewAgents

=over

=item PreviewAgentsArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector::PreviewAgents>

Returns: a L<Paws::Inspector::PreviewAgentsResponse> instance

Previews the agents installed on the EC2 instances that are part of the
specified assessment target.


=head2 RegisterCrossAccountAccessRole

=over

=item RoleArn => Str


=back

Each argument is described in detail in: L<Paws::Inspector::RegisterCrossAccountAccessRole>

Returns: nothing

Registers the IAM role that grants Amazon Inspector access to AWS
Services needed to perform security assessments.


=head2 RemoveAttributesFromFindings

=over

=item AttributeKeys => ArrayRef[Str|Undef]

=item FindingArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Inspector::RemoveAttributesFromFindings>

Returns: a L<Paws::Inspector::RemoveAttributesFromFindingsResponse> instance

Removes entire attributes (key and value pairs) from the findings that
are specified by the ARNs of the findings where an attribute with the
specified key exists.


=head2 SetTagsForResource

=over

=item ResourceArn => Str

=item [Tags => ArrayRef[L<Paws::Inspector::Tag>]]


=back

Each argument is described in detail in: L<Paws::Inspector::SetTagsForResource>

Returns: nothing

Sets tags (key and value pairs) to the assessment template that is
specified by the ARN of the assessment template.


=head2 StartAssessmentRun

=over

=item AssessmentTemplateArn => Str

=item [AssessmentRunName => Str]


=back

Each argument is described in detail in: L<Paws::Inspector::StartAssessmentRun>

Returns: a L<Paws::Inspector::StartAssessmentRunResponse> instance

Starts the assessment run specified by the ARN of the assessment
template. For this API to function properly, you must not exceed the
limit of running up to 500 concurrent agents per AWS account.


=head2 StopAssessmentRun

=over

=item AssessmentRunArn => Str

=item [StopAction => Str]


=back

Each argument is described in detail in: L<Paws::Inspector::StopAssessmentRun>

Returns: nothing

Stops the assessment run that is specified by the ARN of the assessment
run.


=head2 SubscribeToEvent

=over

=item Event => Str

=item ResourceArn => Str

=item TopicArn => Str


=back

Each argument is described in detail in: L<Paws::Inspector::SubscribeToEvent>

Returns: nothing

Enables the process of sending Amazon Simple Notification Service (SNS)
notifications about a specified event to a specified SNS topic.


=head2 UnsubscribeFromEvent

=over

=item Event => Str

=item ResourceArn => Str

=item TopicArn => Str


=back

Each argument is described in detail in: L<Paws::Inspector::UnsubscribeFromEvent>

Returns: nothing

Disables the process of sending Amazon Simple Notification Service
(SNS) notifications about a specified event to a specified SNS topic.


=head2 UpdateAssessmentTarget

=over

=item AssessmentTargetArn => Str

=item AssessmentTargetName => Str

=item [ResourceGroupArn => Str]


=back

Each argument is described in detail in: L<Paws::Inspector::UpdateAssessmentTarget>

Returns: nothing

Updates the assessment target that is specified by the ARN of the
assessment target.

If resourceGroupArn is not specified, all EC2 instances in the current
AWS account and region are included in the assessment target.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAssessmentRunAgents(sub { },AssessmentRunArn => Str, [Filter => L<Paws::Inspector::AgentFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllAssessmentRunAgents(AssessmentRunArn => Str, [Filter => L<Paws::Inspector::AgentFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assessmentRunAgents, passing the object as the first parameter, and the string 'assessmentRunAgents' as the second parameter 

If not, it will return a a L<Paws::Inspector::ListAssessmentRunAgentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssessmentRuns(sub { },[AssessmentTemplateArns => ArrayRef[Str|Undef], Filter => L<Paws::Inspector::AssessmentRunFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllAssessmentRuns([AssessmentTemplateArns => ArrayRef[Str|Undef], Filter => L<Paws::Inspector::AssessmentRunFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assessmentRunArns, passing the object as the first parameter, and the string 'assessmentRunArns' as the second parameter 

If not, it will return a a L<Paws::Inspector::ListAssessmentRunsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssessmentTargets(sub { },[Filter => L<Paws::Inspector::AssessmentTargetFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllAssessmentTargets([Filter => L<Paws::Inspector::AssessmentTargetFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assessmentTargetArns, passing the object as the first parameter, and the string 'assessmentTargetArns' as the second parameter 

If not, it will return a a L<Paws::Inspector::ListAssessmentTargetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssessmentTemplates(sub { },[AssessmentTargetArns => ArrayRef[Str|Undef], Filter => L<Paws::Inspector::AssessmentTemplateFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllAssessmentTemplates([AssessmentTargetArns => ArrayRef[Str|Undef], Filter => L<Paws::Inspector::AssessmentTemplateFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assessmentTemplateArns, passing the object as the first parameter, and the string 'assessmentTemplateArns' as the second parameter 

If not, it will return a a L<Paws::Inspector::ListAssessmentTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEventSubscriptions(sub { },[MaxResults => Int, NextToken => Str, ResourceArn => Str])

=head2 ListAllEventSubscriptions([MaxResults => Int, NextToken => Str, ResourceArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - subscriptions, passing the object as the first parameter, and the string 'subscriptions' as the second parameter 

If not, it will return a a L<Paws::Inspector::ListEventSubscriptionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExclusions(sub { },AssessmentRunArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllExclusions(AssessmentRunArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - exclusionArns, passing the object as the first parameter, and the string 'exclusionArns' as the second parameter 

If not, it will return a a L<Paws::Inspector::ListExclusionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFindings(sub { },[AssessmentRunArns => ArrayRef[Str|Undef], Filter => L<Paws::Inspector::FindingFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllFindings([AssessmentRunArns => ArrayRef[Str|Undef], Filter => L<Paws::Inspector::FindingFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - findingArns, passing the object as the first parameter, and the string 'findingArns' as the second parameter 

If not, it will return a a L<Paws::Inspector::ListFindingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRulesPackages(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllRulesPackages([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - rulesPackageArns, passing the object as the first parameter, and the string 'rulesPackageArns' as the second parameter 

If not, it will return a a L<Paws::Inspector::ListRulesPackagesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 PreviewAllAgents(sub { },PreviewAgentsArn => Str, [MaxResults => Int, NextToken => Str])

=head2 PreviewAllAgents(PreviewAgentsArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - agentPreviews, passing the object as the first parameter, and the string 'agentPreviews' as the second parameter 

If not, it will return a a L<Paws::Inspector::PreviewAgentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

