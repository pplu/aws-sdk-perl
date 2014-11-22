
use Paws::API;


package Paws::CloudSearch {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cloudsearch');
  has version => (is => 'ro', isa => 'Str', default => '2013-01-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::XMLResponse');

  
  sub BuildSuggesters {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::BuildSuggesters', @_);
  }
  sub CreateDomain {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::CreateDomain', @_);
  }
  sub DefineAnalysisScheme {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::DefineAnalysisScheme', @_);
  }
  sub DefineExpression {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::DefineExpression', @_);
  }
  sub DefineIndexField {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::DefineIndexField', @_);
  }
  sub DefineSuggester {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::DefineSuggester', @_);
  }
  sub DeleteAnalysisScheme {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::DeleteAnalysisScheme', @_);
  }
  sub DeleteDomain {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::DeleteDomain', @_);
  }
  sub DeleteExpression {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::DeleteExpression', @_);
  }
  sub DeleteIndexField {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::DeleteIndexField', @_);
  }
  sub DeleteSuggester {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::DeleteSuggester', @_);
  }
  sub DescribeAnalysisSchemes {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::DescribeAnalysisSchemes', @_);
  }
  sub DescribeAvailabilityOptions {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::DescribeAvailabilityOptions', @_);
  }
  sub DescribeDomains {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::DescribeDomains', @_);
  }
  sub DescribeExpressions {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::DescribeExpressions', @_);
  }
  sub DescribeIndexFields {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::DescribeIndexFields', @_);
  }
  sub DescribeScalingParameters {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::DescribeScalingParameters', @_);
  }
  sub DescribeServiceAccessPolicies {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::DescribeServiceAccessPolicies', @_);
  }
  sub DescribeSuggesters {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::DescribeSuggesters', @_);
  }
  sub IndexDocuments {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::IndexDocuments', @_);
  }
  sub ListDomainNames {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::ListDomainNames', @_);
  }
  sub UpdateAvailabilityOptions {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::UpdateAvailabilityOptions', @_);
  }
  sub UpdateScalingParameters {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::UpdateScalingParameters', @_);
  }
  sub UpdateServiceAccessPolicies {
    my $self = shift;
    return $self->do_call('Paws::CloudSearch::UpdateServiceAccessPolicies', @_);
  }
}
1;