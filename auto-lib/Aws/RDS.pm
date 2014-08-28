
use AWS::API;


package Aws::RDS {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'rds');
  has version => (is => 'ro', isa => 'Str', default => '2013-09-09');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub AddSourceIdentifierToSubscription {
    my $self = shift;
    return $self->do_call('Aws::RDS::AddSourceIdentifierToSubscription', @_);
  }
  sub AddTagsToResource {
    my $self = shift;
    return $self->do_call('Aws::RDS::AddTagsToResource', @_);
  }
  sub AuthorizeDBSecurityGroupIngress {
    my $self = shift;
    return $self->do_call('Aws::RDS::AuthorizeDBSecurityGroupIngress', @_);
  }
  sub CopyDBSnapshot {
    my $self = shift;
    return $self->do_call('Aws::RDS::CopyDBSnapshot', @_);
  }
  sub CreateDBInstance {
    my $self = shift;
    return $self->do_call('Aws::RDS::CreateDBInstance', @_);
  }
  sub CreateDBInstanceReadReplica {
    my $self = shift;
    return $self->do_call('Aws::RDS::CreateDBInstanceReadReplica', @_);
  }
  sub CreateDBParameterGroup {
    my $self = shift;
    return $self->do_call('Aws::RDS::CreateDBParameterGroup', @_);
  }
  sub CreateDBSecurityGroup {
    my $self = shift;
    return $self->do_call('Aws::RDS::CreateDBSecurityGroup', @_);
  }
  sub CreateDBSnapshot {
    my $self = shift;
    return $self->do_call('Aws::RDS::CreateDBSnapshot', @_);
  }
  sub CreateDBSubnetGroup {
    my $self = shift;
    return $self->do_call('Aws::RDS::CreateDBSubnetGroup', @_);
  }
  sub CreateEventSubscription {
    my $self = shift;
    return $self->do_call('Aws::RDS::CreateEventSubscription', @_);
  }
  sub CreateOptionGroup {
    my $self = shift;
    return $self->do_call('Aws::RDS::CreateOptionGroup', @_);
  }
  sub DeleteDBInstance {
    my $self = shift;
    return $self->do_call('Aws::RDS::DeleteDBInstance', @_);
  }
  sub DeleteDBParameterGroup {
    my $self = shift;
    return $self->do_call('Aws::RDS::DeleteDBParameterGroup', @_);
  }
  sub DeleteDBSecurityGroup {
    my $self = shift;
    return $self->do_call('Aws::RDS::DeleteDBSecurityGroup', @_);
  }
  sub DeleteDBSnapshot {
    my $self = shift;
    return $self->do_call('Aws::RDS::DeleteDBSnapshot', @_);
  }
  sub DeleteDBSubnetGroup {
    my $self = shift;
    return $self->do_call('Aws::RDS::DeleteDBSubnetGroup', @_);
  }
  sub DeleteEventSubscription {
    my $self = shift;
    return $self->do_call('Aws::RDS::DeleteEventSubscription', @_);
  }
  sub DeleteOptionGroup {
    my $self = shift;
    return $self->do_call('Aws::RDS::DeleteOptionGroup', @_);
  }
  sub DescribeDBEngineVersions {
    my $self = shift;
    return $self->do_call('Aws::RDS::DescribeDBEngineVersions', @_);
  }
  sub DescribeDBInstances {
    my $self = shift;
    return $self->do_call('Aws::RDS::DescribeDBInstances', @_);
  }
  sub DescribeDBLogFiles {
    my $self = shift;
    return $self->do_call('Aws::RDS::DescribeDBLogFiles', @_);
  }
  sub DescribeDBParameterGroups {
    my $self = shift;
    return $self->do_call('Aws::RDS::DescribeDBParameterGroups', @_);
  }
  sub DescribeDBParameters {
    my $self = shift;
    return $self->do_call('Aws::RDS::DescribeDBParameters', @_);
  }
  sub DescribeDBSecurityGroups {
    my $self = shift;
    return $self->do_call('Aws::RDS::DescribeDBSecurityGroups', @_);
  }
  sub DescribeDBSnapshots {
    my $self = shift;
    return $self->do_call('Aws::RDS::DescribeDBSnapshots', @_);
  }
  sub DescribeDBSubnetGroups {
    my $self = shift;
    return $self->do_call('Aws::RDS::DescribeDBSubnetGroups', @_);
  }
  sub DescribeEngineDefaultParameters {
    my $self = shift;
    return $self->do_call('Aws::RDS::DescribeEngineDefaultParameters', @_);
  }
  sub DescribeEventCategories {
    my $self = shift;
    return $self->do_call('Aws::RDS::DescribeEventCategories', @_);
  }
  sub DescribeEvents {
    my $self = shift;
    return $self->do_call('Aws::RDS::DescribeEvents', @_);
  }
  sub DescribeEventSubscriptions {
    my $self = shift;
    return $self->do_call('Aws::RDS::DescribeEventSubscriptions', @_);
  }
  sub DescribeOptionGroupOptions {
    my $self = shift;
    return $self->do_call('Aws::RDS::DescribeOptionGroupOptions', @_);
  }
  sub DescribeOptionGroups {
    my $self = shift;
    return $self->do_call('Aws::RDS::DescribeOptionGroups', @_);
  }
  sub DescribeOrderableDBInstanceOptions {
    my $self = shift;
    return $self->do_call('Aws::RDS::DescribeOrderableDBInstanceOptions', @_);
  }
  sub DescribeReservedDBInstances {
    my $self = shift;
    return $self->do_call('Aws::RDS::DescribeReservedDBInstances', @_);
  }
  sub DescribeReservedDBInstancesOfferings {
    my $self = shift;
    return $self->do_call('Aws::RDS::DescribeReservedDBInstancesOfferings', @_);
  }
  sub DownloadDBLogFilePortion {
    my $self = shift;
    return $self->do_call('Aws::RDS::DownloadDBLogFilePortion', @_);
  }
  sub ListTagsForResource {
    my $self = shift;
    return $self->do_call('Aws::RDS::ListTagsForResource', @_);
  }
  sub ModifyDBInstance {
    my $self = shift;
    return $self->do_call('Aws::RDS::ModifyDBInstance', @_);
  }
  sub ModifyDBParameterGroup {
    my $self = shift;
    return $self->do_call('Aws::RDS::ModifyDBParameterGroup', @_);
  }
  sub ModifyDBSubnetGroup {
    my $self = shift;
    return $self->do_call('Aws::RDS::ModifyDBSubnetGroup', @_);
  }
  sub ModifyEventSubscription {
    my $self = shift;
    return $self->do_call('Aws::RDS::ModifyEventSubscription', @_);
  }
  sub ModifyOptionGroup {
    my $self = shift;
    return $self->do_call('Aws::RDS::ModifyOptionGroup', @_);
  }
  sub PromoteReadReplica {
    my $self = shift;
    return $self->do_call('Aws::RDS::PromoteReadReplica', @_);
  }
  sub PurchaseReservedDBInstancesOffering {
    my $self = shift;
    return $self->do_call('Aws::RDS::PurchaseReservedDBInstancesOffering', @_);
  }
  sub RebootDBInstance {
    my $self = shift;
    return $self->do_call('Aws::RDS::RebootDBInstance', @_);
  }
  sub RemoveSourceIdentifierFromSubscription {
    my $self = shift;
    return $self->do_call('Aws::RDS::RemoveSourceIdentifierFromSubscription', @_);
  }
  sub RemoveTagsFromResource {
    my $self = shift;
    return $self->do_call('Aws::RDS::RemoveTagsFromResource', @_);
  }
  sub ResetDBParameterGroup {
    my $self = shift;
    return $self->do_call('Aws::RDS::ResetDBParameterGroup', @_);
  }
  sub RestoreDBInstanceFromDBSnapshot {
    my $self = shift;
    return $self->do_call('Aws::RDS::RestoreDBInstanceFromDBSnapshot', @_);
  }
  sub RestoreDBInstanceToPointInTime {
    my $self = shift;
    return $self->do_call('Aws::RDS::RestoreDBInstanceToPointInTime', @_);
  }
  sub RevokeDBSecurityGroupIngress {
    my $self = shift;
    return $self->do_call('Aws::RDS::RevokeDBSecurityGroupIngress', @_);
  }
}
1;