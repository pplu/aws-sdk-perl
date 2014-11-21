package Aws::OpsWorks::Stack {
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::StackAttributes');
  has ChefConfiguration => (is => 'ro', isa => 'Aws::OpsWorks::ChefConfiguration');
  has ConfigurationManager => (is => 'ro', isa => 'Aws::OpsWorks::StackConfigurationManager');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CustomCookbooksSource => (is => 'ro', isa => 'Aws::OpsWorks::Source');
  has CustomJson => (is => 'ro', isa => 'Str');
  has DefaultAvailabilityZone => (is => 'ro', isa => 'Str');
  has DefaultInstanceProfileArn => (is => 'ro', isa => 'Str');
  has DefaultOs => (is => 'ro', isa => 'Str');
  has DefaultRootDeviceType => (is => 'ro', isa => 'Str');
  has DefaultSshKeyName => (is => 'ro', isa => 'Str');
  has DefaultSubnetId => (is => 'ro', isa => 'Str');
  has HostnameTheme => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
  has ServiceRoleArn => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has UseCustomCookbooks => (is => 'ro', isa => 'Bool');
  has UseOpsworksSecurityGroups => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str');
}
1;
