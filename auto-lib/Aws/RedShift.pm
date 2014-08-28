
use AWS::API;


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