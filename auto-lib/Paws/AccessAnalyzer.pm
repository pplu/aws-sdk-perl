package Paws::AccessAnalyzer;
  use Moose;
  sub service { 'access-analyzer' }
  sub signing_name { 'access-analyzer' }
  sub version { '2019-11-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub ApplyArchiveRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::ApplyArchiveRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelPolicyGeneration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::CancelPolicyGeneration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAccessPreview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::CreateAccessPreview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAnalyzer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::CreateAnalyzer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateArchiveRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::CreateArchiveRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAnalyzer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::DeleteAnalyzer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteArchiveRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::DeleteArchiveRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccessPreview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::GetAccessPreview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAnalyzedResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::GetAnalyzedResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAnalyzer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::GetAnalyzer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetArchiveRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::GetArchiveRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFinding {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::GetFinding', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGeneratedPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::GetGeneratedPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccessPreviewFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::ListAccessPreviewFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccessPreviews {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::ListAccessPreviews', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnalyzedResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::ListAnalyzedResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnalyzers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::ListAnalyzers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListArchiveRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::ListArchiveRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::ListFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicyGenerations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::ListPolicyGenerations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartPolicyGeneration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::StartPolicyGeneration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartResourceScan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::StartResourceScan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateArchiveRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::UpdateArchiveRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::UpdateFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidatePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::ValidatePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAccessPreviewFindings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccessPreviewFindings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAccessPreviewFindings(@_, nextToken => $next_result->nextToken);
        push @{ $result->findings }, @{ $next_result->findings };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'findings') foreach (@{ $result->findings });
        $result = $self->ListAccessPreviewFindings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'findings') foreach (@{ $result->findings });
    }

    return undef
  }
  sub ListAllAccessPreviews {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccessPreviews(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAccessPreviews(@_, nextToken => $next_result->nextToken);
        push @{ $result->accessPreviews }, @{ $next_result->accessPreviews };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'accessPreviews') foreach (@{ $result->accessPreviews });
        $result = $self->ListAccessPreviews(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'accessPreviews') foreach (@{ $result->accessPreviews });
    }

    return undef
  }
  sub ListAllAnalyzedResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAnalyzedResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAnalyzedResources(@_, nextToken => $next_result->nextToken);
        push @{ $result->analyzedResources }, @{ $next_result->analyzedResources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'analyzedResources') foreach (@{ $result->analyzedResources });
        $result = $self->ListAnalyzedResources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'analyzedResources') foreach (@{ $result->analyzedResources });
    }

    return undef
  }
  sub ListAllAnalyzers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAnalyzers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAnalyzers(@_, nextToken => $next_result->nextToken);
        push @{ $result->analyzers }, @{ $next_result->analyzers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'analyzers') foreach (@{ $result->analyzers });
        $result = $self->ListAnalyzers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'analyzers') foreach (@{ $result->analyzers });
    }

    return undef
  }
  sub ListAllArchiveRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListArchiveRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListArchiveRules(@_, nextToken => $next_result->nextToken);
        push @{ $result->archiveRules }, @{ $next_result->archiveRules };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'archiveRules') foreach (@{ $result->archiveRules });
        $result = $self->ListArchiveRules(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'archiveRules') foreach (@{ $result->archiveRules });
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
        push @{ $result->findings }, @{ $next_result->findings };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'findings') foreach (@{ $result->findings });
        $result = $self->ListFindings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'findings') foreach (@{ $result->findings });
    }

    return undef
  }
  sub ListAllPolicyGenerations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPolicyGenerations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPolicyGenerations(@_, nextToken => $next_result->nextToken);
        push @{ $result->policyGenerations }, @{ $next_result->policyGenerations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'policyGenerations') foreach (@{ $result->policyGenerations });
        $result = $self->ListPolicyGenerations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'policyGenerations') foreach (@{ $result->policyGenerations });
    }

    return undef
  }
  sub ValidateAllPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ValidatePolicy(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ValidatePolicy(@_, nextToken => $next_result->nextToken);
        push @{ $result->findings }, @{ $next_result->findings };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'findings') foreach (@{ $result->findings });
        $result = $self->ValidatePolicy(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'findings') foreach (@{ $result->findings });
    }

    return undef
  }


  sub operations { qw/ApplyArchiveRule CancelPolicyGeneration CreateAccessPreview CreateAnalyzer CreateArchiveRule DeleteAnalyzer DeleteArchiveRule GetAccessPreview GetAnalyzedResource GetAnalyzer GetArchiveRule GetFinding GetGeneratedPolicy ListAccessPreviewFindings ListAccessPreviews ListAnalyzedResources ListAnalyzers ListArchiveRules ListFindings ListPolicyGenerations ListTagsForResource StartPolicyGeneration StartResourceScan TagResource UntagResource UpdateArchiveRule UpdateFindings ValidatePolicy / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer - Perl Interface to AWS Access Analyzer

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AccessAnalyzer');
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

AWS IAM Access Analyzer helps identify potential resource-access risks
by enabling you to identify any policies that grant access to an
external principal. It does this by using logic-based reasoning to
analyze resource-based policies in your AWS environment. An external
principal can be another AWS account, a root user, an IAM user or role,
a federated user, an AWS service, or an anonymous user. You can also
use Access Analyzer to preview and validate public and cross-account
access to your resources before deploying permissions changes. This
guide describes the AWS IAM Access Analyzer operations that you can
call programmatically. For general information about Access Analyzer,
see AWS IAM Access Analyzer
(https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html)
in the B<IAM User Guide>.

To start using Access Analyzer, you first need to create an analyzer.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer-2019-11-01>


=head1 METHODS

=head2 ApplyArchiveRule

=over

=item AnalyzerArn => Str

=item RuleName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::ApplyArchiveRule>

Returns: nothing

Retroactively applies the archive rule to existing findings that meet
the archive rule criteria.


=head2 CancelPolicyGeneration

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::CancelPolicyGeneration>

Returns: a L<Paws::AccessAnalyzer::CancelPolicyGenerationResponse> instance

Cancels the requested policy generation.


=head2 CreateAccessPreview

=over

=item AnalyzerArn => Str

=item Configurations => L<Paws::AccessAnalyzer::ConfigurationsMap>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::CreateAccessPreview>

Returns: a L<Paws::AccessAnalyzer::CreateAccessPreviewResponse> instance

Creates an access preview that allows you to preview Access Analyzer
findings for your resource before deploying resource permissions.


=head2 CreateAnalyzer

=over

=item AnalyzerName => Str

=item Type => Str

=item [ArchiveRules => ArrayRef[L<Paws::AccessAnalyzer::InlineArchiveRule>]]

=item [ClientToken => Str]

=item [Tags => L<Paws::AccessAnalyzer::TagsMap>]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::CreateAnalyzer>

Returns: a L<Paws::AccessAnalyzer::CreateAnalyzerResponse> instance

Creates an analyzer for your account.


=head2 CreateArchiveRule

=over

=item AnalyzerName => Str

=item Filter => L<Paws::AccessAnalyzer::FilterCriteriaMap>

=item RuleName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::CreateArchiveRule>

Returns: nothing

Creates an archive rule for the specified analyzer. Archive rules
automatically archive new findings that meet the criteria you define
when you create the rule.

To learn about filter keys that you can use to create an archive rule,
see Access Analyzer filter keys
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html)
in the B<IAM User Guide>.


