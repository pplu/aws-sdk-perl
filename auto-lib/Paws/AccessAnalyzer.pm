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
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AccessAnalyzer::ListTagsForResource', @_);
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
  


  sub operations { qw/CreateAnalyzer CreateArchiveRule DeleteAnalyzer DeleteArchiveRule GetAnalyzedResource GetAnalyzer GetArchiveRule GetFinding ListAnalyzedResources ListAnalyzers ListArchiveRules ListFindings ListTagsForResource StartResourceScan TagResource UntagResource UpdateArchiveRule UpdateFindings / }

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

AWS IAM Access Analyzer API Reference

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer-2019-11-01>


=head1 METHODS

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

Creates an analyzer with a zone of trust set to your account.


=head2 CreateArchiveRule

=over

=item AnalyzerName => Str

=item Filter => L<Paws::AccessAnalyzer::FilterCriteriaMap>

=item RuleName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::CreateArchiveRule>

Returns: nothing

Creates an archive rule for the specified analyzer.


=head2 DeleteAnalyzer

=over

=item AnalyzerName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::DeleteAnalyzer>

Returns: nothing

Deletes the specified analyzer. When you delete an analyzer, Access
Analyzer is disabled for the account in the current or specific Region.
All findings that were generated by the analyzer are deleted. You
cannot undo this action.


=head2 DeleteArchiveRule

=over

=item AnalyzerName => Str

=item RuleName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::DeleteArchiveRule>

Returns: nothing

Deletes the specified archive rule.


=head2 GetAnalyzedResource

=over

=item AnalyzerArn => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::GetAnalyzedResource>

Returns: a L<Paws::AccessAnalyzer::GetAnalyzedResourceResponse> instance

Retrieves information about an analyzed resource.


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


=head2 GetFinding

=over

=item AnalyzerArn => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::GetFinding>

Returns: a L<Paws::AccessAnalyzer::GetFindingResponse> instance

Retrieves information about the specified finding.


=head2 ListAnalyzedResources

=over

=item AnalyzerArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::ListAnalyzedResources>

Returns: a L<Paws::AccessAnalyzer::ListAnalyzedResourcesResponse> instance

Retrieves a list of resources that have been analyzed.


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


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::ListTagsForResource>

Returns: a L<Paws::AccessAnalyzer::ListTagsForResourceResponse> instance

Retrieves a list of tags applied to the specified resource.


=head2 StartResourceScan

=over

=item AnalyzerArn => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AccessAnalyzer::StartResourceScan>

Returns: nothing

Starts a scan of the policies applied to the specified resource.


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

Updates the specified archive rule.


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

Updates findings with the new values provided in the request.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

