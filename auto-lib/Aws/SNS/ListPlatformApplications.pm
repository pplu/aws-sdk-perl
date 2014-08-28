
package Aws::SNS::ListPlatformApplications {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPlatformApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::ListPlatformApplicationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListPlatformApplicationsResult');
}
1;
  