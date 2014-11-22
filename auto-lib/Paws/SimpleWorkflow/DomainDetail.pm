
package Paws::SimpleWorkflow::DomainDetail {
  use Moose;
  with 'Paws::API::ResultParser';
  has configuration => (is => 'ro', isa => 'Paws::SimpleWorkflow::DomainConfiguration', required => 1);
  has domainInfo => (is => 'ro', isa => 'Paws::SimpleWorkflow::DomainInfo', required => 1);

}
1;