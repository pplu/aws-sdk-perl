
package Paws::SimpleWorkflow::DomainInfos {
  use Moose;
  with 'Paws::API::ResultParser';
  has domainInfos => (is => 'ro', isa => 'ArrayRef[Paws::SimpleWorkflow::DomainInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
1;