
use Paws::API;


package Paws::RDS {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'rds');
  has version => (is => 'ro', isa => 'Str', default => '2014-10-31');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  with 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  
  sub AddSourceIdentifierToSubscription {
    my $self = shift;
    return $self->do_call('Paws::RDS::AddSourceIdentifierToSubscription', @_);
  }
  sub AddTagsToResource {
    my $self = shift;
    return $self->do_call('Paws::RDS::AddTagsToResource', @_);
  }
  sub ApplyPendingMaintenanceAction {
    my $self = shift;
    return $self->do_call('Paws::RDS::ApplyPendingMaintenanceAction', @_);
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
  sub DescribePendingMaintenanceActions {
    my $self = shift;
    return $self->do_call('Paws::RDS::DescribePendingMaintenanceActions', @_);
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

### main pod documentation begin ###

=head1 NAME

Paws::RDS - Perl Interface to AWS Amazon Relational Database Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



Amazon Relational Database Service

Amazon Relational Database Service (Amazon RDS) is a web service that
makes it easier to set up, operate, and scale a relational database in
the cloud. It provides cost-efficient, resizable capacity for an
industry-standard relational database and manages common database
administration tasks, freeing up developers to focus on what makes
their applications and businesses unique.

Amazon RDS gives you access to the capabilities of a MySQL, PostgreSQL,
Microsoft SQL Server, or Oracle database server. This means the code,
applications, and tools you already use today with your existing
databases work with Amazon RDS without modification. Amazon RDS
automatically backs up your database and maintains the database
software that powers your DB instance. Amazon RDS is flexible: you can
scale your database instance's compute resources and storage capacity
to meet your application's demand. As with all Amazon Web Services,
there are no up-front investments, and you pay only for the resources
you use.

This is an interface reference for Amazon RDS. It contains
documentation for a programming or command line interface you can use
to manage Amazon RDS. Note that Amazon RDS is asynchronous, which means
that some interfaces may require techniques such as polling or callback
functions to determine when a command has been applied. In this
reference, the parameter descriptions indicate whether a command is
applied immediately, on the next instance reboot, or during the
maintenance window. For a summary of the Amazon RDS interfaces, go to
Available RDS Interfaces.










=head1 METHODS

=head2 AddSourceIdentifierToSubscription()

  Arguments described in: L<Paws::RDS::AddSourceIdentifierToSubscription>

  Returns: L<Paws::RDS::AddSourceIdentifierToSubscriptionResult>

  

Adds a source identifier to an existing RDS event notification
subscription.











=head2 AddTagsToResource()

  Arguments described in: L<Paws::RDS::AddTagsToResource>

  Returns: nothing

  

Adds metadata tags to an Amazon RDS resource. These tags can also be
used with cost allocation reporting to track cost associated with
Amazon RDS resources, or used in Condition statement in IAM policy for
Amazon RDS.

For an overview on tagging Amazon RDS resources, see Tagging Amazon RDS
Resources.











=head2 ApplyPendingMaintenanceAction()

  Arguments described in: L<Paws::RDS::ApplyPendingMaintenanceAction>

  Returns: L<Paws::RDS::ApplyPendingMaintenanceActionResult>

  

Applies a pending maintenance action to a resource.











=head2 AuthorizeDBSecurityGroupIngress()

  Arguments described in: L<Paws::RDS::AuthorizeDBSecurityGroupIngress>

  Returns: L<Paws::RDS::AuthorizeDBSecurityGroupIngressResult>

  

Enables ingress to a DBSecurityGroup using one of two forms of
authorization. First, EC2 or VPC security groups can be added to the
DBSecurityGroup if the application using the database is running on EC2
or VPC instances. Second, IP ranges are available if the application
accessing your database is running on the Internet. Required parameters
for this API are one of CIDR range, EC2SecurityGroupId for VPC, or
(EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
EC2SecurityGroupId for non-VPC).

You cannot authorize ingress from an EC2 security group in one Region
to an Amazon RDS DB instance in another. You cannot authorize ingress
from a VPC security group in one VPC to an Amazon RDS DB instance in
another.

For an overview of CIDR ranges, go to the Wikipedia Tutorial.











=head2 CopyDBParameterGroup()

  Arguments described in: L<Paws::RDS::CopyDBParameterGroup>

  Returns: L<Paws::RDS::CopyDBParameterGroupResult>

  

Copies the specified DB parameter group.











=head2 CopyDBSnapshot()

  Arguments described in: L<Paws::RDS::CopyDBSnapshot>

  Returns: L<Paws::RDS::CopyDBSnapshotResult>

  

Copies the specified DBSnapshot. The source DBSnapshot must be in the
"available" state.











=head2 CopyOptionGroup()

  Arguments described in: L<Paws::RDS::CopyOptionGroup>

  Returns: L<Paws::RDS::CopyOptionGroupResult>

  

Copies the specified option group.











=head2 CreateDBInstance()

  Arguments described in: L<Paws::RDS::CreateDBInstance>

  Returns: L<Paws::RDS::CreateDBInstanceResult>

  

Creates a new DB instance.











=head2 CreateDBInstanceReadReplica()

  Arguments described in: L<Paws::RDS::CreateDBInstanceReadReplica>

  Returns: L<Paws::RDS::CreateDBInstanceReadReplicaResult>

  

Creates a DB instance that acts as a Read Replica of a source DB
instance.

All Read Replica DB instances are created as Single-AZ deployments with
backups disabled. All other DB instance attributes (including DB
security groups and DB parameter groups) are inherited from the source
DB instance, except as specified below.

The source DB instance must have backup retention enabled.











=head2 CreateDBParameterGroup()

  Arguments described in: L<Paws::RDS::CreateDBParameterGroup>

  Returns: L<Paws::RDS::CreateDBParameterGroupResult>

  

Creates a new DB parameter group.

A DB parameter group is initially created with the default parameters
for the database engine used by the DB instance. To provide custom
values for any of the parameters, you must modify the group after
creating it using I<ModifyDBParameterGroup>. Once you've created a DB
parameter group, you need to associate it with your DB instance using
I<ModifyDBInstance>. When you associate a new DB parameter group with a
running DB instance, you need to reboot the DB instance without
failover for the new DB parameter group and associated settings to take
effect.

After you create a DB parameter group, you should wait at least 5
minutes before creating your first DB instance that uses that DB
parameter group as the default parameter group. This allows Amazon RDS
to fully complete the create action before the parameter group is used
as the default for a new DB instance. This is especially important for
parameters that are critical when creating the default database for a
DB instance, such as the character set for the default database defined
by the C<character_set_database> parameter. You can use the I<Parameter
Groups> option of the Amazon RDS console or the I<DescribeDBParameters>
command to verify that your DB parameter group has been created or
modified.











=head2 CreateDBSecurityGroup()

  Arguments described in: L<Paws::RDS::CreateDBSecurityGroup>

  Returns: L<Paws::RDS::CreateDBSecurityGroupResult>

  

Creates a new DB security group. DB security groups control access to a
DB instance.











=head2 CreateDBSnapshot()

  Arguments described in: L<Paws::RDS::CreateDBSnapshot>

  Returns: L<Paws::RDS::CreateDBSnapshotResult>

  

Creates a DBSnapshot. The source DBInstance must be in "available"
state.











=head2 CreateDBSubnetGroup()

  Arguments described in: L<Paws::RDS::CreateDBSubnetGroup>

  Returns: L<Paws::RDS::CreateDBSubnetGroupResult>

  

Creates a new DB subnet group. DB subnet groups must contain at least
one subnet in at least two AZs in the region.











=head2 CreateEventSubscription()

  Arguments described in: L<Paws::RDS::CreateEventSubscription>

  Returns: L<Paws::RDS::CreateEventSubscriptionResult>

  

Creates an RDS event notification subscription. This action requires a
topic ARN (Amazon Resource Name) created by either the RDS console, the
SNS console, or the SNS API. To obtain an ARN with SNS, you must create
a topic in Amazon SNS and subscribe to the topic. The ARN is displayed
in the SNS console.

You can specify the type of source (SourceType) you want to be notified
of, provide a list of RDS sources (SourceIds) that triggers the events,
and provide a list of event categories (EventCategories) for events you
want to be notified of. For example, you can specify SourceType =
db-instance, SourceIds = mydbinstance1, mydbinstance2 and
EventCategories = Availability, Backup.

If you specify both the SourceType and SourceIds, such as SourceType =
db-instance and SourceIdentifier = myDBInstance1, you will be notified
of all the db-instance events for the specified source. If you specify
a SourceType but do not specify a SourceIdentifier, you will receive
notice of the events for that source type for all your RDS sources. If
you do not specify either the SourceType nor the SourceIdentifier, you
will be notified of events generated from all RDS sources belonging to
your customer account.











=head2 CreateOptionGroup()

  Arguments described in: L<Paws::RDS::CreateOptionGroup>

  Returns: L<Paws::RDS::CreateOptionGroupResult>

  

Creates a new option group. You can create up to 20 option groups.











=head2 DeleteDBInstance()

  Arguments described in: L<Paws::RDS::DeleteDBInstance>

  Returns: L<Paws::RDS::DeleteDBInstanceResult>

  

The DeleteDBInstance action deletes a previously provisioned DB
instance. A successful response from the web service indicates the
request was received correctly. When you delete a DB instance, all
automated backups for that instance are deleted and cannot be
recovered. Manual DB snapshots of the DB instance to be deleted are not
deleted.

If a final DB snapshot is requested the status of the RDS instance will
be "deleting" until the DB snapshot is created. The API action
C<DescribeDBInstance> is used to monitor the status of this operation.
The action cannot be canceled or reverted once submitted.











=head2 DeleteDBParameterGroup()

  Arguments described in: L<Paws::RDS::DeleteDBParameterGroup>

  Returns: nothing

  

Deletes a specified DBParameterGroup. The DBParameterGroup to be
deleted cannot be associated with any DB instances.

The specified DB parameter group cannot be associated with any DB
instances.











=head2 DeleteDBSecurityGroup()

  Arguments described in: L<Paws::RDS::DeleteDBSecurityGroup>

  Returns: nothing

  

Deletes a DB security group.

The specified DB security group must not be associated with any DB
instances.











=head2 DeleteDBSnapshot()

  Arguments described in: L<Paws::RDS::DeleteDBSnapshot>

  Returns: L<Paws::RDS::DeleteDBSnapshotResult>

  

Deletes a DBSnapshot. If the snapshot is being copied, the copy
operation is terminated.

The DBSnapshot must be in the C<available> state to be deleted.











=head2 DeleteDBSubnetGroup()

  Arguments described in: L<Paws::RDS::DeleteDBSubnetGroup>

  Returns: nothing

  

Deletes a DB subnet group.

The specified database subnet group must not be associated with any DB
instances.











=head2 DeleteEventSubscription()

  Arguments described in: L<Paws::RDS::DeleteEventSubscription>

  Returns: L<Paws::RDS::DeleteEventSubscriptionResult>

  

Deletes an RDS event notification subscription.











=head2 DeleteOptionGroup()

  Arguments described in: L<Paws::RDS::DeleteOptionGroup>

  Returns: nothing

  

Deletes an existing option group.











=head2 DescribeDBEngineVersions()

  Arguments described in: L<Paws::RDS::DescribeDBEngineVersions>

  Returns: L<Paws::RDS::DBEngineVersionMessage>

  

Returns a list of the available DB engines.











=head2 DescribeDBInstances()

  Arguments described in: L<Paws::RDS::DescribeDBInstances>

  Returns: L<Paws::RDS::DBInstanceMessage>

  

Returns information about provisioned RDS instances. This API supports
pagination.











=head2 DescribeDBLogFiles()

  Arguments described in: L<Paws::RDS::DescribeDBLogFiles>

  Returns: L<Paws::RDS::DescribeDBLogFilesResponse>

  

Returns a list of DB log files for the DB instance.











=head2 DescribeDBParameterGroups()

  Arguments described in: L<Paws::RDS::DescribeDBParameterGroups>

  Returns: L<Paws::RDS::DBParameterGroupsMessage>

  

Returns a list of C<DBParameterGroup> descriptions. If a
C<DBParameterGroupName> is specified, the list will contain only the
description of the specified DB parameter group.











=head2 DescribeDBParameters()

  Arguments described in: L<Paws::RDS::DescribeDBParameters>

  Returns: L<Paws::RDS::DBParameterGroupDetails>

  

Returns the detailed parameter list for a particular DB parameter
group.











=head2 DescribeDBSecurityGroups()

  Arguments described in: L<Paws::RDS::DescribeDBSecurityGroups>

  Returns: L<Paws::RDS::DBSecurityGroupMessage>

  

Returns a list of C<DBSecurityGroup> descriptions. If a
C<DBSecurityGroupName> is specified, the list will contain only the
descriptions of the specified DB security group.











=head2 DescribeDBSnapshots()

  Arguments described in: L<Paws::RDS::DescribeDBSnapshots>

  Returns: L<Paws::RDS::DBSnapshotMessage>

  

Returns information about DB snapshots. This API supports pagination.











=head2 DescribeDBSubnetGroups()

  Arguments described in: L<Paws::RDS::DescribeDBSubnetGroups>

  Returns: L<Paws::RDS::DBSubnetGroupMessage>

  

Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is
specified, the list will contain only the descriptions of the specified
DBSubnetGroup.

For an overview of CIDR ranges, go to the Wikipedia Tutorial.











=head2 DescribeEngineDefaultParameters()

  Arguments described in: L<Paws::RDS::DescribeEngineDefaultParameters>

  Returns: L<Paws::RDS::DescribeEngineDefaultParametersResult>

  

Returns the default engine and system parameter information for the
specified database engine.











=head2 DescribeEventCategories()

  Arguments described in: L<Paws::RDS::DescribeEventCategories>

  Returns: L<Paws::RDS::EventCategoriesMessage>

  

Displays a list of categories for all event source types, or, if
specified, for a specified source type. You can see a list of the event
categories and source types in the Events topic in the Amazon RDS User
Guide.











=head2 DescribeEvents()

  Arguments described in: L<Paws::RDS::DescribeEvents>

  Returns: L<Paws::RDS::EventsMessage>

  

Returns events related to DB instances, DB security groups, DB
snapshots, and DB parameter groups for the past 14 days. Events
specific to a particular DB instance, DB security group, database
snapshot, or DB parameter group can be obtained by providing the name
as a parameter. By default, the past hour of events are returned.











=head2 DescribeEventSubscriptions()

  Arguments described in: L<Paws::RDS::DescribeEventSubscriptions>

  Returns: L<Paws::RDS::EventSubscriptionsMessage>

  

Lists all the subscription descriptions for a customer account. The
description for a subscription includes SubscriptionName, SNSTopicARN,
CustomerID, SourceType, SourceID, CreationTime, and Status.

If you specify a SubscriptionName, lists the description for that
subscription.











=head2 DescribeOptionGroupOptions()

  Arguments described in: L<Paws::RDS::DescribeOptionGroupOptions>

  Returns: L<Paws::RDS::OptionGroupOptionsMessage>

  

Describes all available options.











=head2 DescribeOptionGroups()

  Arguments described in: L<Paws::RDS::DescribeOptionGroups>

  Returns: L<Paws::RDS::OptionGroups>

  

Describes the available option groups.











=head2 DescribeOrderableDBInstanceOptions()

  Arguments described in: L<Paws::RDS::DescribeOrderableDBInstanceOptions>

  Returns: L<Paws::RDS::OrderableDBInstanceOptionsMessage>

  

Returns a list of orderable DB instance options for the specified
engine.











=head2 DescribePendingMaintenanceActions()

  Arguments described in: L<Paws::RDS::DescribePendingMaintenanceActions>

  Returns: L<Paws::RDS::PendingMaintenanceActionsMessage>

  

Returns a list of resources (for example, DB Instances) that have at
least one pending maintenance action.











=head2 DescribeReservedDBInstances()

  Arguments described in: L<Paws::RDS::DescribeReservedDBInstances>

  Returns: L<Paws::RDS::ReservedDBInstanceMessage>

  

Returns information about reserved DB instances for this account, or
about a specified reserved DB instance.











=head2 DescribeReservedDBInstancesOfferings()

  Arguments described in: L<Paws::RDS::DescribeReservedDBInstancesOfferings>

  Returns: L<Paws::RDS::ReservedDBInstancesOfferingMessage>

  

Lists available reserved DB instance offerings.











=head2 DownloadDBLogFilePortion()

  Arguments described in: L<Paws::RDS::DownloadDBLogFilePortion>

  Returns: L<Paws::RDS::DownloadDBLogFilePortionDetails>

  

Downloads all or a portion of the specified log file.











=head2 ListTagsForResource()

  Arguments described in: L<Paws::RDS::ListTagsForResource>

  Returns: L<Paws::RDS::TagListMessage>

  

Lists all tags on an Amazon RDS resource.

For an overview on tagging an Amazon RDS resource, see Tagging Amazon
RDS Resources.











=head2 ModifyDBInstance()

  Arguments described in: L<Paws::RDS::ModifyDBInstance>

  Returns: L<Paws::RDS::ModifyDBInstanceResult>

  

Modify settings for a DB instance. You can change one or more database
configuration parameters by specifying these parameters and the new
values in the request.











=head2 ModifyDBParameterGroup()

  Arguments described in: L<Paws::RDS::ModifyDBParameterGroup>

  Returns: L<Paws::RDS::DBParameterGroupNameMessage>

  

Modifies the parameters of a DB parameter group. To modify more than
one parameter, submit a list of the following: C<ParameterName>,
C<ParameterValue>, and C<ApplyMethod>. A maximum of 20 parameters can
be modified in a single request.

Changes to dynamic parameters are applied immediately. Changes to
static parameters require a reboot without failover to the DB instance
associated with the parameter group before the change can take effect.

After you modify a DB parameter group, you should wait at least 5
minutes before creating your first DB instance that uses that DB
parameter group as the default parameter group. This allows Amazon RDS
to fully complete the modify action before the parameter group is used
as the default for a new DB instance. This is especially important for
parameters that are critical when creating the default database for a
DB instance, such as the character set for the default database defined
by the C<character_set_database> parameter. You can use the I<Parameter
Groups> option of the Amazon RDS console or the I<DescribeDBParameters>
command to verify that your DB parameter group has been created or
modified.











=head2 ModifyDBSubnetGroup()

  Arguments described in: L<Paws::RDS::ModifyDBSubnetGroup>

  Returns: L<Paws::RDS::ModifyDBSubnetGroupResult>

  

Modifies an existing DB subnet group. DB subnet groups must contain at
least one subnet in at least two AZs in the region.











=head2 ModifyEventSubscription()

  Arguments described in: L<Paws::RDS::ModifyEventSubscription>

  Returns: L<Paws::RDS::ModifyEventSubscriptionResult>

  

Modifies an existing RDS event notification subscription. Note that you
cannot modify the source identifiers using this call; to change source
identifiers for a subscription, use the
AddSourceIdentifierToSubscription and
RemoveSourceIdentifierFromSubscription calls.

You can see a list of the event categories for a given SourceType in
the Events topic in the Amazon RDS User Guide or by using the
B<DescribeEventCategories> action.











=head2 ModifyOptionGroup()

  Arguments described in: L<Paws::RDS::ModifyOptionGroup>

  Returns: L<Paws::RDS::ModifyOptionGroupResult>

  

Modifies an existing option group.











=head2 PromoteReadReplica()

  Arguments described in: L<Paws::RDS::PromoteReadReplica>

  Returns: L<Paws::RDS::PromoteReadReplicaResult>

  

Promotes a Read Replica DB instance to a standalone DB instance.

We recommend that you enable automated backups on your Read Replica
before promoting the Read Replica. This ensures that no backup is taken
during the promotion process. Once the instance is promoted to a
primary instance, backups are taken based on your backup settings.











=head2 PurchaseReservedDBInstancesOffering()

  Arguments described in: L<Paws::RDS::PurchaseReservedDBInstancesOffering>

  Returns: L<Paws::RDS::PurchaseReservedDBInstancesOfferingResult>

  

Purchases a reserved DB instance offering.











=head2 RebootDBInstance()

  Arguments described in: L<Paws::RDS::RebootDBInstance>

  Returns: L<Paws::RDS::RebootDBInstanceResult>

  

Rebooting a DB instance restarts the database engine service. A reboot
also applies to the DB instance any modifications to the associated DB
parameter group that were pending. Rebooting a DB instance results in a
momentary outage of the instance, during which the DB instance status
is set to rebooting. If the RDS instance is configured for MultiAZ, it
is possible that the reboot will be conducted through a failover. An
Amazon RDS event is created when the reboot is completed.

If your DB instance is deployed in multiple Availability Zones, you can
force a failover from one AZ to the other during the reboot. You might
force a failover to test the availability of your DB instance
deployment or to restore operations to the original AZ after a failover
occurs.

The time required to reboot is a function of the specific database
engine's crash recovery process. To improve the reboot time, we
recommend that you reduce database activities as much as possible
during the reboot process to reduce rollback activity for in-transit
transactions.











=head2 RemoveSourceIdentifierFromSubscription()

  Arguments described in: L<Paws::RDS::RemoveSourceIdentifierFromSubscription>

  Returns: L<Paws::RDS::RemoveSourceIdentifierFromSubscriptionResult>

  

Removes a source identifier from an existing RDS event notification
subscription.











=head2 RemoveTagsFromResource()

  Arguments described in: L<Paws::RDS::RemoveTagsFromResource>

  Returns: nothing

  

Removes metadata tags from an Amazon RDS resource.

For an overview on tagging an Amazon RDS resource, see Tagging Amazon
RDS Resources.











=head2 ResetDBParameterGroup()

  Arguments described in: L<Paws::RDS::ResetDBParameterGroup>

  Returns: L<Paws::RDS::DBParameterGroupNameMessage>

  

Modifies the parameters of a DB parameter group to the engine/system
default value. To reset specific parameters submit a list of the
following: C<ParameterName> and C<ApplyMethod>. To reset the entire DB
parameter group, specify the C<DBParameterGroup> name and
C<ResetAllParameters> parameters. When resetting the entire group,
dynamic parameters are updated immediately and static parameters are
set to C<pending-reboot> to take effect on the next DB instance restart
or C<RebootDBInstance> request.











=head2 RestoreDBInstanceFromDBSnapshot()

  Arguments described in: L<Paws::RDS::RestoreDBInstanceFromDBSnapshot>

  Returns: L<Paws::RDS::RestoreDBInstanceFromDBSnapshotResult>

  

Creates a new DB instance from a DB snapshot. The target database is
created from the source database restore point with the same
configuration as the original source database, except that the new RDS
instance is created with the default security group.

If your intent is to replace your original DB instance with the new,
restored DB instance, then rename your original DB instance before you
call the RestoreDBInstanceFromDBSnapshot action. RDS does not allow two
DB instances with the same name. Once you have renamed your original DB
instance with a different identifier, then you can pass the original
name of the DB instance as the DBInstanceIdentifier in the call to the
RestoreDBInstanceFromDBSnapshot action. The result is that you will
replace the original DB instance with the DB instance created from the
snapshot.











=head2 RestoreDBInstanceToPointInTime()

  Arguments described in: L<Paws::RDS::RestoreDBInstanceToPointInTime>

  Returns: L<Paws::RDS::RestoreDBInstanceToPointInTimeResult>

  

Restores a DB instance to an arbitrary point-in-time. Users can restore
to any point in time before the LatestRestorableTime for up to
BackupRetentionPeriod days. The target database is created from the
source database with the same configuration as the original database
except that the DB instance is created with the default DB security
group.











=head2 RevokeDBSecurityGroupIngress()

  Arguments described in: L<Paws::RDS::RevokeDBSecurityGroupIngress>

  Returns: L<Paws::RDS::RevokeDBSecurityGroupIngressResult>

  

Revokes ingress from a DBSecurityGroup for previously authorized IP
ranges or EC2 or VPC Security Groups. Required parameters for this API
are one of CIDRIP, EC2SecurityGroupId for VPC, or
(EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
EC2SecurityGroupId).











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

