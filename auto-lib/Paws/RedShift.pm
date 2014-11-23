
use Paws::API;


package Paws::RedShift {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'redshift');
  has version => (is => 'ro', isa => 'Str', default => '2012-12-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::XMLResponse');

  
  sub AuthorizeClusterSecurityGroupIngress {
    my $self = shift;
    return $self->do_call('Paws::RedShift::AuthorizeClusterSecurityGroupIngress', @_);
  }
  sub AuthorizeSnapshotAccess {
    my $self = shift;
    return $self->do_call('Paws::RedShift::AuthorizeSnapshotAccess', @_);
  }
  sub CopyClusterSnapshot {
    my $self = shift;
    return $self->do_call('Paws::RedShift::CopyClusterSnapshot', @_);
  }
  sub CreateCluster {
    my $self = shift;
    return $self->do_call('Paws::RedShift::CreateCluster', @_);
  }
  sub CreateClusterParameterGroup {
    my $self = shift;
    return $self->do_call('Paws::RedShift::CreateClusterParameterGroup', @_);
  }
  sub CreateClusterSecurityGroup {
    my $self = shift;
    return $self->do_call('Paws::RedShift::CreateClusterSecurityGroup', @_);
  }
  sub CreateClusterSnapshot {
    my $self = shift;
    return $self->do_call('Paws::RedShift::CreateClusterSnapshot', @_);
  }
  sub CreateClusterSubnetGroup {
    my $self = shift;
    return $self->do_call('Paws::RedShift::CreateClusterSubnetGroup', @_);
  }
  sub CreateEventSubscription {
    my $self = shift;
    return $self->do_call('Paws::RedShift::CreateEventSubscription', @_);
  }
  sub CreateHsmClientCertificate {
    my $self = shift;
    return $self->do_call('Paws::RedShift::CreateHsmClientCertificate', @_);
  }
  sub CreateHsmConfiguration {
    my $self = shift;
    return $self->do_call('Paws::RedShift::CreateHsmConfiguration', @_);
  }
  sub CreateTags {
    my $self = shift;
    return $self->do_call('Paws::RedShift::CreateTags', @_);
  }
  sub DeleteCluster {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DeleteCluster', @_);
  }
  sub DeleteClusterParameterGroup {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DeleteClusterParameterGroup', @_);
  }
  sub DeleteClusterSecurityGroup {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DeleteClusterSecurityGroup', @_);
  }
  sub DeleteClusterSnapshot {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DeleteClusterSnapshot', @_);
  }
  sub DeleteClusterSubnetGroup {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DeleteClusterSubnetGroup', @_);
  }
  sub DeleteEventSubscription {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DeleteEventSubscription', @_);
  }
  sub DeleteHsmClientCertificate {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DeleteHsmClientCertificate', @_);
  }
  sub DeleteHsmConfiguration {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DeleteHsmConfiguration', @_);
  }
  sub DeleteTags {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DeleteTags', @_);
  }
  sub DescribeClusterParameterGroups {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeClusterParameterGroups', @_);
  }
  sub DescribeClusterParameters {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeClusterParameters', @_);
  }
  sub DescribeClusters {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeClusters', @_);
  }
  sub DescribeClusterSecurityGroups {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeClusterSecurityGroups', @_);
  }
  sub DescribeClusterSnapshots {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeClusterSnapshots', @_);
  }
  sub DescribeClusterSubnetGroups {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeClusterSubnetGroups', @_);
  }
  sub DescribeClusterVersions {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeClusterVersions', @_);
  }
  sub DescribeDefaultClusterParameters {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeDefaultClusterParameters', @_);
  }
  sub DescribeEventCategories {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeEventCategories', @_);
  }
  sub DescribeEvents {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeEvents', @_);
  }
  sub DescribeEventSubscriptions {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeEventSubscriptions', @_);
  }
  sub DescribeHsmClientCertificates {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeHsmClientCertificates', @_);
  }
  sub DescribeHsmConfigurations {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeHsmConfigurations', @_);
  }
  sub DescribeLoggingStatus {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeLoggingStatus', @_);
  }
  sub DescribeOrderableClusterOptions {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeOrderableClusterOptions', @_);
  }
  sub DescribeReservedNodeOfferings {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeReservedNodeOfferings', @_);
  }
  sub DescribeReservedNodes {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeReservedNodes', @_);
  }
  sub DescribeResize {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeResize', @_);
  }
  sub DescribeTags {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DescribeTags', @_);
  }
  sub DisableLogging {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DisableLogging', @_);
  }
  sub DisableSnapshotCopy {
    my $self = shift;
    return $self->do_call('Paws::RedShift::DisableSnapshotCopy', @_);
  }
  sub EnableLogging {
    my $self = shift;
    return $self->do_call('Paws::RedShift::EnableLogging', @_);
  }
  sub EnableSnapshotCopy {
    my $self = shift;
    return $self->do_call('Paws::RedShift::EnableSnapshotCopy', @_);
  }
  sub ModifyCluster {
    my $self = shift;
    return $self->do_call('Paws::RedShift::ModifyCluster', @_);
  }
  sub ModifyClusterParameterGroup {
    my $self = shift;
    return $self->do_call('Paws::RedShift::ModifyClusterParameterGroup', @_);
  }
  sub ModifyClusterSubnetGroup {
    my $self = shift;
    return $self->do_call('Paws::RedShift::ModifyClusterSubnetGroup', @_);
  }
  sub ModifyEventSubscription {
    my $self = shift;
    return $self->do_call('Paws::RedShift::ModifyEventSubscription', @_);
  }
  sub ModifySnapshotCopyRetentionPeriod {
    my $self = shift;
    return $self->do_call('Paws::RedShift::ModifySnapshotCopyRetentionPeriod', @_);
  }
  sub PurchaseReservedNodeOffering {
    my $self = shift;
    return $self->do_call('Paws::RedShift::PurchaseReservedNodeOffering', @_);
  }
  sub RebootCluster {
    my $self = shift;
    return $self->do_call('Paws::RedShift::RebootCluster', @_);
  }
  sub ResetClusterParameterGroup {
    my $self = shift;
    return $self->do_call('Paws::RedShift::ResetClusterParameterGroup', @_);
  }
  sub RestoreFromClusterSnapshot {
    my $self = shift;
    return $self->do_call('Paws::RedShift::RestoreFromClusterSnapshot', @_);
  }
  sub RevokeClusterSecurityGroupIngress {
    my $self = shift;
    return $self->do_call('Paws::RedShift::RevokeClusterSecurityGroupIngress', @_);
  }
  sub RevokeSnapshotAccess {
    my $self = shift;
    return $self->do_call('Paws::RedShift::RevokeSnapshotAccess', @_);
  }
  sub RotateEncryptionKey {
    my $self = shift;
    return $self->do_call('Paws::RedShift::RotateEncryptionKey', @_);
  }
}
1;