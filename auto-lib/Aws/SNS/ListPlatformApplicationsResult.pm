
package Aws::SNS::ListPlatformApplicationsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has PlatformApplications => (is => 'ro', isa => 'ArrayRef[Aws::SNS::PlatformApplication]');

}
1;