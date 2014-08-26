package Aws::IAM::summaryMapType {
  use Moose;
  with 'AWS::API::MapParser';
  has AccessKeysPerUserQuota => (is => 'ro', isa => 'Int');
  has AccountMFAEnabled => (is => 'ro', isa => 'Int');
  has GroupPolicySizeQuota => (is => 'ro', isa => 'Int');
  has Groups => (is => 'ro', isa => 'Int');
  has GroupsPerUserQuota => (is => 'ro', isa => 'Int');
  has GroupsQuota => (is => 'ro', isa => 'Int');
  has MFADevices => (is => 'ro', isa => 'Int');
  has MFADevicesInUse => (is => 'ro', isa => 'Int');
  has ServerCertificates => (is => 'ro', isa => 'Int');
  has ServerCertificatesQuota => (is => 'ro', isa => 'Int');
  has SigningCertificatesPerUserQuota => (is => 'ro', isa => 'Int');
  has UserPolicySizeQuota => (is => 'ro', isa => 'Int');
  has Users => (is => 'ro', isa => 'Int');
  has UsersQuota => (is => 'ro', isa => 'Int');
}
1
