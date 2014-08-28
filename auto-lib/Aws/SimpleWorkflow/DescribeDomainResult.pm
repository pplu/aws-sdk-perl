
package Aws::SimpleWorkflow::DescribeDomainResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has configuration => (is => 'ro', isa => 'Aws::SimpleWorkflow::DomainConfiguration', required => 1);
  has domainInfo => (is => 'ro', isa => 'Aws::SimpleWorkflow::DomainInfo', required => 1);

}
1;
