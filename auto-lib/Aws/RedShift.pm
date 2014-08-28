
use AWS::API;


package Aws::RedShift::AuthorizeClusterSecurityGroupIngressResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSecurityGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterSecurityGroup');

}
package Aws::RedShift::AuthorizeSnapshotAccessResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::RedShift::Snapshot');

}
package Aws::RedShift::CopyClusterSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::RedShift::Snapshot');

}
package Aws::RedShift::CreateClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
package Aws::RedShift::CreateClusterParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterParameterGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterParameterGroup');

}
package Aws::RedShift::CreateClusterSecurityGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSecurityGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterSecurityGroup');

}
package Aws::RedShift::CreateClusterSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::RedShift::Snapshot');

}
package Aws::RedShift::CreateClusterSubnetGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSubnetGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterSubnetGroup');

}
package Aws::RedShift::CreateEventSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RedShift::EventSubscription');

}
package Aws::RedShift::CreateHsmClientCertificateResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HsmClientCertificate => (is => 'ro', isa => 'Aws::RedShift::HsmClientCertificate');

}
package Aws::RedShift::CreateHsmConfigurationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HsmConfiguration => (is => 'ro', isa => 'Aws::RedShift::HsmConfiguration');

}
package Aws::RedShift::DeleteClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
package Aws::RedShift::DeleteClusterSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::RedShift::Snapshot');

}
package Aws::RedShift::DescribeClusterParameterGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterParameterGroup]', traits => ['Unwrapped'], xmlname => 'ClusterParameterGroup');

}
package Aws::RedShift::DescribeClusterParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Parameter]', traits => ['Unwrapped'], xmlname => 'Parameter');

}
package Aws::RedShift::DescribeClusterSecurityGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterSecurityGroup]', traits => ['Unwrapped'], xmlname => 'ClusterSecurityGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeClusterSnapshotsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Snapshot]', traits => ['Unwrapped'], xmlname => 'Snapshot');

}
package Aws::RedShift::DescribeClusterSubnetGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSubnetGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterSubnetGroup]', traits => ['Unwrapped'], xmlname => 'ClusterSubnetGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeClusterVersionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterVersions => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterVersion]', traits => ['Unwrapped'], xmlname => 'ClusterVersion');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeClustersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Clusters => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Cluster]', traits => ['Unwrapped'], xmlname => 'Cluster');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeDefaultClusterParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DefaultClusterParameters => (is => 'ro', isa => 'Aws::RedShift::DefaultClusterParameters');

}
package Aws::RedShift::DescribeEventCategoriesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventCategoriesMapList => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::EventCategoriesMap]', traits => ['Unwrapped'], xmlname => 'EventCategoriesMap');

}
package Aws::RedShift::DescribeEventSubscriptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscriptionsList => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::EventSubscription]', traits => ['Unwrapped'], xmlname => 'EventSubscription');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeEventsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Event]', traits => ['Unwrapped'], xmlname => 'Event');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeHsmClientCertificatesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HsmClientCertificates => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::HsmClientCertificate]', traits => ['Unwrapped'], xmlname => 'HsmClientCertificate');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeHsmConfigurationsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HsmConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::HsmConfiguration]', traits => ['Unwrapped'], xmlname => 'HsmConfiguration');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeLoggingStatusResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has BucketName => (is => 'ro', isa => 'Str');
  has LastFailureMessage => (is => 'ro', isa => 'Str');
  has LastFailureTime => (is => 'ro', isa => 'Str');
  has LastSuccessfulDeliveryTime => (is => 'ro', isa => 'Str');
  has LoggingEnabled => (is => 'ro', isa => 'Bool');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeOrderableClusterOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OrderableClusterOptions => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::OrderableClusterOption]', traits => ['Unwrapped'], xmlname => 'OrderableClusterOption');

}
package Aws::RedShift::DescribeReservedNodeOfferingsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedNodeOfferings => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ReservedNodeOffering]', traits => ['Unwrapped'], xmlname => 'ReservedNodeOffering');

}
package Aws::RedShift::DescribeReservedNodesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedNodes => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ReservedNode]', traits => ['Unwrapped'], xmlname => 'ReservedNode');

}
package Aws::RedShift::DescribeResizeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AvgResizeRateInMegaBytesPerSecond => (is => 'ro', isa => 'Num');
  has ElapsedTimeInSeconds => (is => 'ro', isa => 'Num');
  has EstimatedTimeToCompletionInSeconds => (is => 'ro', isa => 'Num');
  has ImportTablesCompleted => (is => 'ro', isa => 'ArrayRef[Str]');
  has ImportTablesInProgress => (is => 'ro', isa => 'ArrayRef[Str]');
  has ImportTablesNotStarted => (is => 'ro', isa => 'ArrayRef[Str]');
  has ProgressInMegaBytes => (is => 'ro', isa => 'Num');
  has Status => (is => 'ro', isa => 'Str');
  has TargetClusterType => (is => 'ro', isa => 'Str');
  has TargetNodeType => (is => 'ro', isa => 'Str');
  has TargetNumberOfNodes => (is => 'ro', isa => 'Int');
  has TotalResizeDataInMegaBytes => (is => 'ro', isa => 'Num');

}
package Aws::RedShift::DisableLoggingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has BucketName => (is => 'ro', isa => 'Str');
  has LastFailureMessage => (is => 'ro', isa => 'Str');
  has LastFailureTime => (is => 'ro', isa => 'Str');
  has LastSuccessfulDeliveryTime => (is => 'ro', isa => 'Str');
  has LoggingEnabled => (is => 'ro', isa => 'Bool');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DisableSnapshotCopyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
