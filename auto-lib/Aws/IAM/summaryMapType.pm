package Aws::IAM::summaryMapType {
  use Moose;
  with 'AWS::API::MapParser';
  has AccessKeysPerUserQuota => (is => 'ro', isa => 'Int');
1
  has AccountMFAEnabled => (is => 'ro', isa => 'Int');
1
  has GroupPolicySizeQuota => (is => 'ro', isa => 'Int');
1
  has Groups => (is => 'ro', isa => 'Int');
1
  has GroupsPerUserQuota => (is => 'ro', isa => 'Int');
1
  has GroupsQuota => (is => 'ro', isa => 'Int');
1
  has MFADevices => (is => 'ro', isa => 'Int');
1
  has MFADevicesInUse => (is => 'ro', isa => 'Int');
1
  has ServerCertificates => (is => 'ro', isa => 'Int');
1
  has ServerCertificatesQuota => (is => 'ro', isa => 'Int');
1
  has SigningCertificatesPerUserQuota => (is => 'ro', isa => 'Int');
1
  has UserPolicySizeQuota => (is => 'ro', isa => 'Int');
1
  has Users => (is => 'ro', isa => 'Int');
1
  has UsersQuota => (is => 'ro', isa => 'Int');
1
}
1
