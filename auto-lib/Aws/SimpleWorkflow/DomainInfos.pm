
package Aws::SimpleWorkflow::DomainInfos {
  use Moose;
  with 'AWS::API::ResultParser';
  has domainInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::DomainInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
1;