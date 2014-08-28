
use AWS::API;


package Aws::CloudSearch {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cloudsearch');
  has version => (is => 'ro', isa => 'Str', default => '2013-01-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub BuildSuggesters {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::BuildSuggesters', @_);
  }
  sub CreateDomain {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::CreateDomain', @_);
  }
  sub DefineAnalysisScheme {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DefineAnalysisScheme', @_);
  }
  sub DefineExpression {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DefineExpression', @_);
  }
  sub DefineIndexField {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DefineIndexField', @_);
  }
  sub DefineSuggester {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DefineSuggester', @_);
  }
  sub DeleteAnalysisScheme {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DeleteAnalysisScheme', @_);
  }
  sub DeleteDomain {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DeleteDomain', @_);
  }
  sub DeleteExpression {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DeleteExpression', @_);
  }
  sub DeleteIndexField {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DeleteIndexField', @_);
  }
  sub DeleteSuggester {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DeleteSuggester', @_);
  }
  sub DescribeAnalysisSchemes {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DescribeAnalysisSchemes', @_);
  }
  sub DescribeAvailabilityOptions {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DescribeAvailabilityOptions', @_);
  }
  sub DescribeDomains {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DescribeDomains', @_);
  }
  sub DescribeExpressions {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DescribeExpressions', @_);
  }
  sub DescribeIndexFields {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DescribeIndexFields', @_);
  }
  sub DescribeScalingParameters {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DescribeScalingParameters', @_);
  }
  sub DescribeServiceAccessPolicies {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DescribeServiceAccessPolicies', @_);
  }
  sub DescribeSuggesters {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DescribeSuggesters', @_);
  }
  sub IndexDocuments {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::IndexDocuments', @_);
  }
  sub ListDomainNames {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::ListDomainNames', @_);
  }
  sub UpdateAvailabilityOptions {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::UpdateAvailabilityOptions', @_);
  }
  sub UpdateScalingParameters {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::UpdateScalingParameters', @_);
  }
  sub UpdateServiceAccessPolicies {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::UpdateServiceAccessPolicies', @_);
  }
}
1;