=head2 DeleteAnalyzer

=over

=item AnalyzerName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::DeleteAnalyzer>

Returns: nothing

Deletes the specified analyzer. When you delete an analyzer, Access
Analyzer is disabled for the account or organization in the current or
specific Region. All findings that were generated by the analyzer are
deleted. You cannot undo this action.


=head2 DeleteArchiveRule

=over

=item AnalyzerName => Str

=item RuleName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::DeleteArchiveRule>

Returns: nothing

Deletes the specified archive rule.


=head2 GetAccessPreview

=over

=item AccessPreviewId => Str

=item AnalyzerArn => Str


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::GetAccessPreview>

Returns: a L<Paws::AccessAnalyzer::GetAccessPreviewResponse> instance

Retrieves information about an access preview for the specified
analyzer.


=head2 GetAnalyzedResource

=over

=item AnalyzerArn => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::GetAnalyzedResource>

Returns: a L<Paws::AccessAnalyzer::GetAnalyzedResourceResponse> instance

Retrieves information about a resource that was analyzed.


=head2 GetAnalyzer

=over

=item AnalyzerName => Str


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::GetAnalyzer>

Returns: a L<Paws::AccessAnalyzer::GetAnalyzerResponse> instance

Retrieves information about the specified analyzer.


=head2 GetArchiveRule

