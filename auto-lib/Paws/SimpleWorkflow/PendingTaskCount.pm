
package Paws::SimpleWorkflow::PendingTaskCount {
  use Moose;
  with 'Paws::API::ResultParser';
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Bool');

}
1;