package Aws::RedShift::EnableLoggingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has BucketName => (is => 'ro', isa => 'Str');
  has LastFailureMessage => (is => 'ro', isa => 'Str');
  has LastFailureTime => (is => 'ro', isa => 'Str');
  has LastSuccessfulDeliveryTime => (is => 'ro', isa => 'Str');
  has LoggingEnabled => (is => 'ro', isa => 'Bool');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::EnableSnapshotCopyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
package Aws::RedShift::ModifyClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
package Aws::RedShift::ModifyClusterParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterGroupStatus => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::ModifyClusterSubnetGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSubnetGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterSubnetGroup');

}
package Aws::RedShift::ModifyEventSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RedShift::EventSubscription');

}
package Aws::RedShift::ModifySnapshotCopyRetentionPeriodResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
package Aws::RedShift::PurchaseReservedNodeOfferingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ReservedNode => (is => 'ro', isa => 'Aws::RedShift::ReservedNode');

}
package Aws::RedShift::RebootClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
package Aws::RedShift::ResetClusterParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterGroupStatus => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::RestoreFromClusterSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
package Aws::RedShift::RevokeClusterSecurityGroupIngressResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSecurityGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterSecurityGroup');

}
package Aws::RedShift::RevokeSnapshotAccessResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::RedShift::Snapshot');

}
package Aws::RedShift::RotateEncryptionKeyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}

