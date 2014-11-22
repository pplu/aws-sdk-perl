
package Paws::SNS::ListPlatformApplicationsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has PlatformApplications => (is => 'ro', isa => 'ArrayRef[Paws::SNS::PlatformApplication]');

}
1;