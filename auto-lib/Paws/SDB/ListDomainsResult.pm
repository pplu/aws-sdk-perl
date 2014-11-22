
package Paws::SDB::ListDomainsResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has DomainNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;