package Paws::RedShift;
  use Moose;
  sub service { 'redshift' }
  sub signing_name { 'redshift' }
  sub version { '2012-12-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller';

  
  sub AcceptReservedNodeExchange {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::AcceptReservedNodeExchange', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AuthorizeClusterSecurityGroupIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::AuthorizeClusterSecurityGroupIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AuthorizeSnapshotAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::AuthorizeSnapshotAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteClusterSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::BatchDeleteClusterSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchModifyClusterSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::BatchModifyClusterSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelResize {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::CancelResize', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::CopyClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::CreateClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateClusterSecurityGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::CreateClusterSecurityGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::CreateClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateClusterSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::CreateClusterSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::CreateEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHsmClientCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::CreateHsmClientCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHsmConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::CreateHsmConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSnapshotCopyGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::CreateSnapshotCopyGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSnapshotSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::CreateSnapshotSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::CreateTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DeleteClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteClusterSecurityGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DeleteClusterSecurityGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DeleteClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteClusterSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DeleteClusterSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DeleteEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHsmClientCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DeleteHsmClientCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHsmConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DeleteHsmConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSnapshotCopyGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DeleteSnapshotCopyGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSnapshotSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DeleteSnapshotSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DeleteTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeAccountAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusterDbRevisions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeClusterDbRevisions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusterParameterGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeClusterParameterGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusterParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeClusterParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusterSecurityGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeClusterSecurityGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusterSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeClusterSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusterSubnetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeClusterSubnetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusterTracks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeClusterTracks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusterVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeClusterVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDefaultClusterParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeDefaultClusterParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventCategories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeEventCategories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeEventSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHsmClientCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeHsmClientCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHsmConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeHsmConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLoggingStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeLoggingStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrderableClusterOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeOrderableClusterOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedNodeOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeReservedNodeOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedNodes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeReservedNodes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResize {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeResize', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSnapshotCopyGrants {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeSnapshotCopyGrants', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSnapshotSchedules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeSnapshotSchedules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStorage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeStorage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTableRestoreStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeTableRestoreStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DescribeTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableLogging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DisableLogging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableSnapshotCopy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DisableSnapshotCopy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableLogging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::EnableLogging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableSnapshotCopy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::EnableSnapshotCopy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetClusterCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::GetClusterCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReservedNodeExchangeOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::GetReservedNodeExchangeOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::ModifyCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyClusterDbRevision {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::ModifyClusterDbRevision', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyClusterIamRoles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::ModifyClusterIamRoles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyClusterMaintenance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::ModifyClusterMaintenance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::ModifyClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::ModifyClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyClusterSnapshotSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::ModifyClusterSnapshotSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyClusterSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::ModifyClusterSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::ModifyEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifySnapshotCopyRetentionPeriod {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::ModifySnapshotCopyRetentionPeriod', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifySnapshotSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::ModifySnapshotSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseReservedNodeOffering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::PurchaseReservedNodeOffering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::RebootCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::ResetClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResizeCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::ResizeCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreFromClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::RestoreFromClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreTableFromClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::RestoreTableFromClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeClusterSecurityGroupIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::RevokeClusterSecurityGroupIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeSnapshotAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::RevokeSnapshotAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RotateEncryptionKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::RotateEncryptionKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllClusterDbRevisions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClusterDbRevisions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeClusterDbRevisions(@_, Marker => $next_result->Marker);
        push @{ $result->ClusterDbRevisions }, @{ $next_result->ClusterDbRevisions };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ClusterDbRevisions') foreach (@{ $result->ClusterDbRevisions });
        $result = $self->DescribeClusterDbRevisions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ClusterDbRevisions') foreach (@{ $result->ClusterDbRevisions });
    }

    return undef
  }
  sub DescribeAllClusterParameterGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClusterParameterGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeClusterParameterGroups(@_, Marker => $next_result->Marker);
        push @{ $result->ParameterGroups }, @{ $next_result->ParameterGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ParameterGroups') foreach (@{ $result->ParameterGroups });
        $result = $self->DescribeClusterParameterGroups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ParameterGroups') foreach (@{ $result->ParameterGroups });
    }

    return undef
  }
  sub DescribeAllClusterParameters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClusterParameters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeClusterParameters(@_, Marker => $next_result->Marker);
        push @{ $result->Parameters }, @{ $next_result->Parameters };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Parameters') foreach (@{ $result->Parameters });
        $result = $self->DescribeClusterParameters(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Parameters') foreach (@{ $result->Parameters });
    }

    return undef
  }
  sub DescribeAllClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeClusters(@_, Marker => $next_result->Marker);
        push @{ $result->Clusters }, @{ $next_result->Clusters };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Clusters') foreach (@{ $result->Clusters });
        $result = $self->DescribeClusters(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Clusters') foreach (@{ $result->Clusters });
    }

    return undef
  }
  sub DescribeAllClusterSecurityGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClusterSecurityGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeClusterSecurityGroups(@_, Marker => $next_result->Marker);
        push @{ $result->ClusterSecurityGroups }, @{ $next_result->ClusterSecurityGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ClusterSecurityGroups') foreach (@{ $result->ClusterSecurityGroups });
        $result = $self->DescribeClusterSecurityGroups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ClusterSecurityGroups') foreach (@{ $result->ClusterSecurityGroups });
    }

    return undef
  }
  sub DescribeAllClusterSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClusterSnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeClusterSnapshots(@_, Marker => $next_result->Marker);
        push @{ $result->Snapshots }, @{ $next_result->Snapshots };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Snapshots') foreach (@{ $result->Snapshots });
        $result = $self->DescribeClusterSnapshots(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Snapshots') foreach (@{ $result->Snapshots });
    }

    return undef
  }
  sub DescribeAllClusterSubnetGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClusterSubnetGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeClusterSubnetGroups(@_, Marker => $next_result->Marker);
        push @{ $result->ClusterSubnetGroups }, @{ $next_result->ClusterSubnetGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ClusterSubnetGroups') foreach (@{ $result->ClusterSubnetGroups });
        $result = $self->DescribeClusterSubnetGroups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ClusterSubnetGroups') foreach (@{ $result->ClusterSubnetGroups });
    }

    return undef
  }
  sub DescribeAllClusterTracks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClusterTracks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeClusterTracks(@_, Marker => $next_result->Marker);
        push @{ $result->MaintenanceTracks }, @{ $next_result->MaintenanceTracks };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'MaintenanceTracks') foreach (@{ $result->MaintenanceTracks });
        $result = $self->DescribeClusterTracks(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'MaintenanceTracks') foreach (@{ $result->MaintenanceTracks });
    }

    return undef
  }
  sub DescribeAllClusterVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClusterVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeClusterVersions(@_, Marker => $next_result->Marker);
        push @{ $result->ClusterVersions }, @{ $next_result->ClusterVersions };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ClusterVersions') foreach (@{ $result->ClusterVersions });
        $result = $self->DescribeClusterVersions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ClusterVersions') foreach (@{ $result->ClusterVersions });
    }

    return undef
  }
  sub DescribeAllDefaultClusterParameters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDefaultClusterParameters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->DefaultClusterParameters->Marker) {
        $next_result = $self->DescribeDefaultClusterParameters(@_, Marker => $next_result->DefaultClusterParameters->Marker);
        push @{ $result->DefaultClusterParameters->Parameters }, @{ $next_result->DefaultClusterParameters->Parameters };
      }
      return $result;
    } else {
      while ($result->DefaultClusterParameters->Marker) {
        $callback->($_ => 'DefaultClusterParameters.Parameters') foreach (@{ $result->DefaultClusterParameters->Parameters });
        $result = $self->DescribeDefaultClusterParameters(@_, Marker => $result->DefaultClusterParameters->Marker);
      }
      $callback->($_ => 'DefaultClusterParameters.Parameters') foreach (@{ $result->DefaultClusterParameters->Parameters });
    }

    return undef
  }
  sub DescribeAllEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeEvents(@_, Marker => $next_result->Marker);
        push @{ $result->Events }, @{ $next_result->Events };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Events') foreach (@{ $result->Events });
        $result = $self->DescribeEvents(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Events') foreach (@{ $result->Events });
    }

    return undef
  }
  sub DescribeAllEventSubscriptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEventSubscriptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeEventSubscriptions(@_, Marker => $next_result->Marker);
        push @{ $result->EventSubscriptionsList }, @{ $next_result->EventSubscriptionsList };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'EventSubscriptionsList') foreach (@{ $result->EventSubscriptionsList });
        $result = $self->DescribeEventSubscriptions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'EventSubscriptionsList') foreach (@{ $result->EventSubscriptionsList });
    }

    return undef
  }
  sub DescribeAllHsmClientCertificates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeHsmClientCertificates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeHsmClientCertificates(@_, Marker => $next_result->Marker);
        push @{ $result->HsmClientCertificates }, @{ $next_result->HsmClientCertificates };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'HsmClientCertificates') foreach (@{ $result->HsmClientCertificates });
        $result = $self->DescribeHsmClientCertificates(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'HsmClientCertificates') foreach (@{ $result->HsmClientCertificates });
    }

    return undef
  }
  sub DescribeAllHsmConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeHsmConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeHsmConfigurations(@_, Marker => $next_result->Marker);
        push @{ $result->HsmConfigurations }, @{ $next_result->HsmConfigurations };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'HsmConfigurations') foreach (@{ $result->HsmConfigurations });
        $result = $self->DescribeHsmConfigurations(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'HsmConfigurations') foreach (@{ $result->HsmConfigurations });
    }

    return undef
  }
  sub DescribeAllOrderableClusterOptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeOrderableClusterOptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeOrderableClusterOptions(@_, Marker => $next_result->Marker);
        push @{ $result->OrderableClusterOptions }, @{ $next_result->OrderableClusterOptions };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'OrderableClusterOptions') foreach (@{ $result->OrderableClusterOptions });
        $result = $self->DescribeOrderableClusterOptions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'OrderableClusterOptions') foreach (@{ $result->OrderableClusterOptions });
    }

    return undef
  }
  sub DescribeAllReservedNodeOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReservedNodeOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeReservedNodeOfferings(@_, Marker => $next_result->Marker);
        push @{ $result->ReservedNodeOfferings }, @{ $next_result->ReservedNodeOfferings };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ReservedNodeOfferings') foreach (@{ $result->ReservedNodeOfferings });
        $result = $self->DescribeReservedNodeOfferings(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ReservedNodeOfferings') foreach (@{ $result->ReservedNodeOfferings });
    }

    return undef
  }
  sub DescribeAllReservedNodes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReservedNodes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeReservedNodes(@_, Marker => $next_result->Marker);
        push @{ $result->ReservedNodes }, @{ $next_result->ReservedNodes };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ReservedNodes') foreach (@{ $result->ReservedNodes });
        $result = $self->DescribeReservedNodes(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ReservedNodes') foreach (@{ $result->ReservedNodes });
    }

    return undef
  }
  sub DescribeAllSnapshotCopyGrants {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSnapshotCopyGrants(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeSnapshotCopyGrants(@_, Marker => $next_result->Marker);
        push @{ $result->SnapshotCopyGrants }, @{ $next_result->SnapshotCopyGrants };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'SnapshotCopyGrants') foreach (@{ $result->SnapshotCopyGrants });
        $result = $self->DescribeSnapshotCopyGrants(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'SnapshotCopyGrants') foreach (@{ $result->SnapshotCopyGrants });
    }

    return undef
  }
  sub DescribeAllSnapshotSchedules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSnapshotSchedules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeSnapshotSchedules(@_, Marker => $next_result->Marker);
        push @{ $result->SnapshotSchedules }, @{ $next_result->SnapshotSchedules };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'SnapshotSchedules') foreach (@{ $result->SnapshotSchedules });
        $result = $self->DescribeSnapshotSchedules(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'SnapshotSchedules') foreach (@{ $result->SnapshotSchedules });
    }

    return undef
  }
  sub DescribeAllTableRestoreStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTableRestoreStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeTableRestoreStatus(@_, Marker => $next_result->Marker);
        push @{ $result->TableRestoreStatusDetails }, @{ $next_result->TableRestoreStatusDetails };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'TableRestoreStatusDetails') foreach (@{ $result->TableRestoreStatusDetails });
        $result = $self->DescribeTableRestoreStatus(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'TableRestoreStatusDetails') foreach (@{ $result->TableRestoreStatusDetails });
    }

    return undef
  }
  sub DescribeAllTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeTags(@_, Marker => $next_result->Marker);
        push @{ $result->TaggedResources }, @{ $next_result->TaggedResources };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'TaggedResources') foreach (@{ $result->TaggedResources });
        $result = $self->DescribeTags(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'TaggedResources') foreach (@{ $result->TaggedResources });
    }

    return undef
  }
  sub GetAllReservedNodeExchangeOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetReservedNodeExchangeOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->GetReservedNodeExchangeOfferings(@_, Marker => $next_result->Marker);
        push @{ $result->ReservedNodeOfferings }, @{ $next_result->ReservedNodeOfferings };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ReservedNodeOfferings') foreach (@{ $result->ReservedNodeOfferings });
        $result = $self->GetReservedNodeExchangeOfferings(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ReservedNodeOfferings') foreach (@{ $result->ReservedNodeOfferings });
    }

    return undef
  }


  sub operations { qw/AcceptReservedNodeExchange AuthorizeClusterSecurityGroupIngress AuthorizeSnapshotAccess BatchDeleteClusterSnapshots BatchModifyClusterSnapshots CancelResize CopyClusterSnapshot CreateCluster CreateClusterParameterGroup CreateClusterSecurityGroup CreateClusterSnapshot CreateClusterSubnetGroup CreateEventSubscription CreateHsmClientCertificate CreateHsmConfiguration CreateSnapshotCopyGrant CreateSnapshotSchedule CreateTags DeleteCluster DeleteClusterParameterGroup DeleteClusterSecurityGroup DeleteClusterSnapshot DeleteClusterSubnetGroup DeleteEventSubscription DeleteHsmClientCertificate DeleteHsmConfiguration DeleteSnapshotCopyGrant DeleteSnapshotSchedule DeleteTags DescribeAccountAttributes DescribeClusterDbRevisions DescribeClusterParameterGroups DescribeClusterParameters DescribeClusters DescribeClusterSecurityGroups DescribeClusterSnapshots DescribeClusterSubnetGroups DescribeClusterTracks DescribeClusterVersions DescribeDefaultClusterParameters DescribeEventCategories DescribeEvents DescribeEventSubscriptions DescribeHsmClientCertificates DescribeHsmConfigurations DescribeLoggingStatus DescribeOrderableClusterOptions DescribeReservedNodeOfferings DescribeReservedNodes DescribeResize DescribeSnapshotCopyGrants DescribeSnapshotSchedules DescribeStorage DescribeTableRestoreStatus DescribeTags DisableLogging DisableSnapshotCopy EnableLogging EnableSnapshotCopy GetClusterCredentials GetReservedNodeExchangeOfferings ModifyCluster ModifyClusterDbRevision ModifyClusterIamRoles ModifyClusterMaintenance ModifyClusterParameterGroup ModifyClusterSnapshot ModifyClusterSnapshotSchedule ModifyClusterSubnetGroup ModifyEventSubscription ModifySnapshotCopyRetentionPeriod ModifySnapshotSchedule PurchaseReservedNodeOffering RebootCluster ResetClusterParameterGroup ResizeCluster RestoreFromClusterSnapshot RestoreTableFromClusterSnapshot RevokeClusterSecurityGroupIngress RevokeSnapshotAccess RotateEncryptionKey / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift - Perl Interface to AWS Amazon Redshift

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('RedShift');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Redshift

B<Overview>

This is an interface reference for Amazon Redshift. It contains
documentation for one of the programming or command line interfaces you
can use to manage Amazon Redshift clusters. Note that Amazon Redshift
is asynchronous, which means that some interfaces may require
techniques, such as polling or asynchronous callback handlers, to
determine when a command has been applied. In this reference, the
parameter descriptions indicate whether a change is applied
immediately, on the next instance reboot, or during the next
maintenance window. For a summary of the Amazon Redshift cluster
management interfaces, go to Using the Amazon Redshift Management
Interfaces
(http://docs.aws.amazon.com/redshift/latest/mgmt/using-aws-sdk.html).

Amazon Redshift manages all the work of setting up, operating, and
scaling a data warehouse: provisioning capacity, monitoring and backing
up the cluster, and applying patches and upgrades to the Amazon
Redshift engine. You can focus on using your data to acquire new
insights for your business and customers.

If you are a first-time user of Amazon Redshift, we recommend that you
begin by reading the Amazon Redshift Getting Started Guide
(http://docs.aws.amazon.com/redshift/latest/gsg/getting-started.html).

If you are a database developer, the Amazon Redshift Database Developer
Guide (http://docs.aws.amazon.com/redshift/latest/dg/welcome.html)
explains how to design, build, query, and maintain the databases that
make up your data warehouse.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01>


=head1 METHODS

=head2 AcceptReservedNodeExchange

=over

=item ReservedNodeId => Str

=item TargetReservedNodeOfferingId => Str


=back

Each argument is described in detail in: L<Paws::RedShift::AcceptReservedNodeExchange>

Returns: a L<Paws::RedShift::AcceptReservedNodeExchangeOutputMessage> instance

Exchanges a DC1 Reserved Node for a DC2 Reserved Node with no changes
to the configuration (term, payment type, or number of nodes) and no
additional costs.


=head2 AuthorizeClusterSecurityGroupIngress

=over

=item ClusterSecurityGroupName => Str

=item [CIDRIP => Str]

=item [EC2SecurityGroupName => Str]

=item [EC2SecurityGroupOwnerId => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::AuthorizeClusterSecurityGroupIngress>

Returns: a L<Paws::RedShift::AuthorizeClusterSecurityGroupIngressResult> instance

Adds an inbound (ingress) rule to an Amazon Redshift security group.
Depending on whether the application accessing your cluster is running
on the Internet or an Amazon EC2 instance, you can authorize inbound
access to either a Classless Interdomain Routing (CIDR)/Internet
Protocol (IP) range or to an Amazon EC2 security group. You can add as
many as 20 ingress rules to an Amazon Redshift security group.

If you authorize access to an Amazon EC2 security group, specify
I<EC2SecurityGroupName> and I<EC2SecurityGroupOwnerId>. The Amazon EC2
security group and Amazon Redshift cluster must be in the same AWS
Region.

If you authorize access to a CIDR/IP address range, specify I<CIDRIP>.
For an overview of CIDR blocks, see the Wikipedia article on Classless
Inter-Domain Routing
(http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

You must also associate the security group with a cluster so that
clients running on these IP addresses or the EC2 instance are
authorized to connect to the cluster. For information about managing
security groups, go to Working with Security Groups
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 AuthorizeSnapshotAccess

=over

=item AccountWithRestoreAccess => Str

=item SnapshotIdentifier => Str

=item [SnapshotClusterIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::AuthorizeSnapshotAccess>

Returns: a L<Paws::RedShift::AuthorizeSnapshotAccessResult> instance

Authorizes the specified AWS customer account to restore the specified
snapshot.

For more information about working with snapshots, go to Amazon
Redshift Snapshots
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 BatchDeleteClusterSnapshots

=over

=item Identifiers => ArrayRef[L<Paws::RedShift::DeleteClusterSnapshotMessage>]


=back

Each argument is described in detail in: L<Paws::RedShift::BatchDeleteClusterSnapshots>

Returns: a L<Paws::RedShift::BatchDeleteClusterSnapshotsResult> instance

Deletes a set of cluster snapshots.


=head2 BatchModifyClusterSnapshots

=over

=item SnapshotIdentifierList => ArrayRef[Str|Undef]

=item [Force => Bool]

=item [ManualSnapshotRetentionPeriod => Int]


=back

Each argument is described in detail in: L<Paws::RedShift::BatchModifyClusterSnapshots>

Returns: a L<Paws::RedShift::BatchModifyClusterSnapshotsOutputMessage> instance

Modifies the settings for a list of snapshots.


=head2 CancelResize

=over

=item ClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RedShift::CancelResize>

Returns: a L<Paws::RedShift::ResizeProgressMessage> instance

Cancels a resize operation.


=head2 CopyClusterSnapshot

=over

=item SourceSnapshotIdentifier => Str

=item TargetSnapshotIdentifier => Str

=item [ManualSnapshotRetentionPeriod => Int]

=item [SourceSnapshotClusterIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::CopyClusterSnapshot>

Returns: a L<Paws::RedShift::CopyClusterSnapshotResult> instance

Copies the specified automated cluster snapshot to a new manual cluster
snapshot. The source must be an automated snapshot and it must be in
the available state.

When you delete a cluster, Amazon Redshift deletes any automated
snapshots of the cluster. Also, when the retention period of the
snapshot expires, Amazon Redshift automatically deletes it. If you want
to keep an automated snapshot for a longer period, you can make a
manual copy of the snapshot. Manual snapshots are retained until you
delete them.

For more information about working with snapshots, go to Amazon
Redshift Snapshots
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 CreateCluster

=over

=item ClusterIdentifier => Str

=item MasterUsername => Str

=item MasterUserPassword => Str

=item NodeType => Str

=item [AdditionalInfo => Str]

=item [AllowVersionUpgrade => Bool]

=item [AutomatedSnapshotRetentionPeriod => Int]

=item [AvailabilityZone => Str]

=item [ClusterParameterGroupName => Str]

=item [ClusterSecurityGroups => ArrayRef[Str|Undef]]

=item [ClusterSubnetGroupName => Str]

=item [ClusterType => Str]

=item [ClusterVersion => Str]

=item [DBName => Str]

=item [ElasticIp => Str]

=item [Encrypted => Bool]

=item [EnhancedVpcRouting => Bool]

=item [HsmClientCertificateIdentifier => Str]

=item [HsmConfigurationIdentifier => Str]

=item [IamRoles => ArrayRef[Str|Undef]]

=item [KmsKeyId => Str]

=item [MaintenanceTrackName => Str]

=item [ManualSnapshotRetentionPeriod => Int]

=item [NumberOfNodes => Int]

=item [Port => Int]

=item [PreferredMaintenanceWindow => Str]

=item [PubliclyAccessible => Bool]

=item [SnapshotScheduleIdentifier => Str]

=item [Tags => ArrayRef[L<Paws::RedShift::Tag>]]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedShift::CreateCluster>

Returns: a L<Paws::RedShift::CreateClusterResult> instance

Creates a new cluster.

To create a cluster in Virtual Private Cloud (VPC), you must provide a
cluster subnet group name. The cluster subnet group identifies the
subnets of your VPC that Amazon Redshift uses when creating the
cluster. For more information about managing clusters, go to Amazon
Redshift Clusters
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 CreateClusterParameterGroup

=over

=item Description => Str

=item ParameterGroupFamily => Str

=item ParameterGroupName => Str

=item [Tags => ArrayRef[L<Paws::RedShift::Tag>]]


=back

Each argument is described in detail in: L<Paws::RedShift::CreateClusterParameterGroup>

Returns: a L<Paws::RedShift::CreateClusterParameterGroupResult> instance

Creates an Amazon Redshift parameter group.

Creating parameter groups is independent of creating clusters. You can
associate a cluster with a parameter group when you create the cluster.
You can also associate an existing cluster with a parameter group after
the cluster is created by using ModifyCluster.

Parameters in the parameter group define specific behavior that applies
to the databases you create on the cluster. For more information about
parameters and parameter groups, go to Amazon Redshift Parameter Groups
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 CreateClusterSecurityGroup

=over

=item ClusterSecurityGroupName => Str

=item Description => Str

=item [Tags => ArrayRef[L<Paws::RedShift::Tag>]]


=back

Each argument is described in detail in: L<Paws::RedShift::CreateClusterSecurityGroup>

Returns: a L<Paws::RedShift::CreateClusterSecurityGroupResult> instance

Creates a new Amazon Redshift security group. You use security groups
to control access to non-VPC clusters.

For information about managing security groups, go to Amazon Redshift
Cluster Security Groups
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 CreateClusterSnapshot

=over

=item ClusterIdentifier => Str

=item SnapshotIdentifier => Str

=item [ManualSnapshotRetentionPeriod => Int]

=item [Tags => ArrayRef[L<Paws::RedShift::Tag>]]


=back

Each argument is described in detail in: L<Paws::RedShift::CreateClusterSnapshot>

Returns: a L<Paws::RedShift::CreateClusterSnapshotResult> instance

Creates a manual snapshot of the specified cluster. The cluster must be
in the C<available> state.

For more information about working with snapshots, go to Amazon
Redshift Snapshots
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 CreateClusterSubnetGroup

=over

=item ClusterSubnetGroupName => Str

=item Description => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [Tags => ArrayRef[L<Paws::RedShift::Tag>]]


=back

Each argument is described in detail in: L<Paws::RedShift::CreateClusterSubnetGroup>

Returns: a L<Paws::RedShift::CreateClusterSubnetGroupResult> instance

Creates a new Amazon Redshift subnet group. You must provide a list of
one or more subnets in your existing Amazon Virtual Private Cloud
(Amazon VPC) when creating Amazon Redshift subnet group.

For information about subnet groups, go to Amazon Redshift Cluster
Subnet Groups
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-cluster-subnet-groups.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 CreateEventSubscription

=over

=item SnsTopicArn => Str

=item SubscriptionName => Str

=item [Enabled => Bool]

=item [EventCategories => ArrayRef[Str|Undef]]

=item [Severity => Str]

=item [SourceIds => ArrayRef[Str|Undef]]

=item [SourceType => Str]

=item [Tags => ArrayRef[L<Paws::RedShift::Tag>]]


=back

Each argument is described in detail in: L<Paws::RedShift::CreateEventSubscription>

Returns: a L<Paws::RedShift::CreateEventSubscriptionResult> instance

Creates an Amazon Redshift event notification subscription. This action
requires an ARN (Amazon Resource Name) of an Amazon SNS topic created
by either the Amazon Redshift console, the Amazon SNS console, or the
Amazon SNS API. To obtain an ARN with Amazon SNS, you must create a
topic in Amazon SNS and subscribe to the topic. The ARN is displayed in
the SNS console.

You can specify the source type, and lists of Amazon Redshift source
IDs, event categories, and event severities. Notifications will be sent
for all events you want that match those criteria. For example, you can
specify source type = cluster, source ID = my-cluster-1 and mycluster2,
event categories = Availability, Backup, and severity = ERROR. The
subscription will only send notifications for those ERROR events in the
Availability and Backup categories for the specified clusters.

If you specify both the source type and source IDs, such as source type
= cluster and source identifier = my-cluster-1, notifications will be
sent for all the cluster events for my-cluster-1. If you specify a
source type but do not specify a source identifier, you will receive
notice of the events for the objects of that type in your AWS account.
If you do not specify either the SourceType nor the SourceIdentifier,
you will be notified of events generated from all Amazon Redshift
sources belonging to your AWS account. You must specify a source type
if you specify a source ID.


=head2 CreateHsmClientCertificate

=over

=item HsmClientCertificateIdentifier => Str

=item [Tags => ArrayRef[L<Paws::RedShift::Tag>]]


=back

Each argument is described in detail in: L<Paws::RedShift::CreateHsmClientCertificate>

Returns: a L<Paws::RedShift::CreateHsmClientCertificateResult> instance

Creates an HSM client certificate that an Amazon Redshift cluster will
use to connect to the client's HSM in order to store and retrieve the
keys used to encrypt the cluster databases.

The command returns a public key, which you must store in the HSM. In
addition to creating the HSM certificate, you must create an Amazon
Redshift HSM configuration that provides a cluster the information
needed to store and use encryption keys in the HSM. For more
information, go to Hardware Security Modules
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html)
in the Amazon Redshift Cluster Management Guide.


=head2 CreateHsmConfiguration

=over

=item Description => Str

=item HsmConfigurationIdentifier => Str

=item HsmIpAddress => Str

=item HsmPartitionName => Str

=item HsmPartitionPassword => Str

=item HsmServerPublicCertificate => Str

=item [Tags => ArrayRef[L<Paws::RedShift::Tag>]]


=back

Each argument is described in detail in: L<Paws::RedShift::CreateHsmConfiguration>

Returns: a L<Paws::RedShift::CreateHsmConfigurationResult> instance

Creates an HSM configuration that contains the information required by
an Amazon Redshift cluster to store and use database encryption keys in
a Hardware Security Module (HSM). After creating the HSM configuration,
you can specify it as a parameter when creating a cluster. The cluster
will then store its encryption keys in the HSM.

In addition to creating an HSM configuration, you must also create an
HSM client certificate. For more information, go to Hardware Security
Modules
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html)
in the Amazon Redshift Cluster Management Guide.


=head2 CreateSnapshotCopyGrant

=over

=item SnapshotCopyGrantName => Str

=item [KmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::RedShift::Tag>]]


=back

Each argument is described in detail in: L<Paws::RedShift::CreateSnapshotCopyGrant>

Returns: a L<Paws::RedShift::CreateSnapshotCopyGrantResult> instance

Creates a snapshot copy grant that permits Amazon Redshift to use a
customer master key (CMK) from AWS Key Management Service (AWS KMS) to
encrypt copied snapshots in a destination region.

For more information about managing snapshot copy grants, go to Amazon
Redshift Database Encryption
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 CreateSnapshotSchedule

=over

=item [DryRun => Bool]

=item [NextInvocations => Int]

=item [ScheduleDefinitions => ArrayRef[Str|Undef]]

=item [ScheduleDescription => Str]

=item [ScheduleIdentifier => Str]

=item [Tags => ArrayRef[L<Paws::RedShift::Tag>]]


=back

Each argument is described in detail in: L<Paws::RedShift::CreateSnapshotSchedule>

Returns: a L<Paws::RedShift::SnapshotSchedule> instance

Creates a new snapshot schedule.


=head2 CreateTags

=over

=item ResourceName => Str

=item Tags => ArrayRef[L<Paws::RedShift::Tag>]


=back

Each argument is described in detail in: L<Paws::RedShift::CreateTags>

Returns: nothing

Adds one or more tags to a specified resource.

A resource can have up to 50 tags. If you try to create more than 50
tags for a resource, you will receive an error and the attempt will
fail.

If you specify a key that already exists for the resource, the value
for that key will be updated with the new value.


=head2 DeleteCluster

=over

=item ClusterIdentifier => Str

=item [FinalClusterSnapshotIdentifier => Str]

=item [FinalClusterSnapshotRetentionPeriod => Int]

=item [SkipFinalClusterSnapshot => Bool]


=back

Each argument is described in detail in: L<Paws::RedShift::DeleteCluster>

Returns: a L<Paws::RedShift::DeleteClusterResult> instance

Deletes a previously provisioned cluster. A successful response from
the web service indicates that the request was received correctly. Use
DescribeClusters to monitor the status of the deletion. The delete
operation cannot be canceled or reverted once submitted. For more
information about managing clusters, go to Amazon Redshift Clusters
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
in the I<Amazon Redshift Cluster Management Guide>.

If you want to shut down the cluster and retain it for future use, set
I<SkipFinalClusterSnapshot> to C<false> and specify a name for
I<FinalClusterSnapshotIdentifier>. You can later restore this snapshot
to resume using the cluster. If a final cluster snapshot is requested,
the status of the cluster will be "final-snapshot" while the snapshot
is being taken, then it's "deleting" once Amazon Redshift begins
deleting the cluster.

For more information about managing clusters, go to Amazon Redshift
Clusters
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 DeleteClusterParameterGroup

=over

=item ParameterGroupName => Str


=back

Each argument is described in detail in: L<Paws::RedShift::DeleteClusterParameterGroup>

Returns: nothing

Deletes a specified Amazon Redshift parameter group.

You cannot delete a parameter group if it is associated with a cluster.


=head2 DeleteClusterSecurityGroup

=over

=item ClusterSecurityGroupName => Str


=back

Each argument is described in detail in: L<Paws::RedShift::DeleteClusterSecurityGroup>

Returns: nothing

Deletes an Amazon Redshift security group.

You cannot delete a security group that is associated with any
clusters. You cannot delete the default security group.

For information about managing security groups, go to Amazon Redshift
Cluster Security Groups
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 DeleteClusterSnapshot

=over

=item SnapshotIdentifier => Str

=item [SnapshotClusterIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::DeleteClusterSnapshot>

Returns: a L<Paws::RedShift::DeleteClusterSnapshotResult> instance

Deletes the specified manual snapshot. The snapshot must be in the
C<available> state, with no other users authorized to access the
snapshot.

Unlike automated snapshots, manual snapshots are retained even after
you delete your cluster. Amazon Redshift does not delete your manual
snapshots. You must delete manual snapshot explicitly to avoid getting
charged. If other accounts are authorized to access the snapshot, you
must revoke all of the authorizations before you can delete the
snapshot.


=head2 DeleteClusterSubnetGroup

=over

=item ClusterSubnetGroupName => Str


=back

Each argument is described in detail in: L<Paws::RedShift::DeleteClusterSubnetGroup>

Returns: nothing

Deletes the specified cluster subnet group.


=head2 DeleteEventSubscription

=over

=item SubscriptionName => Str


=back

Each argument is described in detail in: L<Paws::RedShift::DeleteEventSubscription>

Returns: nothing

Deletes an Amazon Redshift event notification subscription.


=head2 DeleteHsmClientCertificate

=over

=item HsmClientCertificateIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RedShift::DeleteHsmClientCertificate>

Returns: nothing

Deletes the specified HSM client certificate.


=head2 DeleteHsmConfiguration

=over

=item HsmConfigurationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RedShift::DeleteHsmConfiguration>

Returns: nothing

Deletes the specified Amazon Redshift HSM configuration.


=head2 DeleteSnapshotCopyGrant

=over

=item SnapshotCopyGrantName => Str


=back

Each argument is described in detail in: L<Paws::RedShift::DeleteSnapshotCopyGrant>

Returns: nothing

Deletes the specified snapshot copy grant.


=head2 DeleteSnapshotSchedule

=over

=item ScheduleIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RedShift::DeleteSnapshotSchedule>

Returns: nothing

Deletes a snapshot schedule.


=head2 DeleteTags

=over

=item ResourceName => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::RedShift::DeleteTags>

Returns: nothing

Deletes a tag or tags from a resource. You must provide the ARN of the
resource from which you want to delete the tag or tags.


=head2 DescribeAccountAttributes

=over

=item [AttributeNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeAccountAttributes>

Returns: a L<Paws::RedShift::AccountAttributeList> instance

Returns a list of attributes attached to an account


=head2 DescribeClusterDbRevisions

=over

=item [ClusterIdentifier => Str]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeClusterDbRevisions>

Returns: a L<Paws::RedShift::ClusterDbRevisionsMessage> instance

Returns an array of C<ClusterDbRevision> objects.


=head2 DescribeClusterParameterGroups

=over

=item [Marker => Str]

=item [MaxRecords => Int]

=item [ParameterGroupName => Str]

=item [TagKeys => ArrayRef[Str|Undef]]

=item [TagValues => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeClusterParameterGroups>

Returns: a L<Paws::RedShift::ClusterParameterGroupsMessage> instance

Returns a list of Amazon Redshift parameter groups, including parameter
groups you created and the default parameter group. For each parameter
group, the response includes the parameter group name, description, and
parameter group family name. You can optionally specify a name to
retrieve the description of a specific parameter group.

For more information about parameters and parameter groups, go to
Amazon Redshift Parameter Groups
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
in the I<Amazon Redshift Cluster Management Guide>.

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all parameter groups that match any combination of the
specified keys and values. For example, if you have C<owner> and
C<environment> for tag keys, and C<admin> and C<test> for tag values,
all parameter groups that have any combination of those values are
returned.

If both tag keys and values are omitted from the request, parameter
groups are returned regardless of whether they have tag keys or values
associated with them.


=head2 DescribeClusterParameters

=over

=item ParameterGroupName => Str

=item [Marker => Str]

=item [MaxRecords => Int]

=item [Source => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeClusterParameters>

Returns: a L<Paws::RedShift::ClusterParameterGroupDetails> instance

Returns a detailed list of parameters contained within the specified
Amazon Redshift parameter group. For each parameter the response
includes information such as parameter name, description, data type,
value, whether the parameter value is modifiable, and so on.

You can specify I<source> filter to retrieve parameters of only
specific type. For example, to retrieve parameters that were modified
by a user action such as from ModifyClusterParameterGroup, you can
specify I<source> equal to I<user>.

For more information about parameters and parameter groups, go to
Amazon Redshift Parameter Groups
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 DescribeClusters

=over

=item [ClusterIdentifier => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [TagKeys => ArrayRef[Str|Undef]]

=item [TagValues => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeClusters>

Returns: a L<Paws::RedShift::ClustersMessage> instance

Returns properties of provisioned clusters including general cluster
properties, cluster database properties, maintenance and backup
properties, and security and access properties. This operation supports
pagination. For more information about managing clusters, go to Amazon
Redshift Clusters
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
in the I<Amazon Redshift Cluster Management Guide>.

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all clusters that match any combination of the
specified keys and values. For example, if you have C<owner> and
C<environment> for tag keys, and C<admin> and C<test> for tag values,
all clusters that have any combination of those values are returned.

If both tag keys and values are omitted from the request, clusters are
returned regardless of whether they have tag keys or values associated
with them.


=head2 DescribeClusterSecurityGroups

=over

=item [ClusterSecurityGroupName => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [TagKeys => ArrayRef[Str|Undef]]

=item [TagValues => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeClusterSecurityGroups>

Returns: a L<Paws::RedShift::ClusterSecurityGroupMessage> instance

Returns information about Amazon Redshift security groups. If the name
of a security group is specified, the response will contain only
information about only that security group.

For information about managing security groups, go to Amazon Redshift
Cluster Security Groups
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
in the I<Amazon Redshift Cluster Management Guide>.

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all security groups that match any combination of the
specified keys and values. For example, if you have C<owner> and
C<environment> for tag keys, and C<admin> and C<test> for tag values,
all security groups that have any combination of those values are
returned.

If both tag keys and values are omitted from the request, security
groups are returned regardless of whether they have tag keys or values
associated with them.


=head2 DescribeClusterSnapshots

=over

=item [ClusterExists => Bool]

=item [ClusterIdentifier => Str]

=item [EndTime => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [OwnerAccount => Str]

=item [SnapshotIdentifier => Str]

=item [SnapshotType => Str]

=item [SortingEntities => ArrayRef[L<Paws::RedShift::SnapshotSortingEntity>]]

=item [StartTime => Str]

=item [TagKeys => ArrayRef[Str|Undef]]

=item [TagValues => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeClusterSnapshots>

Returns: a L<Paws::RedShift::SnapshotMessage> instance

Returns one or more snapshot objects, which contain metadata about your
cluster snapshots. By default, this operation returns information about
all snapshots of all clusters that are owned by you AWS customer
account. No information is returned for snapshots owned by inactive AWS
customer accounts.

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all snapshots that match any combination of the
specified keys and values. For example, if you have C<owner> and
C<environment> for tag keys, and C<admin> and C<test> for tag values,
all snapshots that have any combination of those values are returned.
Only snapshots that you own are returned in the response; shared
snapshots are not returned with the tag key and tag value request
parameters.

If both tag keys and values are omitted from the request, snapshots are
returned regardless of whether they have tag keys or values associated
with them.


=head2 DescribeClusterSubnetGroups

=over

=item [ClusterSubnetGroupName => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [TagKeys => ArrayRef[Str|Undef]]

=item [TagValues => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeClusterSubnetGroups>

Returns: a L<Paws::RedShift::ClusterSubnetGroupMessage> instance

Returns one or more cluster subnet group objects, which contain
metadata about your cluster subnet groups. By default, this operation
returns information about all cluster subnet groups that are defined in
you AWS account.

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all subnet groups that match any combination of the
specified keys and values. For example, if you have C<owner> and
C<environment> for tag keys, and C<admin> and C<test> for tag values,
all subnet groups that have any combination of those values are
returned.

If both tag keys and values are omitted from the request, subnet groups
are returned regardless of whether they have tag keys or values
associated with them.


=head2 DescribeClusterTracks

=over

=item [MaintenanceTrackName => Str]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeClusterTracks>

Returns: a L<Paws::RedShift::TrackListMessage> instance

Returns a list of all the available maintenance tracks.


=head2 DescribeClusterVersions

=over

=item [ClusterParameterGroupFamily => Str]

=item [ClusterVersion => Str]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeClusterVersions>

Returns: a L<Paws::RedShift::ClusterVersionsMessage> instance

Returns descriptions of the available Amazon Redshift cluster versions.
You can call this operation even before creating any clusters to learn
more about the Amazon Redshift versions. For more information about
managing clusters, go to Amazon Redshift Clusters
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 DescribeDefaultClusterParameters

=over

=item ParameterGroupFamily => Str

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeDefaultClusterParameters>

Returns: a L<Paws::RedShift::DescribeDefaultClusterParametersResult> instance

Returns a list of parameter settings for the specified parameter group
family.

For more information about parameters and parameter groups, go to
Amazon Redshift Parameter Groups
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 DescribeEventCategories

=over

=item [SourceType => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeEventCategories>

Returns: a L<Paws::RedShift::EventCategoriesMessage> instance

Displays a list of event categories for all event source types, or for
a specified source type. For a list of the event categories and source
types, go to Amazon Redshift Event Notifications
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html).


=head2 DescribeEvents

=over

=item [Duration => Int]

=item [EndTime => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SourceIdentifier => Str]

=item [SourceType => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeEvents>

Returns: a L<Paws::RedShift::EventsMessage> instance

Returns events related to clusters, security groups, snapshots, and
parameter groups for the past 14 days. Events specific to a particular
cluster, security group, snapshot or parameter group can be obtained by
providing the name as a parameter. By default, the past hour of events
are returned.


=head2 DescribeEventSubscriptions

=over

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SubscriptionName => Str]

=item [TagKeys => ArrayRef[Str|Undef]]

=item [TagValues => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeEventSubscriptions>

Returns: a L<Paws::RedShift::EventSubscriptionsMessage> instance

Lists descriptions of all the Amazon Redshift event notification
subscriptions for a customer account. If you specify a subscription
name, lists the description for that subscription.

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all event notification subscriptions that match any
combination of the specified keys and values. For example, if you have
C<owner> and C<environment> for tag keys, and C<admin> and C<test> for
tag values, all subscriptions that have any combination of those values
are returned.

If both tag keys and values are omitted from the request, subscriptions
are returned regardless of whether they have tag keys or values
associated with them.


=head2 DescribeHsmClientCertificates

=over

=item [HsmClientCertificateIdentifier => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [TagKeys => ArrayRef[Str|Undef]]

=item [TagValues => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeHsmClientCertificates>

Returns: a L<Paws::RedShift::HsmClientCertificateMessage> instance

Returns information about the specified HSM client certificate. If no
certificate ID is specified, returns information about all the HSM
certificates owned by your AWS customer account.

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all HSM client certificates that match any combination
of the specified keys and values. For example, if you have C<owner> and
C<environment> for tag keys, and C<admin> and C<test> for tag values,
all HSM client certificates that have any combination of those values
are returned.

If both tag keys and values are omitted from the request, HSM client
certificates are returned regardless of whether they have tag keys or
values associated with them.


=head2 DescribeHsmConfigurations

=over

=item [HsmConfigurationIdentifier => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [TagKeys => ArrayRef[Str|Undef]]

=item [TagValues => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeHsmConfigurations>

Returns: a L<Paws::RedShift::HsmConfigurationMessage> instance

Returns information about the specified Amazon Redshift HSM
configuration. If no configuration ID is specified, returns information
about all the HSM configurations owned by your AWS customer account.

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all HSM connections that match any combination of the
specified keys and values. For example, if you have C<owner> and
C<environment> for tag keys, and C<admin> and C<test> for tag values,
all HSM connections that have any combination of those values are
returned.

If both tag keys and values are omitted from the request, HSM
connections are returned regardless of whether they have tag keys or
values associated with them.


=head2 DescribeLoggingStatus

=over

=item ClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeLoggingStatus>

Returns: a L<Paws::RedShift::LoggingStatus> instance

Describes whether information, such as queries and connection attempts,
is being logged for the specified Amazon Redshift cluster.


=head2 DescribeOrderableClusterOptions

=over

=item [ClusterVersion => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [NodeType => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeOrderableClusterOptions>

Returns: a L<Paws::RedShift::OrderableClusterOptionsMessage> instance

Returns a list of orderable cluster options. Before you create a new
cluster you can use this operation to find what options are available,
such as the EC2 Availability Zones (AZ) in the specific AWS Region that
you can specify, and the node types you can request. The node types
differ by available storage, memory, CPU and price. With the cost
involved you might want to obtain a list of cluster options in the
specific region and specify values when creating a cluster. For more
information about managing clusters, go to Amazon Redshift Clusters
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 DescribeReservedNodeOfferings

=over

=item [Marker => Str]

=item [MaxRecords => Int]

=item [ReservedNodeOfferingId => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeReservedNodeOfferings>

Returns: a L<Paws::RedShift::ReservedNodeOfferingsMessage> instance

Returns a list of the available reserved node offerings by Amazon
Redshift with their descriptions including the node type, the fixed and
recurring costs of reserving the node and duration the node will be
reserved for you. These descriptions help you determine which reserve
node offering you want to purchase. You then use the unique offering ID
in you call to PurchaseReservedNodeOffering to reserve one or more
nodes for your Amazon Redshift cluster.

For more information about reserved node offerings, go to Purchasing
Reserved Nodes
(http://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 DescribeReservedNodes

=over

=item [Marker => Str]

=item [MaxRecords => Int]

=item [ReservedNodeId => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeReservedNodes>

Returns: a L<Paws::RedShift::ReservedNodesMessage> instance

Returns the descriptions of the reserved nodes.


=head2 DescribeResize

=over

=item ClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeResize>

Returns: a L<Paws::RedShift::ResizeProgressMessage> instance

Returns information about the last resize operation for the specified
cluster. If no resize operation has ever been initiated for the
specified cluster, a C<HTTP 404> error is returned. If a resize
operation was initiated and completed, the status of the resize remains
as C<SUCCEEDED> until the next resize.

A resize operation can be requested using ModifyCluster and specifying
a different number or type of nodes for the cluster.


=head2 DescribeSnapshotCopyGrants

=over

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SnapshotCopyGrantName => Str]

=item [TagKeys => ArrayRef[Str|Undef]]

=item [TagValues => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeSnapshotCopyGrants>

Returns: a L<Paws::RedShift::SnapshotCopyGrantMessage> instance

Returns a list of snapshot copy grants owned by the AWS account in the
destination region.

For more information about managing snapshot copy grants, go to Amazon
Redshift Database Encryption
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 DescribeSnapshotSchedules

=over

=item [ClusterIdentifier => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [ScheduleIdentifier => Str]

=item [TagKeys => ArrayRef[Str|Undef]]

=item [TagValues => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeSnapshotSchedules>

Returns: a L<Paws::RedShift::DescribeSnapshotSchedulesOutputMessage> instance

Returns a list of snapshot schedules.


=head2 DescribeStorage

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeStorage>

Returns: a L<Paws::RedShift::CustomerStorageMessage> instance

Returns the total amount of snapshot usage and provisioned storage for
a user in megabytes.


=head2 DescribeTableRestoreStatus

=over

=item [ClusterIdentifier => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [TableRestoreRequestId => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeTableRestoreStatus>

Returns: a L<Paws::RedShift::TableRestoreStatusMessage> instance

Lists the status of one or more table restore requests made using the
RestoreTableFromClusterSnapshot API action. If you don't specify a
value for the C<TableRestoreRequestId> parameter, then
C<DescribeTableRestoreStatus> returns the status of all table restore
requests ordered by the date and time of the request in ascending
order. Otherwise C<DescribeTableRestoreStatus> returns the status of
the table specified by C<TableRestoreRequestId>.


=head2 DescribeTags

=over

=item [Marker => Str]

=item [MaxRecords => Int]

=item [ResourceName => Str]

=item [ResourceType => Str]

=item [TagKeys => ArrayRef[Str|Undef]]

=item [TagValues => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedShift::DescribeTags>

Returns: a L<Paws::RedShift::TaggedResourceListMessage> instance

Returns a list of tags. You can return tags from a specific resource by
specifying an ARN, or you can return all tags for a given type of
resource, such as clusters, snapshots, and so on.

The following are limitations for C<DescribeTags>:

=over

=item *

You cannot specify an ARN and a resource-type value together in the
same request.

=item *

You cannot use the C<MaxRecords> and C<Marker> parameters together with
the ARN parameter.

=item *

The C<MaxRecords> parameter can be a range from 10 to 50 results to
return in a request.

=back

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all resources that match any combination of the
specified keys and values. For example, if you have C<owner> and
C<environment> for tag keys, and C<admin> and C<test> for tag values,
all resources that have any combination of those values are returned.

If both tag keys and values are omitted from the request, resources are
returned regardless of whether they have tag keys or values associated
with them.


=head2 DisableLogging

=over

=item ClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RedShift::DisableLogging>

Returns: a L<Paws::RedShift::LoggingStatus> instance

Stops logging information, such as queries and connection attempts, for
the specified Amazon Redshift cluster.


=head2 DisableSnapshotCopy

=over

=item ClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RedShift::DisableSnapshotCopy>

Returns: a L<Paws::RedShift::DisableSnapshotCopyResult> instance

Disables the automatic copying of snapshots from one region to another
region for a specified cluster.

If your cluster and its snapshots are encrypted using a customer master
key (CMK) from AWS KMS, use DeleteSnapshotCopyGrant to delete the grant
that grants Amazon Redshift permission to the CMK in the destination
region.


=head2 EnableLogging

=over

=item BucketName => Str

=item ClusterIdentifier => Str

=item [S3KeyPrefix => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::EnableLogging>

Returns: a L<Paws::RedShift::LoggingStatus> instance

Starts logging information, such as queries and connection attempts,
for the specified Amazon Redshift cluster.


=head2 EnableSnapshotCopy

=over

=item ClusterIdentifier => Str

=item DestinationRegion => Str

=item [ManualSnapshotRetentionPeriod => Int]

=item [RetentionPeriod => Int]

=item [SnapshotCopyGrantName => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::EnableSnapshotCopy>

Returns: a L<Paws::RedShift::EnableSnapshotCopyResult> instance

Enables the automatic copy of snapshots from one region to another
region for a specified cluster.


=head2 GetClusterCredentials

=over

=item ClusterIdentifier => Str

=item DbUser => Str

=item [AutoCreate => Bool]

=item [DbGroups => ArrayRef[Str|Undef]]

=item [DbName => Str]

=item [DurationSeconds => Int]


=back

Each argument is described in detail in: L<Paws::RedShift::GetClusterCredentials>

Returns: a L<Paws::RedShift::ClusterCredentials> instance

Returns a database user name and temporary password with temporary
authorization to log on to an Amazon Redshift database. The action
returns the database user name prefixed with C<IAM:> if C<AutoCreate>
is C<False> or C<IAMA:> if C<AutoCreate> is C<True>. You can optionally
specify one or more database user groups that the user will join at log
on. By default, the temporary credentials expire in 900 seconds. You
can optionally specify a duration between 900 seconds (15 minutes) and
3600 seconds (60 minutes). For more information, see Using IAM
Authentication to Generate Database User Credentials
(http://docs.aws.amazon.com/redshift/latest/mgmt/generating-user-credentials.html)
in the Amazon Redshift Cluster Management Guide.

The AWS Identity and Access Management (IAM)user or role that executes
GetClusterCredentials must have an IAM policy attached that allows
access to all necessary actions and resources. For more information
about permissions, see Resource Policies for GetClusterCredentials
(http://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html#redshift-policy-resources.getclustercredentials-resources)
in the Amazon Redshift Cluster Management Guide.

If the C<DbGroups> parameter is specified, the IAM policy must allow
the C<redshift:JoinGroup> action with access to the listed C<dbgroups>.

In addition, if the C<AutoCreate> parameter is set to C<True>, then the
policy must include the C<redshift:CreateClusterUser> privilege.

If the C<DbName> parameter is specified, the IAM policy must allow
access to the resource C<dbname> for the specified database name.


=head2 GetReservedNodeExchangeOfferings

=over

=item ReservedNodeId => Str

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RedShift::GetReservedNodeExchangeOfferings>

Returns: a L<Paws::RedShift::GetReservedNodeExchangeOfferingsOutputMessage> instance

Returns an array of DC2 ReservedNodeOfferings that matches the payment
type, term, and usage price of the given DC1 reserved node.


=head2 ModifyCluster

=over

=item ClusterIdentifier => Str

=item [AllowVersionUpgrade => Bool]

=item [AutomatedSnapshotRetentionPeriod => Int]

=item [ClusterParameterGroupName => Str]

=item [ClusterSecurityGroups => ArrayRef[Str|Undef]]

=item [ClusterType => Str]

=item [ClusterVersion => Str]

=item [ElasticIp => Str]

=item [Encrypted => Bool]

=item [EnhancedVpcRouting => Bool]

=item [HsmClientCertificateIdentifier => Str]

=item [HsmConfigurationIdentifier => Str]

=item [KmsKeyId => Str]

=item [MaintenanceTrackName => Str]

=item [ManualSnapshotRetentionPeriod => Int]

=item [MasterUserPassword => Str]

=item [NewClusterIdentifier => Str]

=item [NodeType => Str]

=item [NumberOfNodes => Int]

=item [PreferredMaintenanceWindow => Str]

=item [PubliclyAccessible => Bool]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedShift::ModifyCluster>

Returns: a L<Paws::RedShift::ModifyClusterResult> instance

Modifies the settings for a cluster. For example, you can add another
security or parameter group, update the preferred maintenance window,
or change the master user password. Resetting a cluster password or
modifying the security groups associated with a cluster do not need a
reboot. However, modifying a parameter group requires a reboot for
parameters to take effect. For more information about managing
clusters, go to Amazon Redshift Clusters
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
in the I<Amazon Redshift Cluster Management Guide>.

You can also change node type and the number of nodes to scale up or
down the cluster. When resizing a cluster, you must specify both the
number of nodes and the node type even if one of the parameters does
not change.


=head2 ModifyClusterDbRevision

=over

=item ClusterIdentifier => Str

=item RevisionTarget => Str


=back

Each argument is described in detail in: L<Paws::RedShift::ModifyClusterDbRevision>

Returns: a L<Paws::RedShift::ModifyClusterDbRevisionResult> instance

Modifies the database revision of a cluster. The database revision is a
unique revision of the database running in a cluster.


=head2 ModifyClusterIamRoles

=over

=item ClusterIdentifier => Str

=item [AddIamRoles => ArrayRef[Str|Undef]]

=item [RemoveIamRoles => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedShift::ModifyClusterIamRoles>

Returns: a L<Paws::RedShift::ModifyClusterIamRolesResult> instance

Modifies the list of AWS Identity and Access Management (IAM) roles
that can be used by the cluster to access other AWS services.

A cluster can have up to 10 IAM roles associated at any time.


=head2 ModifyClusterMaintenance

=over

=item ClusterIdentifier => Str

=item [DeferMaintenance => Bool]

=item [DeferMaintenanceDuration => Int]

=item [DeferMaintenanceEndTime => Str]

=item [DeferMaintenanceIdentifier => Str]

=item [DeferMaintenanceStartTime => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::ModifyClusterMaintenance>

Returns: a L<Paws::RedShift::ModifyClusterMaintenanceResult> instance

Modifies the maintenance settings of a cluster. For example, you can
defer a maintenance window. You can also update or cancel a deferment.


=head2 ModifyClusterParameterGroup

=over

=item ParameterGroupName => Str

=item Parameters => ArrayRef[L<Paws::RedShift::Parameter>]


=back

Each argument is described in detail in: L<Paws::RedShift::ModifyClusterParameterGroup>

Returns: a L<Paws::RedShift::ClusterParameterGroupNameMessage> instance

Modifies the parameters of a parameter group.

For more information about parameters and parameter groups, go to
Amazon Redshift Parameter Groups
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 ModifyClusterSnapshot

=over

=item SnapshotIdentifier => Str

=item [Force => Bool]

=item [ManualSnapshotRetentionPeriod => Int]


=back

Each argument is described in detail in: L<Paws::RedShift::ModifyClusterSnapshot>

Returns: a L<Paws::RedShift::ModifyClusterSnapshotResult> instance

Modifies the settings for a snapshot.


=head2 ModifyClusterSnapshotSchedule

=over

=item ClusterIdentifier => Str

=item [DisassociateSchedule => Bool]

=item [ScheduleIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::ModifyClusterSnapshotSchedule>

Returns: nothing

Modifies a snapshot schedule for a cluster.


=head2 ModifyClusterSubnetGroup

=over

=item ClusterSubnetGroupName => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::ModifyClusterSubnetGroup>

Returns: a L<Paws::RedShift::ModifyClusterSubnetGroupResult> instance

Modifies a cluster subnet group to include the specified list of VPC
subnets. The operation replaces the existing list of subnets with the
new list of subnets.


=head2 ModifyEventSubscription

=over

=item SubscriptionName => Str

=item [Enabled => Bool]

=item [EventCategories => ArrayRef[Str|Undef]]

=item [Severity => Str]

=item [SnsTopicArn => Str]

=item [SourceIds => ArrayRef[Str|Undef]]

=item [SourceType => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::ModifyEventSubscription>

Returns: a L<Paws::RedShift::ModifyEventSubscriptionResult> instance

Modifies an existing Amazon Redshift event notification subscription.


=head2 ModifySnapshotCopyRetentionPeriod

=over

=item ClusterIdentifier => Str

=item RetentionPeriod => Int

=item [Manual => Bool]


=back

Each argument is described in detail in: L<Paws::RedShift::ModifySnapshotCopyRetentionPeriod>

Returns: a L<Paws::RedShift::ModifySnapshotCopyRetentionPeriodResult> instance

Modifies the number of days to retain snapshots in the destination AWS
Region after they are copied from the source AWS Region. By default,
this operation only changes the retention period of copied automated
snapshots. The retention periods for both new and existing copied
automated snapshots are updated with the new retention period. You can
set the manual option to change only the retention periods of copied
manual snapshots. If you set this option, only newly copied manual
snapshots have the new retention period.


=head2 ModifySnapshotSchedule

=over

=item ScheduleDefinitions => ArrayRef[Str|Undef]

=item ScheduleIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RedShift::ModifySnapshotSchedule>

Returns: a L<Paws::RedShift::SnapshotSchedule> instance

Modifies a snapshot schedule. Any schedule associated with a cluster is
modified asynchronously.


=head2 PurchaseReservedNodeOffering

=over

=item ReservedNodeOfferingId => Str

=item [NodeCount => Int]


=back

Each argument is described in detail in: L<Paws::RedShift::PurchaseReservedNodeOffering>

Returns: a L<Paws::RedShift::PurchaseReservedNodeOfferingResult> instance

Allows you to purchase reserved nodes. Amazon Redshift offers a
predefined set of reserved node offerings. You can purchase one or more
of the offerings. You can call the DescribeReservedNodeOfferings API to
obtain the available reserved node offerings. You can call this API by
providing a specific reserved node offering and the number of nodes you
want to reserve.

For more information about reserved node offerings, go to Purchasing
Reserved Nodes
(http://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 RebootCluster

=over

=item ClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RedShift::RebootCluster>

Returns: a L<Paws::RedShift::RebootClusterResult> instance

Reboots a cluster. This action is taken as soon as possible. It results
in a momentary outage to the cluster, during which the cluster status
is set to C<rebooting>. A cluster event is created when the reboot is
completed. Any pending cluster modifications (see ModifyCluster) are
applied at this reboot. For more information about managing clusters,
go to Amazon Redshift Clusters
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 ResetClusterParameterGroup

=over

=item ParameterGroupName => Str

=item [Parameters => ArrayRef[L<Paws::RedShift::Parameter>]]

=item [ResetAllParameters => Bool]


=back

Each argument is described in detail in: L<Paws::RedShift::ResetClusterParameterGroup>

Returns: a L<Paws::RedShift::ClusterParameterGroupNameMessage> instance

Sets one or more parameters of the specified parameter group to their
default values and sets the source values of the parameters to
"engine-default". To reset the entire parameter group specify the
I<ResetAllParameters> parameter. For parameter changes to take effect
you must reboot any associated clusters.


=head2 ResizeCluster

=over

=item ClusterIdentifier => Str

=item NumberOfNodes => Int

=item [Classic => Bool]

=item [ClusterType => Str]

=item [NodeType => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::ResizeCluster>

Returns: a L<Paws::RedShift::ResizeClusterResult> instance

Changes the size of the cluster. You can change the cluster's type, or
change the number or type of nodes. The default behavior is to use the
elastic resize method. With an elastic resize, your cluster is
available for read and write operations more quickly than with the
classic resize method.

Elastic resize operations have the following restrictions:

=over

=item *

You can only resize clusters of the following types:

=over

=item *

dc2.large

=item *

dc2.8xlarge

=item *

ds2.xlarge

=item *

ds2.8xlarge

=back

=item *

The type of nodes that you add must match the node type for the
cluster.

=back



=head2 RestoreFromClusterSnapshot

=over

=item ClusterIdentifier => Str

=item SnapshotIdentifier => Str

=item [AdditionalInfo => Str]

=item [AllowVersionUpgrade => Bool]

=item [AutomatedSnapshotRetentionPeriod => Int]

=item [AvailabilityZone => Str]

=item [ClusterParameterGroupName => Str]

=item [ClusterSecurityGroups => ArrayRef[Str|Undef]]

=item [ClusterSubnetGroupName => Str]

=item [ElasticIp => Str]

=item [EnhancedVpcRouting => Bool]

=item [HsmClientCertificateIdentifier => Str]

=item [HsmConfigurationIdentifier => Str]

=item [IamRoles => ArrayRef[Str|Undef]]

=item [KmsKeyId => Str]

=item [MaintenanceTrackName => Str]

=item [ManualSnapshotRetentionPeriod => Int]

=item [NodeType => Str]

=item [OwnerAccount => Str]

=item [Port => Int]

=item [PreferredMaintenanceWindow => Str]

=item [PubliclyAccessible => Bool]

=item [SnapshotClusterIdentifier => Str]

=item [SnapshotScheduleIdentifier => Str]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedShift::RestoreFromClusterSnapshot>

Returns: a L<Paws::RedShift::RestoreFromClusterSnapshotResult> instance

Creates a new cluster from a snapshot. By default, Amazon Redshift
creates the resulting cluster with the same configuration as the
original cluster from which the snapshot was created, except that the
new cluster is created with the default cluster security and parameter
groups. After Amazon Redshift creates the cluster, you can use the
ModifyCluster API to associate a different security group and different
parameter group with the restored cluster. If you are using a DS node
type, you can also choose to change to another DS node type of the same
size during restore.

If you restore a cluster into a VPC, you must provide a cluster subnet
group where you want the cluster restored.

For more information about working with snapshots, go to Amazon
Redshift Snapshots
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 RestoreTableFromClusterSnapshot

=over

=item ClusterIdentifier => Str

=item NewTableName => Str

=item SnapshotIdentifier => Str

=item SourceDatabaseName => Str

=item SourceTableName => Str

=item [SourceSchemaName => Str]

=item [TargetDatabaseName => Str]

=item [TargetSchemaName => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::RestoreTableFromClusterSnapshot>

Returns: a L<Paws::RedShift::RestoreTableFromClusterSnapshotResult> instance

Creates a new table from a table in an Amazon Redshift cluster
snapshot. You must create the new table within the Amazon Redshift
cluster that the snapshot was taken from.

You cannot use C<RestoreTableFromClusterSnapshot> to restore a table
with the same name as an existing table in an Amazon Redshift cluster.
That is, you cannot overwrite an existing table in a cluster with a
restored table. If you want to replace your original table with a new,
restored table, then rename or drop your original table before you call
C<RestoreTableFromClusterSnapshot>. When you have renamed your original
table, then you can pass the original name of the table as the
C<NewTableName> parameter value in the call to
C<RestoreTableFromClusterSnapshot>. This way, you can replace the
original table with the table created from the snapshot.


=head2 RevokeClusterSecurityGroupIngress

=over

=item ClusterSecurityGroupName => Str

=item [CIDRIP => Str]

=item [EC2SecurityGroupName => Str]

=item [EC2SecurityGroupOwnerId => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::RevokeClusterSecurityGroupIngress>

Returns: a L<Paws::RedShift::RevokeClusterSecurityGroupIngressResult> instance

Revokes an ingress rule in an Amazon Redshift security group for a
previously authorized IP range or Amazon EC2 security group. To add an
ingress rule, see AuthorizeClusterSecurityGroupIngress. For information
about managing security groups, go to Amazon Redshift Cluster Security
Groups
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 RevokeSnapshotAccess

=over

=item AccountWithRestoreAccess => Str

=item SnapshotIdentifier => Str

=item [SnapshotClusterIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::RedShift::RevokeSnapshotAccess>

Returns: a L<Paws::RedShift::RevokeSnapshotAccessResult> instance

Removes the ability of the specified AWS customer account to restore
the specified snapshot. If the account is currently restoring the
snapshot, the restore will run to completion.

For more information about working with snapshots, go to Amazon
Redshift Snapshots
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 RotateEncryptionKey

=over

=item ClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RedShift::RotateEncryptionKey>

Returns: a L<Paws::RedShift::RotateEncryptionKeyResult> instance

Rotates the encryption keys for a cluster.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllClusterDbRevisions(sub { },[ClusterIdentifier => Str, Marker => Str, MaxRecords => Int])

=head2 DescribeAllClusterDbRevisions([ClusterIdentifier => Str, Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClusterDbRevisions, passing the object as the first parameter, and the string 'ClusterDbRevisions' as the second parameter 

If not, it will return a a L<Paws::RedShift::ClusterDbRevisionsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClusterParameterGroups(sub { },[Marker => Str, MaxRecords => Int, ParameterGroupName => Str, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])

=head2 DescribeAllClusterParameterGroups([Marker => Str, MaxRecords => Int, ParameterGroupName => Str, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ParameterGroups, passing the object as the first parameter, and the string 'ParameterGroups' as the second parameter 

If not, it will return a a L<Paws::RedShift::ClusterParameterGroupsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClusterParameters(sub { },ParameterGroupName => Str, [Marker => Str, MaxRecords => Int, Source => Str])

=head2 DescribeAllClusterParameters(ParameterGroupName => Str, [Marker => Str, MaxRecords => Int, Source => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Parameters, passing the object as the first parameter, and the string 'Parameters' as the second parameter 

If not, it will return a a L<Paws::RedShift::ClusterParameterGroupDetails> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClusters(sub { },[ClusterIdentifier => Str, Marker => Str, MaxRecords => Int, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])

=head2 DescribeAllClusters([ClusterIdentifier => Str, Marker => Str, MaxRecords => Int, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Clusters, passing the object as the first parameter, and the string 'Clusters' as the second parameter 

If not, it will return a a L<Paws::RedShift::ClustersMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClusterSecurityGroups(sub { },[ClusterSecurityGroupName => Str, Marker => Str, MaxRecords => Int, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])

=head2 DescribeAllClusterSecurityGroups([ClusterSecurityGroupName => Str, Marker => Str, MaxRecords => Int, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClusterSecurityGroups, passing the object as the first parameter, and the string 'ClusterSecurityGroups' as the second parameter 

If not, it will return a a L<Paws::RedShift::ClusterSecurityGroupMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClusterSnapshots(sub { },[ClusterExists => Bool, ClusterIdentifier => Str, EndTime => Str, Marker => Str, MaxRecords => Int, OwnerAccount => Str, SnapshotIdentifier => Str, SnapshotType => Str, SortingEntities => ArrayRef[L<Paws::RedShift::SnapshotSortingEntity>], StartTime => Str, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])

=head2 DescribeAllClusterSnapshots([ClusterExists => Bool, ClusterIdentifier => Str, EndTime => Str, Marker => Str, MaxRecords => Int, OwnerAccount => Str, SnapshotIdentifier => Str, SnapshotType => Str, SortingEntities => ArrayRef[L<Paws::RedShift::SnapshotSortingEntity>], StartTime => Str, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Snapshots, passing the object as the first parameter, and the string 'Snapshots' as the second parameter 

If not, it will return a a L<Paws::RedShift::SnapshotMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClusterSubnetGroups(sub { },[ClusterSubnetGroupName => Str, Marker => Str, MaxRecords => Int, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])

=head2 DescribeAllClusterSubnetGroups([ClusterSubnetGroupName => Str, Marker => Str, MaxRecords => Int, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClusterSubnetGroups, passing the object as the first parameter, and the string 'ClusterSubnetGroups' as the second parameter 

If not, it will return a a L<Paws::RedShift::ClusterSubnetGroupMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClusterTracks(sub { },[MaintenanceTrackName => Str, Marker => Str, MaxRecords => Int])

=head2 DescribeAllClusterTracks([MaintenanceTrackName => Str, Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MaintenanceTracks, passing the object as the first parameter, and the string 'MaintenanceTracks' as the second parameter 

If not, it will return a a L<Paws::RedShift::TrackListMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClusterVersions(sub { },[ClusterParameterGroupFamily => Str, ClusterVersion => Str, Marker => Str, MaxRecords => Int])

=head2 DescribeAllClusterVersions([ClusterParameterGroupFamily => Str, ClusterVersion => Str, Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClusterVersions, passing the object as the first parameter, and the string 'ClusterVersions' as the second parameter 

If not, it will return a a L<Paws::RedShift::ClusterVersionsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDefaultClusterParameters(sub { },ParameterGroupFamily => Str, [Marker => Str, MaxRecords => Int])

=head2 DescribeAllDefaultClusterParameters(ParameterGroupFamily => Str, [Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DefaultClusterParameters.Parameters, passing the object as the first parameter, and the string 'DefaultClusterParameters.Parameters' as the second parameter 

If not, it will return a a L<Paws::RedShift::DescribeDefaultClusterParametersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEvents(sub { },[Duration => Int, EndTime => Str, Marker => Str, MaxRecords => Int, SourceIdentifier => Str, SourceType => Str, StartTime => Str])

=head2 DescribeAllEvents([Duration => Int, EndTime => Str, Marker => Str, MaxRecords => Int, SourceIdentifier => Str, SourceType => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Events, passing the object as the first parameter, and the string 'Events' as the second parameter 

If not, it will return a a L<Paws::RedShift::EventsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEventSubscriptions(sub { },[Marker => Str, MaxRecords => Int, SubscriptionName => Str, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])

=head2 DescribeAllEventSubscriptions([Marker => Str, MaxRecords => Int, SubscriptionName => Str, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EventSubscriptionsList, passing the object as the first parameter, and the string 'EventSubscriptionsList' as the second parameter 

If not, it will return a a L<Paws::RedShift::EventSubscriptionsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllHsmClientCertificates(sub { },[HsmClientCertificateIdentifier => Str, Marker => Str, MaxRecords => Int, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])

=head2 DescribeAllHsmClientCertificates([HsmClientCertificateIdentifier => Str, Marker => Str, MaxRecords => Int, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HsmClientCertificates, passing the object as the first parameter, and the string 'HsmClientCertificates' as the second parameter 

If not, it will return a a L<Paws::RedShift::HsmClientCertificateMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllHsmConfigurations(sub { },[HsmConfigurationIdentifier => Str, Marker => Str, MaxRecords => Int, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])

=head2 DescribeAllHsmConfigurations([HsmConfigurationIdentifier => Str, Marker => Str, MaxRecords => Int, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HsmConfigurations, passing the object as the first parameter, and the string 'HsmConfigurations' as the second parameter 

If not, it will return a a L<Paws::RedShift::HsmConfigurationMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllOrderableClusterOptions(sub { },[ClusterVersion => Str, Marker => Str, MaxRecords => Int, NodeType => Str])

=head2 DescribeAllOrderableClusterOptions([ClusterVersion => Str, Marker => Str, MaxRecords => Int, NodeType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrderableClusterOptions, passing the object as the first parameter, and the string 'OrderableClusterOptions' as the second parameter 

If not, it will return a a L<Paws::RedShift::OrderableClusterOptionsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReservedNodeOfferings(sub { },[Marker => Str, MaxRecords => Int, ReservedNodeOfferingId => Str])

=head2 DescribeAllReservedNodeOfferings([Marker => Str, MaxRecords => Int, ReservedNodeOfferingId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReservedNodeOfferings, passing the object as the first parameter, and the string 'ReservedNodeOfferings' as the second parameter 

If not, it will return a a L<Paws::RedShift::ReservedNodeOfferingsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReservedNodes(sub { },[Marker => Str, MaxRecords => Int, ReservedNodeId => Str])

=head2 DescribeAllReservedNodes([Marker => Str, MaxRecords => Int, ReservedNodeId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReservedNodes, passing the object as the first parameter, and the string 'ReservedNodes' as the second parameter 

If not, it will return a a L<Paws::RedShift::ReservedNodesMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSnapshotCopyGrants(sub { },[Marker => Str, MaxRecords => Int, SnapshotCopyGrantName => Str, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])

=head2 DescribeAllSnapshotCopyGrants([Marker => Str, MaxRecords => Int, SnapshotCopyGrantName => Str, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SnapshotCopyGrants, passing the object as the first parameter, and the string 'SnapshotCopyGrants' as the second parameter 

If not, it will return a a L<Paws::RedShift::SnapshotCopyGrantMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSnapshotSchedules(sub { },[ClusterIdentifier => Str, Marker => Str, MaxRecords => Int, ScheduleIdentifier => Str, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])

=head2 DescribeAllSnapshotSchedules([ClusterIdentifier => Str, Marker => Str, MaxRecords => Int, ScheduleIdentifier => Str, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SnapshotSchedules, passing the object as the first parameter, and the string 'SnapshotSchedules' as the second parameter 

If not, it will return a a L<Paws::RedShift::DescribeSnapshotSchedulesOutputMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTableRestoreStatus(sub { },[ClusterIdentifier => Str, Marker => Str, MaxRecords => Int, TableRestoreRequestId => Str])

=head2 DescribeAllTableRestoreStatus([ClusterIdentifier => Str, Marker => Str, MaxRecords => Int, TableRestoreRequestId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TableRestoreStatusDetails, passing the object as the first parameter, and the string 'TableRestoreStatusDetails' as the second parameter 

If not, it will return a a L<Paws::RedShift::TableRestoreStatusMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTags(sub { },[Marker => Str, MaxRecords => Int, ResourceName => Str, ResourceType => Str, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])

=head2 DescribeAllTags([Marker => Str, MaxRecords => Int, ResourceName => Str, ResourceType => Str, TagKeys => ArrayRef[Str|Undef], TagValues => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TaggedResources, passing the object as the first parameter, and the string 'TaggedResources' as the second parameter 

If not, it will return a a L<Paws::RedShift::TaggedResourceListMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllReservedNodeExchangeOfferings(sub { },ReservedNodeId => Str, [Marker => Str, MaxRecords => Int])

=head2 GetAllReservedNodeExchangeOfferings(ReservedNodeId => Str, [Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReservedNodeOfferings, passing the object as the first parameter, and the string 'ReservedNodeOfferings' as the second parameter 

If not, it will return a a L<Paws::RedShift::GetReservedNodeExchangeOfferingsOutputMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

