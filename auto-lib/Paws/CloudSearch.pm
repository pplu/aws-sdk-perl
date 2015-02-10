
use Paws::API;


package Paws::CloudSearch {
  use Moose;
  sub service { 'cloudsearch' }
  sub version { '2013-01-01' }
  sub flattened_arrays { 0 }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  
  sub BuildSuggesters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::BuildSuggesters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::CreateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DefineAnalysisScheme {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DefineAnalysisScheme', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DefineExpression {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DefineExpression', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DefineIndexField {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DefineIndexField', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DefineSuggester {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DefineSuggester', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAnalysisScheme {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DeleteAnalysisScheme', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DeleteDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteExpression {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DeleteExpression', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIndexField {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DeleteIndexField', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSuggester {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DeleteSuggester', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAnalysisSchemes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DescribeAnalysisSchemes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAvailabilityOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DescribeAvailabilityOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DescribeDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExpressions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DescribeExpressions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIndexFields {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DescribeIndexFields', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScalingParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DescribeScalingParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeServiceAccessPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DescribeServiceAccessPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSuggesters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DescribeSuggesters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub IndexDocuments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::IndexDocuments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomainNames {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::ListDomainNames', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAvailabilityOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::UpdateAvailabilityOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateScalingParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::UpdateScalingParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceAccessPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::UpdateServiceAccessPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch - Perl Interface to AWS Amazon CloudSearch

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



Amazon CloudSearch Configuration Service

You use the Amazon CloudSearch configuration service to create,
configure, and manage search domains. Configuration service requests
are submitted using the AWS Query protocol. AWS Query requests are HTTP
or HTTPS requests submitted via HTTP GET or POST with a query parameter
named Action.

The endpoint for configuration service requests is region-specific:
cloudsearch.I<region>.amazonaws.com. For example,
cloudsearch.us-east-1.amazonaws.com. For a current list of supported
regions and endpoints, see Regions and Endpoints.










=head1 METHODS

=head2 BuildSuggesters()

  Arguments described in: L<Paws::CloudSearch::BuildSuggesters>

  Returns: L<Paws::CloudSearch::BuildSuggestersResponse>

  

Indexes the search suggestions. For more information, see Configuring
Suggesters in the I<Amazon CloudSearch Developer Guide>.











=head2 CreateDomain()

  Arguments described in: L<Paws::CloudSearch::CreateDomain>

  Returns: L<Paws::CloudSearch::CreateDomainResponse>

  

Creates a new search domain. For more information, see Creating a
Search Domain in the I<Amazon CloudSearch Developer Guide>.











=head2 DefineAnalysisScheme()

  Arguments described in: L<Paws::CloudSearch::DefineAnalysisScheme>

  Returns: L<Paws::CloudSearch::DefineAnalysisSchemeResponse>

  

Configures an analysis scheme that can be applied to a C<text> or
C<text-array> field to define language-specific text processing
options. For more information, see Configuring Analysis Schemes in the
I<Amazon CloudSearch Developer Guide>.











=head2 DefineExpression()

  Arguments described in: L<Paws::CloudSearch::DefineExpression>

  Returns: L<Paws::CloudSearch::DefineExpressionResponse>

  

Configures an C<Expression> for the search domain. Used to create new
expressions and modify existing ones. If the expression exists, the new
configuration replaces the old one. For more information, see
Configuring Expressions in the I<Amazon CloudSearch Developer Guide>.











=head2 DefineIndexField()

  Arguments described in: L<Paws::CloudSearch::DefineIndexField>

  Returns: L<Paws::CloudSearch::DefineIndexFieldResponse>

  

Configures an C<IndexField> for the search domain. Used to create new
fields and modify existing ones. You must specify the name of the
domain you are configuring and an index field configuration. The index
field configuration specifies a unique name, the index field type, and
the options you want to configure for the field. The options you can
specify depend on the C<IndexFieldType>. If the field exists, the new
configuration replaces the old one. For more information, see
Configuring Index Fields in the I<Amazon CloudSearch Developer Guide>.











=head2 DefineSuggester()

  Arguments described in: L<Paws::CloudSearch::DefineSuggester>

  Returns: L<Paws::CloudSearch::DefineSuggesterResponse>

  

Configures a suggester for a domain. A suggester enables you to display
possible matches before users finish typing their queries. When you
configure a suggester, you must specify the name of the text field you
want to search for possible matches and a unique name for the
suggester. For more information, see Getting Search Suggestions in the
I<Amazon CloudSearch Developer Guide>.











=head2 DeleteAnalysisScheme()

  Arguments described in: L<Paws::CloudSearch::DeleteAnalysisScheme>

  Returns: L<Paws::CloudSearch::DeleteAnalysisSchemeResponse>

  

Deletes an analysis scheme. For more information, see Configuring
Analysis Schemes in the I<Amazon CloudSearch Developer Guide>.











=head2 DeleteDomain()

  Arguments described in: L<Paws::CloudSearch::DeleteDomain>

  Returns: L<Paws::CloudSearch::DeleteDomainResponse>

  

Permanently deletes a search domain and all of its data. Once a domain
has been deleted, it cannot be recovered. For more information, see
Deleting a Search Domain in the I<Amazon CloudSearch Developer Guide>.











=head2 DeleteExpression()

  Arguments described in: L<Paws::CloudSearch::DeleteExpression>

  Returns: L<Paws::CloudSearch::DeleteExpressionResponse>

  

Removes an C<Expression> from the search domain. For more information,
see Configuring Expressions in the I<Amazon CloudSearch Developer
Guide>.











=head2 DeleteIndexField()

  Arguments described in: L<Paws::CloudSearch::DeleteIndexField>

  Returns: L<Paws::CloudSearch::DeleteIndexFieldResponse>

  

Removes an C<IndexField> from the search domain. For more information,
see Configuring Index Fields in the I<Amazon CloudSearch Developer
Guide>.











=head2 DeleteSuggester()

  Arguments described in: L<Paws::CloudSearch::DeleteSuggester>

  Returns: L<Paws::CloudSearch::DeleteSuggesterResponse>

  

Deletes a suggester. For more information, see Getting Search
Suggestions in the I<Amazon CloudSearch Developer Guide>.











=head2 DescribeAnalysisSchemes()

  Arguments described in: L<Paws::CloudSearch::DescribeAnalysisSchemes>

  Returns: L<Paws::CloudSearch::DescribeAnalysisSchemesResponse>

  

Gets the analysis schemes configured for a domain. An analysis scheme
defines language-specific text processing options for a C<text> field.
Can be limited to specific analysis schemes by name. By default, shows
all analysis schemes and includes any pending changes to the
configuration. Set the C<Deployed> option to C<true> to show the active
configuration and exclude pending changes. For more information, see
Configuring Analysis Schemes in the I<Amazon CloudSearch Developer
Guide>.











=head2 DescribeAvailabilityOptions()

  Arguments described in: L<Paws::CloudSearch::DescribeAvailabilityOptions>

  Returns: L<Paws::CloudSearch::DescribeAvailabilityOptionsResponse>

  

Gets the availability options configured for a domain. By default,
shows the configuration with any pending changes. Set the C<Deployed>
option to C<true> to show the active configuration and exclude pending
changes. For more information, see Configuring Availability Options in
the I<Amazon CloudSearch Developer Guide>.











=head2 DescribeDomains()

  Arguments described in: L<Paws::CloudSearch::DescribeDomains>

  Returns: L<Paws::CloudSearch::DescribeDomainsResponse>

  

Gets information about the search domains owned by this account. Can be
limited to specific domains. Shows all domains by default. To get the
number of searchable documents in a domain, use the console or submit a
C<matchall> request to your domain's search endpoint:
C<q=matchall&amp;q.parser=structured&amp;size=0>. For more information,
see Getting Information about a Search Domain in the I<Amazon
CloudSearch Developer Guide>.











=head2 DescribeExpressions()

  Arguments described in: L<Paws::CloudSearch::DescribeExpressions>

  Returns: L<Paws::CloudSearch::DescribeExpressionsResponse>

  

Gets the expressions configured for the search domain. Can be limited
to specific expressions by name. By default, shows all expressions and
includes any pending changes to the configuration. Set the C<Deployed>
option to C<true> to show the active configuration and exclude pending
changes. For more information, see Configuring Expressions in the
I<Amazon CloudSearch Developer Guide>.











=head2 DescribeIndexFields()

  Arguments described in: L<Paws::CloudSearch::DescribeIndexFields>

  Returns: L<Paws::CloudSearch::DescribeIndexFieldsResponse>

  

Gets information about the index fields configured for the search
domain. Can be limited to specific fields by name. By default, shows
all fields and includes any pending changes to the configuration. Set
the C<Deployed> option to C<true> to show the active configuration and
exclude pending changes. For more information, see Getting Domain
Information in the I<Amazon CloudSearch Developer Guide>.











=head2 DescribeScalingParameters()

  Arguments described in: L<Paws::CloudSearch::DescribeScalingParameters>

  Returns: L<Paws::CloudSearch::DescribeScalingParametersResponse>

  

Gets the scaling parameters configured for a domain. A domain's scaling
parameters specify the desired search instance type and replication
count. For more information, see Configuring Scaling Options in the
I<Amazon CloudSearch Developer Guide>.











=head2 DescribeServiceAccessPolicies()

  Arguments described in: L<Paws::CloudSearch::DescribeServiceAccessPolicies>

  Returns: L<Paws::CloudSearch::DescribeServiceAccessPoliciesResponse>

  

Gets information about the access policies that control access to the
domain's document and search endpoints. By default, shows the
configuration with any pending changes. Set the C<Deployed> option to
C<true> to show the active configuration and exclude pending changes.
For more information, see Configuring Access for a Search Domain in the
I<Amazon CloudSearch Developer Guide>.











=head2 DescribeSuggesters()

  Arguments described in: L<Paws::CloudSearch::DescribeSuggesters>

  Returns: L<Paws::CloudSearch::DescribeSuggestersResponse>

  

Gets the suggesters configured for a domain. A suggester enables you to
display possible matches before users finish typing their queries. Can
be limited to specific suggesters by name. By default, shows all
suggesters and includes any pending changes to the configuration. Set
the C<Deployed> option to C<true> to show the active configuration and
exclude pending changes. For more information, see Getting Search
Suggestions in the I<Amazon CloudSearch Developer Guide>.











=head2 IndexDocuments()

  Arguments described in: L<Paws::CloudSearch::IndexDocuments>

  Returns: L<Paws::CloudSearch::IndexDocumentsResponse>

  

Tells the search domain to start indexing its documents using the
latest indexing options. This operation must be invoked to activate
options whose OptionStatus is C<RequiresIndexDocuments>.











=head2 ListDomainNames()

  Arguments described in: L<Paws::CloudSearch::ListDomainNames>

  Returns: L<Paws::CloudSearch::ListDomainNamesResponse>

  

Lists all search domains owned by an account.











=head2 UpdateAvailabilityOptions()

  Arguments described in: L<Paws::CloudSearch::UpdateAvailabilityOptions>

  Returns: L<Paws::CloudSearch::UpdateAvailabilityOptionsResponse>

  

Configures the availability options for a domain. Enabling the Multi-AZ
option expands an Amazon CloudSearch domain to an additional
Availability Zone in the same Region to increase fault tolerance in the
event of a service disruption. Changes to the Multi-AZ option can take
about half an hour to become active. For more information, see
Configuring Availability Options in the I<Amazon CloudSearch Developer
Guide>.











=head2 UpdateScalingParameters()

  Arguments described in: L<Paws::CloudSearch::UpdateScalingParameters>

  Returns: L<Paws::CloudSearch::UpdateScalingParametersResponse>

  

Configures scaling parameters for a domain. A domain's scaling
parameters specify the desired search instance type and replication
count. Amazon CloudSearch will still automatically scale your domain
based on the volume of data and traffic, but not below the desired
instance type and replication count. If the Multi-AZ option is enabled,
these values control the resources used per Availability Zone. For more
information, see Configuring Scaling Options in the I<Amazon
CloudSearch Developer Guide>.











=head2 UpdateServiceAccessPolicies()

  Arguments described in: L<Paws::CloudSearch::UpdateServiceAccessPolicies>

  Returns: L<Paws::CloudSearch::UpdateServiceAccessPoliciesResponse>

  

Configures the access rules that control access to the domain's
document and search endpoints. For more information, see Configuring
Access for an Amazon CloudSearch Domain.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