=over

=item AnalyzerName => Str

=item RuleName => Str


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::GetArchiveRule>

Returns: a L<Paws::AccessAnalyzer::GetArchiveRuleResponse> instance

Retrieves information about an archive rule.

To learn about filter keys that you can use to create an archive rule,
see Access Analyzer filter keys
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html)
in the B<IAM User Guide>.


=head2 GetFinding

=over

=item AnalyzerArn => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::GetFinding>

Returns: a L<Paws::AccessAnalyzer::GetFindingResponse> instance

Retrieves information about the specified finding.


=head2 GetGeneratedPolicy

=over

=item JobId => Str

=item [IncludeResourcePlaceholders => Bool]

=item [IncludeServiceLevelTemplate => Bool]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::GetGeneratedPolicy>

Returns: a L<Paws::AccessAnalyzer::GetGeneratedPolicyResponse> instance

Retrieves the policy that was generated using C<StartPolicyGeneration>.


=head2 ListAccessPreviewFindings

=over

=item AccessPreviewId => Str

=item AnalyzerArn => Str

=item [Filter => L<Paws::AccessAnalyzer::FilterCriteriaMap>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::ListAccessPreviewFindings>

Returns: a L<Paws::AccessAnalyzer::ListAccessPreviewFindingsResponse> instance

Retrieves a list of access preview findings generated by the specified
access preview.


=head2 ListAccessPreviews

=over

=item AnalyzerArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::ListAccessPreviews>

Returns: a L<Paws::AccessAnalyzer::ListAccessPreviewsResponse> instance

Retrieves a list of access previews for the specified analyzer.


=head2 ListAnalyzedResources

=over

=item AnalyzerArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::ListAnalyzedResources>

Returns: a L<Paws::AccessAnalyzer::ListAnalyzedResourcesResponse> instance

Retrieves a list of resources of the specified type that have been
analyzed by the specified analyzer..


=head2 ListAnalyzers

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::ListAnalyzers>

Returns: a L<Paws::AccessAnalyzer::ListAnalyzersResponse> instance

Retrieves a list of analyzers.


=head2 ListArchiveRules

=over

=item AnalyzerName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::ListArchiveRules>

Returns: a L<Paws::AccessAnalyzer::ListArchiveRulesResponse> instance

Retrieves a list of archive rules created for the specified analyzer.


=head2 ListFindings

=over

=item AnalyzerArn => Str

=item [Filter => L<Paws::AccessAnalyzer::FilterCriteriaMap>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => L<Paws::AccessAnalyzer::SortCriteria>]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::ListFindings>

Returns: a L<Paws::AccessAnalyzer::ListFindingsResponse> instance

Retrieves a list of findings generated by the specified analyzer.

To learn about filter keys that you can use to retrieve a list of
findings, see Access Analyzer filter keys
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html)
in the B<IAM User Guide>.


=head2 ListPolicyGenerations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PrincipalArn => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::ListPolicyGenerations>

Returns: a L<Paws::AccessAnalyzer::ListPolicyGenerationsResponse> instance

Lists all of the policy generations requested in the last seven days.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::ListTagsForResource>

Returns: a L<Paws::AccessAnalyzer::ListTagsForResourceResponse> instance

Retrieves a list of tags applied to the specified resource.


=head2 StartPolicyGeneration

=over

=item PolicyGenerationDetails => L<Paws::AccessAnalyzer::PolicyGenerationDetails>

=item [ClientToken => Str]

=item [CloudTrailDetails => L<Paws::AccessAnalyzer::CloudTrailDetails>]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::StartPolicyGeneration>

Returns: a L<Paws::AccessAnalyzer::StartPolicyGenerationResponse> instance

Starts the policy generation request.


=head2 StartResourceScan

=over

=item AnalyzerArn => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::StartResourceScan>

Returns: nothing

Immediately starts a scan of the policies applied to the specified
resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::AccessAnalyzer::TagsMap>


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::TagResource>

Returns: a L<Paws::AccessAnalyzer::TagResourceResponse> instance

Adds a tag to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::UntagResource>

Returns: a L<Paws::AccessAnalyzer::UntagResourceResponse> instance

Removes a tag from the specified resource.


=head2 UpdateArchiveRule

