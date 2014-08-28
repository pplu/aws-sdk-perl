
package Aws::SimpleWorkflow::ListActivityTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has nextPageToken => (is => 'ro', isa => 'Str');
  has typeInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::ActivityTypeInfo]', required => 1);

}
1;
