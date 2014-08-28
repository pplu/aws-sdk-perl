
use AWS::API;


package Aws::RDS::AddSourceIdentifierToSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RDS::EventSubscription');

}
package Aws::RDS::AuthorizeDBSecurityGroupIngressResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSecurityGroup => (is => 'ro', isa => 'Aws::RDS::DBSecurityGroup');

}
package Aws::RDS::CopyDBSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSnapshot => (is => 'ro', isa => 'Aws::RDS::DBSnapshot');

}
package Aws::RDS::CreateDBInstanceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
package Aws::RDS::CreateDBInstanceReadReplicaResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
package Aws::RDS::CreateDBParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBParameterGroup => (is => 'ro', isa => 'Aws::RDS::DBParameterGroup');

}
package Aws::RDS::CreateDBSecurityGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSecurityGroup => (is => 'ro', isa => 'Aws::RDS::DBSecurityGroup');

}
package Aws::RDS::CreateDBSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSnapshot => (is => 'ro', isa => 'Aws::RDS::DBSnapshot');

}
package Aws::RDS::CreateDBSubnetGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSubnetGroup => (is => 'ro', isa => 'Aws::RDS::DBSubnetGroup');

}
package Aws::RDS::CreateEventSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RDS::EventSubscription');

}
package Aws::RDS::CreateOptionGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has OptionGroup => (is => 'ro', isa => 'Aws::RDS::OptionGroup');

}
package Aws::RDS::DeleteDBInstanceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
package Aws::RDS::DeleteDBSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSnapshot => (is => 'ro', isa => 'Aws::RDS::DBSnapshot');

}
package Aws::RDS::DeleteEventSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RDS::EventSubscription');

}
package Aws::RDS::DescribeDBEngineVersionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBEngineVersions => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBEngineVersion]', traits => ['Unwrapped'], xmlname => 'DBEngineVersion');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeDBInstancesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstances => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBInstance]', traits => ['Unwrapped'], xmlname => 'DBInstance');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeDBLogFilesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DescribeDBLogFiles => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DescribeDBLogFilesDetails]', traits => ['Unwrapped'], xmlname => 'DescribeDBLogFilesDetails');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeDBParameterGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBParameterGroup]', traits => ['Unwrapped'], xmlname => 'DBParameterGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeDBParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Parameter]', traits => ['Unwrapped'], xmlname => 'Parameter');

}
package Aws::RDS::DescribeDBSecurityGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSecurityGroup]', traits => ['Unwrapped'], xmlname => 'DBSecurityGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeDBSnapshotsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSnapshots => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSnapshot]', traits => ['Unwrapped'], xmlname => 'DBSnapshot');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeDBSubnetGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSubnetGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSubnetGroup]', traits => ['Unwrapped'], xmlname => 'DBSubnetGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeEngineDefaultParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EngineDefaults => (is => 'ro', isa => 'Aws::RDS::EngineDefaults');

}
package Aws::RDS::DescribeEventCategoriesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventCategoriesMapList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::EventCategoriesMap]', traits => ['Unwrapped'], xmlname => 'EventCategoriesMap');

}
package Aws::RDS::DescribeEventSubscriptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscriptionsList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::EventSubscription]', traits => ['Unwrapped'], xmlname => 'EventSubscription');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeEventsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Event]', traits => ['Unwrapped'], xmlname => 'Event');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeOptionGroupOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OptionGroupOptions => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionGroupOption]', traits => ['Unwrapped'], xmlname => 'OptionGroupOption');

}
package Aws::RDS::DescribeOptionGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OptionGroupsList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionGroup]', traits => ['Unwrapped'], xmlname => 'OptionGroup');

}
package Aws::RDS::DescribeOrderableDBInstanceOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OrderableDBInstanceOptions => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OrderableDBInstanceOption]', traits => ['Unwrapped'], xmlname => 'OrderableDBInstanceOption');

}
package Aws::RDS::DescribeReservedDBInstancesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedDBInstances => (is => 'ro', isa => 'ArrayRef[Aws::RDS::ReservedDBInstance]', traits => ['Unwrapped'], xmlname => 'ReservedDBInstance');

}
package Aws::RDS::DescribeReservedDBInstancesOfferingsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferings => (is => 'ro', isa => 'ArrayRef[Aws::RDS::ReservedDBInstancesOffering]', traits => ['Unwrapped'], xmlname => 'ReservedDBInstancesOffering');

}
package Aws::RDS::DownloadDBLogFilePortionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AdditionalDataPending => (is => 'ro', isa => 'Bool');
  has LogFileData => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::ListTagsForResourceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TagList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['Unwrapped'], xmlname => 'Tag');

}
package Aws::RDS::ModifyDBInstanceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
package Aws::RDS::ModifyDBParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBParameterGroupName => (is => 'ro', isa => 'Str');

}
package Aws::RDS::ModifyDBSubnetGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSubnetGroup => (is => 'ro', isa => 'Aws::RDS::DBSubnetGroup');

}
package Aws::RDS::ModifyEventSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RDS::EventSubscription');

}
package Aws::RDS::ModifyOptionGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has OptionGroup => (is => 'ro', isa => 'Aws::RDS::OptionGroup');

}
package Aws::RDS::PromoteReadReplicaResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
package Aws::RDS::PurchaseReservedDBInstancesOfferingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ReservedDBInstance => (is => 'ro', isa => 'Aws::RDS::ReservedDBInstance');

}
package Aws::RDS::RebootDBInstanceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
package Aws::RDS::RemoveSourceIdentifierFromSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RDS::EventSubscription');

}
package Aws::RDS::ResetDBParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBParameterGroupName => (is => 'ro', isa => 'Str');

}
package Aws::RDS::RestoreDBInstanceFromDBSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
package Aws::RDS::RestoreDBInstanceToPointInTimeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
package Aws::RDS::RevokeDBSecurityGroupIngressResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSecurityGroup => (is => 'ro', isa => 'Aws::RDS::DBSecurityGroup');

}

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