=over

=item AnalyzerName => Str

=item Filter => L<Paws::AccessAnalyzer::FilterCriteriaMap>

=item RuleName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::UpdateArchiveRule>

Returns: nothing

Updates the criteria and values for the specified archive rule.


=head2 UpdateFindings

=over

=item AnalyzerArn => Str

=item Status => Str

=item [ClientToken => Str]

=item [Ids => ArrayRef[Str|Undef]]

=item [ResourceArn => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::UpdateFindings>

Returns: nothing

Updates the status for the specified findings.


=head2 ValidatePolicy

=over

=item PolicyDocument => Str

=item PolicyType => Str

=item [Locale => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::ValidatePolicy>

Returns: a L<Paws::AccessAnalyzer::ValidatePolicyResponse> instance

Requests the validation of a policy and returns a list of findings. The
findings help you identify issues and provide actionable
recommendations to resolve the issue and enable you to author
functional policies that meet security best practices.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAccessPreviewFindings(sub { },AccessPreviewId => Str, AnalyzerArn => Str, [Filter => L<Paws::AccessAnalyzer::FilterCriteriaMap>, MaxResults => Int, NextToken => Str])

=head2 ListAllAccessPreviewFindings(AccessPreviewId => Str, AnalyzerArn => Str, [Filter => L<Paws::AccessAnalyzer::FilterCriteriaMap>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - findings, passing the object as the first parameter, and the string 'findings' as the second parameter 

If not, it will return a a L<Paws::AccessAnalyzer::ListAccessPreviewFindingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAccessPreviews(sub { },AnalyzerArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAccessPreviews(AnalyzerArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - accessPreviews, passing the object as the first parameter, and the string 'accessPreviews' as the second parameter 

If not, it will return a a L<Paws::AccessAnalyzer::ListAccessPreviewsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAnalyzedResources(sub { },AnalyzerArn => Str, [MaxResults => Int, NextToken => Str, ResourceType => Str])

=head2 ListAllAnalyzedResources(AnalyzerArn => Str, [MaxResults => Int, NextToken => Str, ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - analyzedResources, passing the object as the first parameter, and the string 'analyzedResources' as the second parameter 

If not, it will return a a L<Paws::AccessAnalyzer::ListAnalyzedResourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAnalyzers(sub { },[MaxResults => Int, NextToken => Str, Type => Str])

=head2 ListAllAnalyzers([MaxResults => Int, NextToken => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - analyzers, passing the object as the first parameter, and the string 'analyzers' as the second parameter 

If not, it will return a a L<Paws::AccessAnalyzer::ListAnalyzersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllArchiveRules(sub { },AnalyzerName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllArchiveRules(AnalyzerName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - archiveRules, passing the object as the first parameter, and the string 'archiveRules' as the second parameter 

If not, it will return a a L<Paws::AccessAnalyzer::ListArchiveRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFindings(sub { },AnalyzerArn => Str, [Filter => L<Paws::AccessAnalyzer::FilterCriteriaMap>, MaxResults => Int, NextToken => Str, Sort => L<Paws::AccessAnalyzer::SortCriteria>])

=head2 ListAllFindings(AnalyzerArn => Str, [Filter => L<Paws::AccessAnalyzer::FilterCriteriaMap>, MaxResults => Int, NextToken => Str, Sort => L<Paws::AccessAnalyzer::SortCriteria>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - findings, passing the object as the first parameter, and the string 'findings' as the second parameter 

If not, it will return a a L<Paws::AccessAnalyzer::ListFindingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPolicyGenerations(sub { },[MaxResults => Int, NextToken => Str, PrincipalArn => Str])

=head2 ListAllPolicyGenerations([MaxResults => Int, NextToken => Str, PrincipalArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - policyGenerations, passing the object as the first parameter, and the string 'policyGenerations' as the second parameter 

If not, it will return a a L<Paws::AccessAnalyzer::ListPolicyGenerationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ValidateAllPolicies(sub { },PolicyDocument => Str, PolicyType => Str, [Locale => Str, MaxResults => Int, NextToken => Str])

=head2 ValidateAllPolicies(PolicyDocument => Str, PolicyType => Str, [Locale => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - findings, passing the object as the first parameter, and the string 'findings' as the second parameter 

If not, it will return a a L<Paws::AccessAnalyzer::ValidatePolicyResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

