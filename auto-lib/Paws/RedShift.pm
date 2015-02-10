
use Paws::API;


package Paws::RedShift {
  use Moose;
  sub service { 'redshift' }
  sub version { '2012-12-01' }
  sub flattened_arrays { 0 }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  
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
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::DeleteTags', @_);
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
  sub ModifyCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::ModifyCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::ModifyClusterParameterGroup', @_);
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
  sub RestoreFromClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedShift::RestoreFromClusterSnapshot', @_);
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
  sub DescribeAllClusterParameterGroups {
    my $self = shift;

    my $result = $self->DescribeClusterParameterGroups(@_);
    my $array = [];
    push @$array, @{ $result->ParameterGroups };

    while ($result->Marker) {
      $result = $self->DescribeClusterParameterGroups(@_, Marker => $result->Marker);
      push @$array, @{ $result->ParameterGroups };
    }

    return 'Paws::RedShift::DescribeClusterParameterGroups'->_returns->new(ParameterGroups => $array);
  }
  sub DescribeAllClusterParameters {
    my $self = shift;

    my $result = $self->DescribeClusterParameters(@_);
    my $array = [];
    push @$array, @{ $result->Parameters };

    while ($result->Marker) {
      $result = $self->DescribeClusterParameters(@_, Marker => $result->Marker);
      push @$array, @{ $result->Parameters };
    }

    return 'Paws::RedShift::DescribeClusterParameters'->_returns->new(Parameters => $array);
  }
  sub DescribeAllClusters {
    my $self = shift;

    my $result = $self->DescribeClusters(@_);
    my $array = [];
    push @$array, @{ $result->Clusters };

    while ($result->Marker) {
      $result = $self->DescribeClusters(@_, Marker => $result->Marker);
      push @$array, @{ $result->Clusters };
    }

    return 'Paws::RedShift::DescribeClusters'->_returns->new(Clusters => $array);
  }
  sub DescribeAllClusterSecurityGroups {
    my $self = shift;

    my $result = $self->DescribeClusterSecurityGroups(@_);
    my $array = [];
    push @$array, @{ $result->ClusterSecurityGroups };

    while ($result->Marker) {
      $result = $self->DescribeClusterSecurityGroups(@_, Marker => $result->Marker);
      push @$array, @{ $result->ClusterSecurityGroups };
    }

    return 'Paws::RedShift::DescribeClusterSecurityGroups'->_returns->new(ClusterSecurityGroups => $array);
  }
  sub DescribeAllClusterSnapshots {
    my $self = shift;

    my $result = $self->DescribeClusterSnapshots(@_);
    my $array = [];
    push @$array, @{ $result->Snapshots };

    while ($result->Marker) {
      $result = $self->DescribeClusterSnapshots(@_, Marker => $result->Marker);
      push @$array, @{ $result->Snapshots };
    }

    return 'Paws::RedShift::DescribeClusterSnapshots'->_returns->new(Snapshots => $array);
  }
  sub DescribeAllClusterSubnetGroups {
    my $self = shift;

    my $result = $self->DescribeClusterSubnetGroups(@_);
    my $array = [];
    push @$array, @{ $result->ClusterSubnetGroups };

    while ($result->Marker) {
      $result = $self->DescribeClusterSubnetGroups(@_, Marker => $result->Marker);
      push @$array, @{ $result->ClusterSubnetGroups };
    }

    return 'Paws::RedShift::DescribeClusterSubnetGroups'->_returns->new(ClusterSubnetGroups => $array);
  }
  sub DescribeAllClusterVersions {
    my $self = shift;

    my $result = $self->DescribeClusterVersions(@_);
    my $array = [];
    push @$array, @{ $result->ClusterVersions };

    while ($result->Marker) {
      $result = $self->DescribeClusterVersions(@_, Marker => $result->Marker);
      push @$array, @{ $result->ClusterVersions };
    }

    return 'Paws::RedShift::DescribeClusterVersions'->_returns->new(ClusterVersions => $array);
  }
  sub DescribeAllDefaultClusterParameters {
    my $self = shift;

    my $result = $self->DescribeDefaultClusterParameters(@_);
    my $array = [];
    push @$array, @{ $result->DefaultClusterParameters.Parameters };

    while ($result->DefaultClusterParameters.Marker) {
      $result = $self->DescribeDefaultClusterParameters(@_, Marker => $result->DefaultClusterParameters.Marker);
      push @$array, @{ $result->DefaultClusterParameters.Parameters };
    }

    return 'Paws::RedShift::DescribeDefaultClusterParameters'->_returns->new(DefaultClusterParameters.Parameters => $array);
  }
  sub DescribeAllEvents {
    my $self = shift;

    my $result = $self->DescribeEvents(@_);
    my $array = [];
    push @$array, @{ $result->Events };

    while ($result->Marker) {
      $result = $self->DescribeEvents(@_, Marker => $result->Marker);
      push @$array, @{ $result->Events };
    }

    return 'Paws::RedShift::DescribeEvents'->_returns->new(Events => $array);
  }
  sub DescribeAllEventSubscriptions {
    my $self = shift;

    my $result = $self->DescribeEventSubscriptions(@_);
    my $array = [];
    push @$array, @{ $result->EventSubscriptionsList };

    while ($result->Marker) {
      $result = $self->DescribeEventSubscriptions(@_, Marker => $result->Marker);
      push @$array, @{ $result->EventSubscriptionsList };
    }

    return 'Paws::RedShift::DescribeEventSubscriptions'->_returns->new(EventSubscriptionsList => $array);
  }
  sub DescribeAllHsmClientCertificates {
    my $self = shift;

    my $result = $self->DescribeHsmClientCertificates(@_);
    my $array = [];
    push @$array, @{ $result->HsmClientCertificates };

    while ($result->Marker) {
      $result = $self->DescribeHsmClientCertificates(@_, Marker => $result->Marker);
      push @$array, @{ $result->HsmClientCertificates };
    }

    return 'Paws::RedShift::DescribeHsmClientCertificates'->_returns->new(HsmClientCertificates => $array);
  }
  sub DescribeAllHsmConfigurations {
    my $self = shift;

    my $result = $self->DescribeHsmConfigurations(@_);
    my $array = [];
    push @$array, @{ $result->HsmConfigurations };

    while ($result->Marker) {
      $result = $self->DescribeHsmConfigurations(@_, Marker => $result->Marker);
      push @$array, @{ $result->HsmConfigurations };
    }

    return 'Paws::RedShift::DescribeHsmConfigurations'->_returns->new(HsmConfigurations => $array);
  }
  sub DescribeAllOrderableClusterOptions {
    my $self = shift;

    my $result = $self->DescribeOrderableClusterOptions(@_);
    my $array = [];
    push @$array, @{ $result->OrderableClusterOptions };

    while ($result->Marker) {
      $result = $self->DescribeOrderableClusterOptions(@_, Marker => $result->Marker);
      push @$array, @{ $result->OrderableClusterOptions };
    }

    return 'Paws::RedShift::DescribeOrderableClusterOptions'->_returns->new(OrderableClusterOptions => $array);
  }
  sub DescribeAllReservedNodeOfferings {
    my $self = shift;

    my $result = $self->DescribeReservedNodeOfferings(@_);
    my $array = [];
    push @$array, @{ $result->ReservedNodeOfferings };

    while ($result->Marker) {
      $result = $self->DescribeReservedNodeOfferings(@_, Marker => $result->Marker);
      push @$array, @{ $result->ReservedNodeOfferings };
    }

    return 'Paws::RedShift::DescribeReservedNodeOfferings'->_returns->new(ReservedNodeOfferings => $array);
  }
  sub DescribeAllReservedNodes {
    my $self = shift;

    my $result = $self->DescribeReservedNodes(@_);
    my $array = [];
    push @$array, @{ $result->ReservedNodes };

    while ($result->Marker) {
      $result = $self->DescribeReservedNodes(@_, Marker => $result->Marker);
      push @$array, @{ $result->ReservedNodes };
    }

    return 'Paws::RedShift::DescribeReservedNodes'->_returns->new(ReservedNodes => $array);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift - Perl Interface to AWS Amazon Redshift

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



Amazon Redshift B<Overview>

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
Interfaces .

Amazon Redshift manages all the work of setting up, operating, and
scaling a data warehouse: provisioning capacity, monitoring and backing
up the cluster, and applying patches and upgrades to the Amazon
Redshift engine. You can focus on using your data to acquire new
insights for your business and customers.

If you are a first-time user of Amazon Redshift, we recommend that you
begin by reading the The Amazon Redshift Getting Started Guide

If you are a database developer, the Amazon Redshift Database Developer
Guide explains how to design, build, query, and maintain the databases
that make up your data warehouse.










=head1 METHODS

=head2 AuthorizeClusterSecurityGroupIngress()

  Arguments described in: L<Paws::RedShift::AuthorizeClusterSecurityGroupIngress>

  Returns: L<Paws::RedShift::AuthorizeClusterSecurityGroupIngressResult>

  

Adds an inbound (ingress) rule to an Amazon Redshift security group.
Depending on whether the application accessing your cluster is running
on the Internet or an EC2 instance, you can authorize inbound access to
either a Classless Interdomain Routing (CIDR) IP address range or an
EC2 security group. You can add as many as 20 ingress rules to an
Amazon Redshift security group.

The EC2 security group must be defined in the AWS region where the
cluster resides.

For an overview of CIDR blocks, see the Wikipedia article on Classless
Inter-Domain Routing.

You must also associate the security group with a cluster so that
clients running on these IP addresses or the EC2 instance are
authorized to connect to the cluster. For information about managing
security groups, go to Working with Security Groups in the I<Amazon
Redshift Cluster Management Guide>.











=head2 AuthorizeSnapshotAccess()

  Arguments described in: L<Paws::RedShift::AuthorizeSnapshotAccess>

  Returns: L<Paws::RedShift::AuthorizeSnapshotAccessResult>

  

Authorizes the specified AWS customer account to restore the specified
snapshot.

For more information about working with snapshots, go to Amazon
Redshift Snapshots in the I<Amazon Redshift Cluster Management Guide>.











=head2 CopyClusterSnapshot()

  Arguments described in: L<Paws::RedShift::CopyClusterSnapshot>

  Returns: L<Paws::RedShift::CopyClusterSnapshotResult>

  

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
Redshift Snapshots in the I<Amazon Redshift Cluster Management Guide>.











=head2 CreateCluster()

  Arguments described in: L<Paws::RedShift::CreateCluster>

  Returns: L<Paws::RedShift::CreateClusterResult>

  

Creates a new cluster. To create the cluster in virtual private cloud
(VPC), you must provide cluster subnet group name. If you don't provide
a cluster subnet group name or the cluster security group parameter,
Amazon Redshift creates a non-VPC cluster, it associates the default
cluster security group with the cluster. For more information about
managing clusters, go to Amazon Redshift Clusters in the I<Amazon
Redshift Cluster Management Guide> .











=head2 CreateClusterParameterGroup()

  Arguments described in: L<Paws::RedShift::CreateClusterParameterGroup>

  Returns: L<Paws::RedShift::CreateClusterParameterGroupResult>

  

Creates an Amazon Redshift parameter group.

Creating parameter groups is independent of creating clusters. You can
associate a cluster with a parameter group when you create the cluster.
You can also associate an existing cluster with a parameter group after
the cluster is created by using ModifyCluster.

Parameters in the parameter group define specific behavior that applies
to the databases you create on the cluster. For more information about
managing parameter groups, go to Amazon Redshift Parameter Groups in
the I<Amazon Redshift Cluster Management Guide>.











=head2 CreateClusterSecurityGroup()

  Arguments described in: L<Paws::RedShift::CreateClusterSecurityGroup>

  Returns: L<Paws::RedShift::CreateClusterSecurityGroupResult>

  

Creates a new Amazon Redshift security group. You use security groups
to control access to non-VPC clusters.

For information about managing security groups, go to Amazon Redshift
Cluster Security Groups in the I<Amazon Redshift Cluster Management
Guide>.











=head2 CreateClusterSnapshot()

  Arguments described in: L<Paws::RedShift::CreateClusterSnapshot>

  Returns: L<Paws::RedShift::CreateClusterSnapshotResult>

  

Creates a manual snapshot of the specified cluster. The cluster must be
in the C<available> state.

For more information about working with snapshots, go to Amazon
Redshift Snapshots in the I<Amazon Redshift Cluster Management Guide>.











=head2 CreateClusterSubnetGroup()

  Arguments described in: L<Paws::RedShift::CreateClusterSubnetGroup>

  Returns: L<Paws::RedShift::CreateClusterSubnetGroupResult>

  

Creates a new Amazon Redshift subnet group. You must provide a list of
one or more subnets in your existing Amazon Virtual Private Cloud
(Amazon VPC) when creating Amazon Redshift subnet group.

For information about subnet groups, go to Amazon Redshift Cluster
Subnet Groups in the I<Amazon Redshift Cluster Management Guide>.











=head2 CreateEventSubscription()

  Arguments described in: L<Paws::RedShift::CreateEventSubscription>

  Returns: L<Paws::RedShift::CreateEventSubscriptionResult>

  

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











=head2 CreateHsmClientCertificate()

  Arguments described in: L<Paws::RedShift::CreateHsmClientCertificate>

  Returns: L<Paws::RedShift::CreateHsmClientCertificateResult>

  

Creates an HSM client certificate that an Amazon Redshift cluster will
use to connect to the client's HSM in order to store and retrieve the
keys used to encrypt the cluster databases.

The command returns a public key, which you must store in the HSM. In
addition to creating the HSM certificate, you must create an Amazon
Redshift HSM configuration that provides a cluster the information
needed to store and use encryption keys in the HSM. For more
information, go to Hardware Security Modules in the Amazon Redshift
Cluster Management Guide.











=head2 CreateHsmConfiguration()

  Arguments described in: L<Paws::RedShift::CreateHsmConfiguration>

  Returns: L<Paws::RedShift::CreateHsmConfigurationResult>

  

Creates an HSM configuration that contains the information required by
an Amazon Redshift cluster to store and use database encryption keys in
a Hardware Security Module (HSM). After creating the HSM configuration,
you can specify it as a parameter when creating a cluster. The cluster
will then store its encryption keys in the HSM.

In addition to creating an HSM configuration, you must also create an
HSM client certificate. For more information, go to Hardware Security
Modules in the Amazon Redshift Cluster Management Guide.











=head2 CreateTags()

  Arguments described in: L<Paws::RedShift::CreateTags>

  Returns: nothing

  

Adds one or more tags to a specified resource.

A resource can have up to 10 tags. If you try to create more than 10
tags for a resource, you will receive an error and the attempt will
fail.

If you specify a key that already exists for the resource, the value
for that key will be updated with the new value.











=head2 DeleteCluster()

  Arguments described in: L<Paws::RedShift::DeleteCluster>

  Returns: L<Paws::RedShift::DeleteClusterResult>

  

Deletes a previously provisioned cluster. A successful response from
the web service indicates that the request was received correctly. Use
DescribeClusters to monitor the status of the deletion. The delete
operation cannot be canceled or reverted once submitted. For more
information about managing clusters, go to Amazon Redshift Clusters in
the I<Amazon Redshift Cluster Management Guide> .

If you want to shut down the cluster and retain it for future use, set
I<SkipFinalClusterSnapshot> to C<false> and specify a name for
I<FinalClusterSnapshotIdentifier>. You can later restore this snapshot
to resume using the cluster. If a final cluster snapshot is requested,
the status of the cluster will be "final-snapshot" while the snapshot
is being taken, then it's "deleting" once Amazon Redshift begins
deleting the cluster.

For more information about managing clusters, go to Amazon Redshift
Clusters in the I<Amazon Redshift Cluster Management Guide> .











=head2 DeleteClusterParameterGroup()

  Arguments described in: L<Paws::RedShift::DeleteClusterParameterGroup>

  Returns: nothing

  

Deletes a specified Amazon Redshift parameter group. You cannot delete
a parameter group if it is associated with a cluster.











=head2 DeleteClusterSecurityGroup()

  Arguments described in: L<Paws::RedShift::DeleteClusterSecurityGroup>

  Returns: nothing

  

Deletes an Amazon Redshift security group.

You cannot delete a security group that is associated with any
clusters. You cannot delete the default security group.

For information about managing security groups, go to Amazon Redshift
Cluster Security Groups in the I<Amazon Redshift Cluster Management
Guide>.











=head2 DeleteClusterSnapshot()

  Arguments described in: L<Paws::RedShift::DeleteClusterSnapshot>

  Returns: L<Paws::RedShift::DeleteClusterSnapshotResult>

  

Deletes the specified manual snapshot. The snapshot must be in the
C<available> state, with no other users authorized to access the
snapshot.

Unlike automated snapshots, manual snapshots are retained even after
you delete your cluster. Amazon Redshift does not delete your manual
snapshots. You must delete manual snapshot explicitly to avoid getting
charged. If other accounts are authorized to access the snapshot, you
must revoke all of the authorizations before you can delete the
snapshot.











=head2 DeleteClusterSubnetGroup()

  Arguments described in: L<Paws::RedShift::DeleteClusterSubnetGroup>

  Returns: nothing

  

Deletes the specified cluster subnet group.











=head2 DeleteEventSubscription()

  Arguments described in: L<Paws::RedShift::DeleteEventSubscription>

  Returns: nothing

  

Deletes an Amazon Redshift event notification subscription.











=head2 DeleteHsmClientCertificate()

  Arguments described in: L<Paws::RedShift::DeleteHsmClientCertificate>

  Returns: nothing

  

Deletes the specified HSM client certificate.











=head2 DeleteHsmConfiguration()

  Arguments described in: L<Paws::RedShift::DeleteHsmConfiguration>

  Returns: nothing

  

Deletes the specified Amazon Redshift HSM configuration.











=head2 DeleteTags()

  Arguments described in: L<Paws::RedShift::DeleteTags>

  Returns: nothing

  

Deletes a tag or tags from a resource. You must provide the ARN of the
resource from which you want to delete the tag or tags.











=head2 DescribeClusterParameterGroups()

  Arguments described in: L<Paws::RedShift::DescribeClusterParameterGroups>

  Returns: L<Paws::RedShift::ClusterParameterGroupsMessage>

  

Returns a list of Amazon Redshift parameter groups, including parameter
groups you created and the default parameter group. For each parameter
group, the response includes the parameter group name, description, and
parameter group family name. You can optionally specify a name to
retrieve the description of a specific parameter group.

For more information about managing parameter groups, go to Amazon
Redshift Parameter Groups in the I<Amazon Redshift Cluster Management
Guide>.

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all parameter groups that match any combination of the
specified keys and values. For example, if you have C<owner> and
C<environment> for tag keys, and C<admin> and C<test> for tag values,
all parameter groups that have any combination of those values are
returned.

If both tag keys and values are omitted from the request, parameter
groups are returned regardless of whether they have tag keys or values
associated with them.











=head2 DescribeClusterParameters()

  Arguments described in: L<Paws::RedShift::DescribeClusterParameters>

  Returns: L<Paws::RedShift::ClusterParameterGroupDetails>

  

Returns a detailed list of parameters contained within the specified
Amazon Redshift parameter group. For each parameter the response
includes information such as parameter name, description, data type,
value, whether the parameter value is modifiable, and so on.

You can specify I<source> filter to retrieve parameters of only
specific type. For example, to retrieve parameters that were modified
by a user action such as from ModifyClusterParameterGroup, you can
specify I<source> equal to I<user>.

For more information about managing parameter groups, go to Amazon
Redshift Parameter Groups in the I<Amazon Redshift Cluster Management
Guide>.











=head2 DescribeClusters()

  Arguments described in: L<Paws::RedShift::DescribeClusters>

  Returns: L<Paws::RedShift::ClustersMessage>

  

Returns properties of provisioned clusters including general cluster
properties, cluster database properties, maintenance and backup
properties, and security and access properties. This operation supports
pagination. For more information about managing clusters, go to Amazon
Redshift Clusters in the I<Amazon Redshift Cluster Management Guide> .

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all clusters that match any combination of the
specified keys and values. For example, if you have C<owner> and
C<environment> for tag keys, and C<admin> and C<test> for tag values,
all clusters that have any combination of those values are returned.

If both tag keys and values are omitted from the request, clusters are
returned regardless of whether they have tag keys or values associated
with them.











=head2 DescribeClusterSecurityGroups()

  Arguments described in: L<Paws::RedShift::DescribeClusterSecurityGroups>

  Returns: L<Paws::RedShift::ClusterSecurityGroupMessage>

  

Returns information about Amazon Redshift security groups. If the name
of a security group is specified, the response will contain only
information about only that security group.

For information about managing security groups, go to Amazon Redshift
Cluster Security Groups in the I<Amazon Redshift Cluster Management
Guide>.

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all security groups that match any combination of the
specified keys and values. For example, if you have C<owner> and
C<environment> for tag keys, and C<admin> and C<test> for tag values,
all security groups that have any combination of those values are
returned.

If both tag keys and values are omitted from the request, security
groups are returned regardless of whether they have tag keys or values
associated with them.











=head2 DescribeClusterSnapshots()

  Arguments described in: L<Paws::RedShift::DescribeClusterSnapshots>

  Returns: L<Paws::RedShift::SnapshotMessage>

  

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











=head2 DescribeClusterSubnetGroups()

  Arguments described in: L<Paws::RedShift::DescribeClusterSubnetGroups>

  Returns: L<Paws::RedShift::ClusterSubnetGroupMessage>

  

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











=head2 DescribeClusterVersions()

  Arguments described in: L<Paws::RedShift::DescribeClusterVersions>

  Returns: L<Paws::RedShift::ClusterVersionsMessage>

  

Returns descriptions of the available Amazon Redshift cluster versions.
You can call this operation even before creating any clusters to learn
more about the Amazon Redshift versions. For more information about
managing clusters, go to Amazon Redshift Clusters in the I<Amazon
Redshift Cluster Management Guide>











=head2 DescribeDefaultClusterParameters()

  Arguments described in: L<Paws::RedShift::DescribeDefaultClusterParameters>

  Returns: L<Paws::RedShift::DescribeDefaultClusterParametersResult>

  

Returns a list of parameter settings for the specified parameter group
family.

For more information about managing parameter groups, go to Amazon
Redshift Parameter Groups in the I<Amazon Redshift Cluster Management
Guide>.











=head2 DescribeEventCategories()

  Arguments described in: L<Paws::RedShift::DescribeEventCategories>

  Returns: L<Paws::RedShift::EventCategoriesMessage>

  

Displays a list of event categories for all event source types, or for
a specified source type. For a list of the event categories and source
types, go to Amazon Redshift Event Notifications.











=head2 DescribeEvents()

  Arguments described in: L<Paws::RedShift::DescribeEvents>

  Returns: L<Paws::RedShift::EventsMessage>

  

Returns events related to clusters, security groups, snapshots, and
parameter groups for the past 14 days. Events specific to a particular
cluster, security group, snapshot or parameter group can be obtained by
providing the name as a parameter. By default, the past hour of events
are returned.











=head2 DescribeEventSubscriptions()

  Arguments described in: L<Paws::RedShift::DescribeEventSubscriptions>

  Returns: L<Paws::RedShift::EventSubscriptionsMessage>

  

Lists descriptions of all the Amazon Redshift event notifications
subscription for a customer account. If you specify a subscription
name, lists the description for that subscription.











=head2 DescribeHsmClientCertificates()

  Arguments described in: L<Paws::RedShift::DescribeHsmClientCertificates>

  Returns: L<Paws::RedShift::HsmClientCertificateMessage>

  

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











=head2 DescribeHsmConfigurations()

  Arguments described in: L<Paws::RedShift::DescribeHsmConfigurations>

  Returns: L<Paws::RedShift::HsmConfigurationMessage>

  

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











=head2 DescribeLoggingStatus()

  Arguments described in: L<Paws::RedShift::DescribeLoggingStatus>

  Returns: L<Paws::RedShift::LoggingStatus>

  

Describes whether information, such as queries and connection attempts,
is being logged for the specified Amazon Redshift cluster.











=head2 DescribeOrderableClusterOptions()

  Arguments described in: L<Paws::RedShift::DescribeOrderableClusterOptions>

  Returns: L<Paws::RedShift::OrderableClusterOptionsMessage>

  

Returns a list of orderable cluster options. Before you create a new
cluster you can use this operation to find what options are available,
such as the EC2 Availability Zones (AZ) in the specific AWS region that
you can specify, and the node types you can request. The node types
differ by available storage, memory, CPU and price. With the cost
involved you might want to obtain a list of cluster options in the
specific region and specify values when creating a cluster. For more
information about managing clusters, go to Amazon Redshift Clusters in
the I<Amazon Redshift Cluster Management Guide>











=head2 DescribeReservedNodeOfferings()

  Arguments described in: L<Paws::RedShift::DescribeReservedNodeOfferings>

  Returns: L<Paws::RedShift::ReservedNodeOfferingsMessage>

  

Returns a list of the available reserved node offerings by Amazon
Redshift with their descriptions including the node type, the fixed and
recurring costs of reserving the node and duration the node will be
reserved for you. These descriptions help you determine which reserve
node offering you want to purchase. You then use the unique offering ID
in you call to PurchaseReservedNodeOffering to reserve one or more
nodes for your Amazon Redshift cluster.

For more information about managing parameter groups, go to Purchasing
Reserved Nodes in the I<Amazon Redshift Cluster Management Guide>.











=head2 DescribeReservedNodes()

  Arguments described in: L<Paws::RedShift::DescribeReservedNodes>

  Returns: L<Paws::RedShift::ReservedNodesMessage>

  

Returns the descriptions of the reserved nodes.











=head2 DescribeResize()

  Arguments described in: L<Paws::RedShift::DescribeResize>

  Returns: L<Paws::RedShift::ResizeProgressMessage>

  

Returns information about the last resize operation for the specified
cluster. If no resize operation has ever been initiated for the
specified cluster, a C<HTTP 404> error is returned. If a resize
operation was initiated and completed, the status of the resize remains
as C<SUCCEEDED> until the next resize.

A resize operation can be requested using ModifyCluster and specifying
a different number or type of nodes for the cluster.











=head2 DescribeTags()

  Arguments described in: L<Paws::RedShift::DescribeTags>

  Returns: L<Paws::RedShift::TaggedResourceListMessage>

  

Returns a list of tags. You can return tags from a specific resource by
specifying an ARN, or you can return all tags for a given type of
resource, such as clusters, snapshots, and so on.

The following are limitations for C<DescribeTags>:

=over

=item * You cannot specify an ARN and a resource-type value together in
the same request.

=item * You cannot use the C<MaxRecords> and C<Marker> parameters
together with the ARN parameter.

=item * The C<MaxRecords> parameter can be a range from 10 to 50
results to return in a request.

=back

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all resources that match any combination of the
specified keys and values. For example, if you have C<owner> and
C<environment> for tag keys, and C<admin> and C<test> for tag values,
all resources that have any combination of those values are returned.

If both tag keys and values are omitted from the request, resources are
returned regardless of whether they have tag keys or values associated
with them.











=head2 DisableLogging()

  Arguments described in: L<Paws::RedShift::DisableLogging>

  Returns: L<Paws::RedShift::LoggingStatus>

  

Stops logging information, such as queries and connection attempts, for
the specified Amazon Redshift cluster.











=head2 DisableSnapshotCopy()

  Arguments described in: L<Paws::RedShift::DisableSnapshotCopy>

  Returns: L<Paws::RedShift::DisableSnapshotCopyResult>

  

Disables the automatic copying of snapshots from one region to another
region for a specified cluster.











=head2 EnableLogging()

  Arguments described in: L<Paws::RedShift::EnableLogging>

  Returns: L<Paws::RedShift::LoggingStatus>

  

Starts logging information, such as queries and connection attempts,
for the specified Amazon Redshift cluster.











=head2 EnableSnapshotCopy()

  Arguments described in: L<Paws::RedShift::EnableSnapshotCopy>

  Returns: L<Paws::RedShift::EnableSnapshotCopyResult>

  

Enables the automatic copy of snapshots from one region to another
region for a specified cluster.











=head2 ModifyCluster()

  Arguments described in: L<Paws::RedShift::ModifyCluster>

  Returns: L<Paws::RedShift::ModifyClusterResult>

  

Modifies the settings for a cluster. For example, you can add another
security or parameter group, update the preferred maintenance window,
or change the master user password. Resetting a cluster password or
modifying the security groups associated with a cluster do not need a
reboot. However, modifying a parameter group requires a reboot for
parameters to take effect. For more information about managing
clusters, go to Amazon Redshift Clusters in the I<Amazon Redshift
Cluster Management Guide> .

You can also change node type and the number of nodes to scale up or
down the cluster. When resizing a cluster, you must specify both the
number of nodes and the node type even if one of the parameters does
not change.











=head2 ModifyClusterParameterGroup()

  Arguments described in: L<Paws::RedShift::ModifyClusterParameterGroup>

  Returns: L<Paws::RedShift::ClusterParameterGroupNameMessage>

  

Modifies the parameters of a parameter group.

For more information about managing parameter groups, go to Amazon
Redshift Parameter Groups in the I<Amazon Redshift Cluster Management
Guide>.











=head2 ModifyClusterSubnetGroup()

  Arguments described in: L<Paws::RedShift::ModifyClusterSubnetGroup>

  Returns: L<Paws::RedShift::ModifyClusterSubnetGroupResult>

  

Modifies a cluster subnet group to include the specified list of VPC
subnets. The operation replaces the existing list of subnets with the
new list of subnets.











=head2 ModifyEventSubscription()

  Arguments described in: L<Paws::RedShift::ModifyEventSubscription>

  Returns: L<Paws::RedShift::ModifyEventSubscriptionResult>

  

Modifies an existing Amazon Redshift event notification subscription.











=head2 ModifySnapshotCopyRetentionPeriod()

  Arguments described in: L<Paws::RedShift::ModifySnapshotCopyRetentionPeriod>

  Returns: L<Paws::RedShift::ModifySnapshotCopyRetentionPeriodResult>

  

Modifies the number of days to retain automated snapshots in the
destination region after they are copied from the source region.











=head2 PurchaseReservedNodeOffering()

  Arguments described in: L<Paws::RedShift::PurchaseReservedNodeOffering>

  Returns: L<Paws::RedShift::PurchaseReservedNodeOfferingResult>

  

Allows you to purchase reserved nodes. Amazon Redshift offers a
predefined set of reserved node offerings. You can purchase one of the
offerings. You can call the DescribeReservedNodeOfferings API to obtain
the available reserved node offerings. You can call this API by
providing a specific reserved node offering and the number of nodes you
want to reserve.

For more information about managing parameter groups, go to Purchasing
Reserved Nodes in the I<Amazon Redshift Cluster Management Guide>.











=head2 RebootCluster()

  Arguments described in: L<Paws::RedShift::RebootCluster>

  Returns: L<Paws::RedShift::RebootClusterResult>

  

Reboots a cluster. This action is taken as soon as possible. It results
in a momentary outage to the cluster, during which the cluster status
is set to C<rebooting>. A cluster event is created when the reboot is
completed. Any pending cluster modifications (see ModifyCluster) are
applied at this reboot. For more information about managing clusters,
go to Amazon Redshift Clusters in the I<Amazon Redshift Cluster
Management Guide>











=head2 ResetClusterParameterGroup()

  Arguments described in: L<Paws::RedShift::ResetClusterParameterGroup>

  Returns: L<Paws::RedShift::ClusterParameterGroupNameMessage>

  

Sets one or more parameters of the specified parameter group to their
default values and sets the source values of the parameters to
"engine-default". To reset the entire parameter group specify the
I<ResetAllParameters> parameter. For parameter changes to take effect
you must reboot any associated clusters.











=head2 RestoreFromClusterSnapshot()

  Arguments described in: L<Paws::RedShift::RestoreFromClusterSnapshot>

  Returns: L<Paws::RedShift::RestoreFromClusterSnapshotResult>

  

Creates a new cluster from a snapshot. Amazon Redshift creates the
resulting cluster with the same configuration as the original cluster
from which the snapshot was created, except that the new cluster is
created with the default cluster security and parameter group. After
Amazon Redshift creates the cluster you can use the ModifyCluster API
to associate a different security group and different parameter group
with the restored cluster.

If you restore a cluster into a VPC, you must provide a cluster subnet
group where you want the cluster restored.

For more information about working with snapshots, go to Amazon
Redshift Snapshots in the I<Amazon Redshift Cluster Management Guide>.











=head2 RevokeClusterSecurityGroupIngress()

  Arguments described in: L<Paws::RedShift::RevokeClusterSecurityGroupIngress>

  Returns: L<Paws::RedShift::RevokeClusterSecurityGroupIngressResult>

  

Revokes an ingress rule in an Amazon Redshift security group for a
previously authorized IP range or Amazon EC2 security group. To add an
ingress rule, see AuthorizeClusterSecurityGroupIngress. For information
about managing security groups, go to Amazon Redshift Cluster Security
Groups in the I<Amazon Redshift Cluster Management Guide>.











=head2 RevokeSnapshotAccess()

  Arguments described in: L<Paws::RedShift::RevokeSnapshotAccess>

  Returns: L<Paws::RedShift::RevokeSnapshotAccessResult>

  

Removes the ability of the specified AWS customer account to restore
the specified snapshot. If the account is currently restoring the
snapshot, the restore will run to completion.

For more information about working with snapshots, go to Amazon
Redshift Snapshots in the I<Amazon Redshift Cluster Management Guide>.











=head2 RotateEncryptionKey()

  Arguments described in: L<Paws::RedShift::RotateEncryptionKey>

  Returns: L<Paws::RedShift::RotateEncryptionKeyResult>

  

Rotates the encryption keys for a cluster.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

