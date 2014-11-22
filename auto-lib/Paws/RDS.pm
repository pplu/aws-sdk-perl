
use Paws::API;


package Paws::RDS {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'rds');
  has version => (is => 'ro', isa => 'Str', default => '2014-09-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::XMLResponse');

  
  sub AddSourceIdentifierToSubscription {
    my $self = shift;
    return $self->do_call('Paws::RDS::AddSourceIdentifierToSubscription', @_);
  }
  sub AddTagsToResource {
    my $self = shift;
    return $self->do_call('Paws::RDS::AddTagsToResource', @_);
  }
  sub AuthorizeDBSecurityGroupIngress {
    my $self = shift;
    return $self->do_call('Paws::RDS::AuthorizeDBSecurityGroupIngress', @_);
  }
  sub CopyDBParameterGroup {
    my $self = shift;
    return $self->do_call('Paws::RDS::CopyDBParameterGroup', @_);
  }
  sub CopyDBSnapshot {
    my $self = shift;
    return $self->do_call('Paws::RDS::CopyDBSnapshot', @_);
  }
  sub CopyOptionGroup {
    my $self = shift;
    return $self->do_call('Paws::RDS::CopyOptionGroup', @_);
  }
  sub CreateDBInstance {
    my $self = shift;
    return $self->do_call('Paws::RDS::CreateDBInstance', @_);
  }
  sub CreateDBInstanceReadReplica {
    my $self = shift;
    return $self->do_call('Paws::RDS::CreateDBInstanceReadReplica', @_);
  }
  sub CreateDBParameterGroup {
    my $self = shift;
    return $self->do_call('Paws::RDS::CreateDBParameterGroup', @_);
  }
  sub CreateDBSecurityGroup {
    my $self = shift;
    return $self->do_call('Paws::RDS::CreateDBSecurityGroup', @_);
  }
  sub CreateDBSnapshot {
    my $self = shift;
    return $self->do_call('Paws::RDS::CreateDBSnapshot', @_);
  }
  sub CreateDBSubnetGroup {
    my $self = shift;
    return $self->do_call('Paws::RDS::CreateDBSubnetGroup', @_);
  }
  sub CreateEventSubscription {
    my $self = shift;
    return $self->do_call('Paws::RDS::CreateEventSubscription', @_);
  }
  sub CreateOptionGroup {
    my $self = shift;
    return $self->do_call('Paws::RDS::CreateOptionGroup', @_);
  }
  sub DeleteDBInstance {
    my $self = shift;
    return $self->do_call('Paws::RDS::DeleteDBInstance', @_);
  }
  sub DeleteDBParameterGroup {
    my $self = shift;
    return $self->do_call('Paws::RDS::DeleteDBParameterGroup', @_);
  }
  sub DeleteDBSecurityGroup {
    my $self = shift;
    return $self->do_call('Paws::RDS::DeleteDBSecurityGroup', @_);
  }
  sub DeleteDBSnapshot {
    my $self = shift;
    return $self->do_call('Paws::RDS::DeleteDBSnapshot', @_);
  }
  sub DeleteDBSubnetGroup {
    my $self = shift;
    return $self->do_call('Paws::RDS::DeleteDBSubnetGroup', @_);
  }
  sub DeleteEventSubscription {
    my $self = shift;
    return $self->do_call('Paws::RDS::DeleteEventSubscription', @_);
  }
  sub DeleteOptionGroup {
    my $self = shift;
    return $self->do_call('Paws::RDS::DeleteOptionGroup', @_);
  }
  sub DescribeDBEngineVersions {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribeDBEngineVersions', @_);
  }
  sub DescribeDBInstances {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribeDBInstances', @_);
  }
  sub DescribeDBLogFiles {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribeDBLogFiles', @_);
  }
  sub DescribeDBParameterGroups {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribeDBParameterGroups', @_);
  }
  sub DescribeDBParameters {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribeDBParameters', @_);
  }
  sub DescribeDBSecurityGroups {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribeDBSecurityGroups', @_);
  }
  sub DescribeDBSnapshots {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribeDBSnapshots', @_);
  }
  sub DescribeDBSubnetGroups {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribeDBSubnetGroups', @_);
  }
  sub DescribeEngineDefaultParameters {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribeEngineDefaultParameters', @_);
  }
  sub DescribeEventCategories {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribeEventCategories', @_);
  }
  sub DescribeEvents {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribeEvents', @_);
  }
  sub DescribeEventSubscriptions {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribeEventSubscriptions', @_);
  }
  sub DescribeOptionGroupOptions {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribeOptionGroupOptions', @_);
  }
  sub DescribeOptionGroups {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribeOptionGroups', @_);
  }
  sub DescribeOrderableDBInstanceOptions {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribeOrderableDBInstanceOptions', @_);
  }
  sub DescribeReservedDBInstances {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribeReservedDBInstances', @_);
  }
  sub DescribeReservedDBInstancesOfferings {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribeReservedDBInstancesOfferings', @_);
  }
  sub DownloadDBLogFilePortion {
    my $self = shift;
    return $self->do_call('Paws::RDS::DownloadDBLogFilePortion', @_);
  }
  sub ListTagsForResource {
    my $self = shift;
    return $self->do_call('Paws::RDS::ListTagsForResource', @_);
  }
  sub ModifyDBInstance {
    my $self = shift;
    return $self->do_call('Paws::RDS::ModifyDBInstance', @_);
  }
  sub ModifyDBParameterGroup {
    my $self = shift;
    return $self->do_call('Paws::RDS::ModifyDBParameterGroup', @_);
  }
  sub ModifyDBSubnetGroup {
    my $self = shift;
    return $self->do_call('Paws::RDS::ModifyDBSubnetGroup', @_);
  }
  sub ModifyEventSubscription {
    my $self = shift;
    return $self->do_call('Paws::RDS::ModifyEventSubscription', @_);
  }
  sub ModifyOptionGroup {
    my $self = shift;
    return $self->do_call('Paws::RDS::ModifyOptionGroup', @_);
  }
  sub PromoteReadReplica {
    my $self = shift;
    return $self->do_call('Paws::RDS::PromoteReadReplica', @_);
  }
  sub PurchaseReservedDBInstancesOffering {
    my $self = shift;
    return $self->do_call('Paws::RDS::PurchaseReservedDBInstancesOffering', @_);
  }
  sub RebootDBInstance {
    my $self = shift;
    return $self->do_call('Paws::RDS::RebootDBInstance', @_);
  }
  sub RemoveSourceIdentifierFromSubscription {
    my $self = shift;
    return $self->do_call('Paws::RDS::RemoveSourceIdentifierFromSubscription', @_);
  }
  sub RemoveTagsFromResource {
    my $self = shift;
    return $self->do_call('Paws::RDS::RemoveTagsFromResource', @_);
  }
  sub ResetDBParameterGroup {
    my $self = shift;
    return $self->do_call('Paws::RDS::ResetDBParameterGroup', @_);
  }
  sub RestoreDBInstanceFromDBSnapshot {
    my $self = shift;
    return $self->do_call('Paws::RDS::RestoreDBInstanceFromDBSnapshot', @_);
  }
  sub RestoreDBInstanceToPointInTime {
    my $self = shift;
    return $self->do_call('Paws::RDS::RestoreDBInstanceToPointInTime', @_);
  }
  sub RevokeDBSecurityGroupIngress {
    my $self = shift;
    return $self->do_call('Paws::RDS::RevokeDBSecurityGroupIngress', @_);
  }
}
1;