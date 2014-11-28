
package Paws::CloudSearchDomain::Search {
  use Moose;
  has cursor => (is => 'ro', isa => 'Str');
  has expr => (is => 'ro', isa => 'Str');
  has facet => (is => 'ro', isa => 'Str');
  has filterQuery => (is => 'ro', isa => 'Str');
  has highlight => (is => 'ro', isa => 'Str');
  has partial => (is => 'ro', isa => 'Bool');
  has query => (is => 'ro', isa => 'Str', required => 1);
  has queryOptions => (is => 'ro', isa => 'Str');
  has queryParser => (is => 'ro', isa => 'Str');
  has return => (is => 'ro', isa => 'Str');
  has size => (is => 'ro', isa => 'Num');
  has sort => (is => 'ro', isa => 'Str');
  has start => (is => 'ro', isa => 'Num');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Search');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudSearchDomain::SearchResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SearchResult');
}
1;