package Aws::RedShift {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'redshift');
  has version => (is => 'ro', isa => 'Str', default => '2012-12-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub AuthorizeClusterSecurityGroupIngress {
    my $self = shift;
    return $self->do_call('Aws::RedShift::AuthorizeClusterSecurityGroupIngress', @_);
  }
  sub AuthorizeSnapshotAccess {
    my $self = shift;
    return $self->do_call('Aws::RedShift::AuthorizeSnapshotAccess', @_);
  }
  sub CopyClusterSnapshot {
    my $self = shift;
    return $self->do_call('Aws::RedShift::CopyClusterSnapshot', @_);
  }
  sub CreateCluster {
    my $self = shift;
    return $self->do_call('Aws::RedShift::CreateCluster', @_);
  }
  sub CreateClusterParameterGroup {
    my $self = shift;
    return $self->do_call('Aws::RedShift::CreateClusterParameterGroup', @_);
  }
  sub CreateClusterSecurityGroup {
    my $self = shift;
    return $self->do_call('Aws::RedShift::CreateClusterSecurityGroup', @_);
  }
  sub CreateClusterSnapshot {
    my $self = shift;
    return $self->do_call('Aws::RedShift::CreateClusterSnapshot', @_);
  }
  sub CreateClusterSubnetGroup {
    my $self = shift;
    return $self->do_call('Aws::RedShift::CreateClusterSubnetGroup', @_);
  }
  sub CreateEventSubscription {
    my $self = shift;
    return $self->do_call('Aws::RedShift::CreateEventSubscription', @_);
  }
  sub CreateHsmClientCertificate {
    my $self = shift;
    return $self->do_call('Aws::RedShift::CreateHsmClientCertificate', @_);
  }
  sub CreateHsmConfiguration {
    my $self = shift;
    return $self->do_call('Aws::RedShift::CreateHsmConfiguration', @_);
  }
  sub DeleteCluster {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DeleteCluster', @_);
  }
  sub DeleteClusterParameterGroup {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DeleteClusterParameterGroup', @_);
  }
  sub DeleteClusterSecurityGroup {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DeleteClusterSecurityGroup', @_);
  }
  sub DeleteClusterSnapshot {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DeleteClusterSnapshot', @_);
  }
  sub DeleteClusterSubnetGroup {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DeleteClusterSubnetGroup', @_);
  }
  sub DeleteEventSubscription {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DeleteEventSubscription', @_);
  }
  sub DeleteHsmClientCertificate {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DeleteHsmClientCertificate', @_);
  }
  sub DeleteHsmConfiguration {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DeleteHsmConfiguration', @_);
  }
  sub DescribeClusterParameterGroups {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeClusterParameterGroups', @_);
  }
  sub DescribeClusterParameters {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeClusterParameters', @_);
  }
  sub DescribeClusters {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeClusters', @_);
  }
  sub DescribeClusterSecurityGroups {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeClusterSecurityGroups', @_);
  }
  sub DescribeClusterSnapshots {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeClusterSnapshots', @_);
  }
  sub DescribeClusterSubnetGroups {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeClusterSubnetGroups', @_);
  }
  sub DescribeClusterVersions {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeClusterVersions', @_);
  }
  sub DescribeDefaultClusterParameters {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeDefaultClusterParameters', @_);
  }
  sub DescribeEventCategories {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeEventCategories', @_);
  }
  sub DescribeEvents {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeEvents', @_);
  }
  sub DescribeEventSubscriptions {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeEventSubscriptions', @_);
  }
  sub DescribeHsmClientCertificates {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeHsmClientCertificates', @_);
  }
  sub DescribeHsmConfigurations {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeHsmConfigurations', @_);
  }
  sub DescribeLoggingStatus {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeLoggingStatus', @_);
  }
  sub DescribeOrderableClusterOptions {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeOrderableClusterOptions', @_);
  }
  sub DescribeReservedNodeOfferings {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeReservedNodeOfferings', @_);
  }
  sub DescribeReservedNodes {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeReservedNodes', @_);
  }
  sub DescribeResize {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DescribeResize', @_);
  }
  sub DisableLogging {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DisableLogging', @_);
  }
  sub DisableSnapshotCopy {
    my $self = shift;
    return $self->do_call('Aws::RedShift::DisableSnapshotCopy', @_);
  }
  sub EnableLogging {
    my $self = shift;
    return $self->do_call('Aws::RedShift::EnableLogging', @_);
  }
  sub EnableSnapshotCopy {
    my $self = shift;
    return $self->do_call('Aws::RedShift::EnableSnapshotCopy', @_);
  }
  sub ModifyCluster {
    my $self = shift;
    return $self->do_call('Aws::RedShift::ModifyCluster', @_);
  }
  sub ModifyClusterParameterGroup {
    my $self = shift;
    return $self->do_call('Aws::RedShift::ModifyClusterParameterGroup', @_);
  }
  sub ModifyClusterSubnetGroup {
    my $self = shift;
    return $self->do_call('Aws::RedShift::ModifyClusterSubnetGroup', @_);
  }
  sub ModifyEventSubscription {
    my $self = shift;
    return $self->do_call('Aws::RedShift::ModifyEventSubscription', @_);
  }
  sub ModifySnapshotCopyRetentionPeriod {
    my $self = shift;
    return $self->do_call('Aws::RedShift::ModifySnapshotCopyRetentionPeriod', @_);
  }
  sub PurchaseReservedNodeOffering {
    my $self = shift;
    return $self->do_call('Aws::RedShift::PurchaseReservedNodeOffering', @_);
  }
  sub RebootCluster {
    my $self = shift;
    return $self->do_call('Aws::RedShift::RebootCluster', @_);
  }
  sub ResetClusterParameterGroup {
    my $self = shift;
    return $self->do_call('Aws::RedShift::ResetClusterParameterGroup', @_);
  }
  sub RestoreFromClusterSnapshot {
    my $self = shift;
    return $self->do_call('Aws::RedShift::RestoreFromClusterSnapshot', @_);
  }
  sub RevokeClusterSecurityGroupIngress {
    my $self = shift;
    return $self->do_call('Aws::RedShift::RevokeClusterSecurityGroupIngress', @_);
  }
  sub RevokeSnapshotAccess {
    my $self = shift;
    return $self->do_call('Aws::RedShift::RevokeSnapshotAccess', @_);
  }
  sub RotateEncryptionKey {
    my $self = shift;
    return $self->do_call('Aws::RedShift::RotateEncryptionKey', @_);
  }
}
1;
