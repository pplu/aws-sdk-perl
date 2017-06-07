package Paws::DMS;
  use Moose;
  sub service { 'dms' }
  sub version { '2016-01-01' }
  sub target_prefix { 'AmazonDMSv20160101' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub AddTagsToResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::AddTagsToResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplicationInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateReplicationInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplicationSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateReplicationSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplicationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateReplicationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteReplicationInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteReplicationSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteReplicationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeAccountAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpointTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeEndpointTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventCategories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeEventCategories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeEventSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrderableReplicationInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeOrderableReplicationInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRefreshSchemasStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeRefreshSchemasStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplicationInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationSubnetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplicationSubnetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplicationTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSchemas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeSchemas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTableStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeTableStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ImportCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyReplicationInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyReplicationInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyReplicationSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyReplicationSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyReplicationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyReplicationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RefreshSchemas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::RefreshSchemas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReloadTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ReloadTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTagsFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::RemoveTagsFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartReplicationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StartReplicationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopReplicationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StopReplicationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::TestConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AddTagsToResource CreateEndpoint CreateEventSubscription CreateReplicationInstance CreateReplicationSubnetGroup CreateReplicationTask DeleteCertificate DeleteEndpoint DeleteEventSubscription DeleteReplicationInstance DeleteReplicationSubnetGroup DeleteReplicationTask DescribeAccountAttributes DescribeCertificates DescribeConnections DescribeEndpoints DescribeEndpointTypes DescribeEventCategories DescribeEvents DescribeEventSubscriptions DescribeOrderableReplicationInstances DescribeRefreshSchemasStatus DescribeReplicationInstances DescribeReplicationSubnetGroups DescribeReplicationTasks DescribeSchemas DescribeTableStatistics ImportCertificate ListTagsForResource ModifyEndpoint ModifyEventSubscription ModifyReplicationInstance ModifyReplicationSubnetGroup ModifyReplicationTask RefreshSchemas ReloadTables RemoveTagsFromResource StartReplicationTask StopReplicationTask TestConnection / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS - Perl Interface to AWS AWS Database Migration Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DMS');
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

AWS Database Migration Service

AWS Database Migration Service (AWS DMS) can migrate your data to and
from the most widely used commercial and open-source databases such as
Oracle, PostgreSQL, Microsoft SQL Server, Amazon Redshift, MariaDB,
Amazon Aurora, MySQL, and SAP Adaptive Server Enterprise (ASE). The
service supports homogeneous migrations such as Oracle to Oracle, as
well as heterogeneous migrations between different database platforms,
such as Oracle to MySQL or SQL Server to PostgreSQL.

For more information about AWS DMS, see the AWS DMS user guide at What
Is AWS Database Migration Service?

=head1 METHODS

=head2 AddTagsToResource(ResourceArn => Str, Tags => ArrayRef[L<Paws::DMS::Tag>])

Each argument is described in detail in: L<Paws::DMS::AddTagsToResource>

Returns: a L<Paws::DMS::AddTagsToResourceResponse> instance

  Adds metadata tags to a DMS resource, including replication instance,
endpoint, security group, and migration task. These tags can also be
used with cost allocation reporting to track cost associated with DMS
resources, or used in a Condition statement in an IAM policy for DMS.


=head2 CreateEndpoint(EndpointIdentifier => Str, EndpointType => Str, EngineName => Str, [CertificateArn => Str, DatabaseName => Str, DynamoDbSettings => L<Paws::DMS::DynamoDbSettings>, ExtraConnectionAttributes => Str, KmsKeyId => Str, MongoDbSettings => L<Paws::DMS::MongoDbSettings>, Password => Str, Port => Int, S3Settings => L<Paws::DMS::S3Settings>, ServerName => Str, SslMode => Str, Tags => ArrayRef[L<Paws::DMS::Tag>], Username => Str])

Each argument is described in detail in: L<Paws::DMS::CreateEndpoint>

Returns: a L<Paws::DMS::CreateEndpointResponse> instance

  Creates an endpoint using the provided settings.


=head2 CreateEventSubscription(SnsTopicArn => Str, SubscriptionName => Str, [Enabled => Bool, EventCategories => ArrayRef[Str|Undef], SourceIds => ArrayRef[Str|Undef], SourceType => Str, Tags => ArrayRef[L<Paws::DMS::Tag>]])

Each argument is described in detail in: L<Paws::DMS::CreateEventSubscription>

Returns: a L<Paws::DMS::CreateEventSubscriptionResponse> instance

  Creates an AWS DMS event notification subscription.

You can specify the type of source (C<SourceType>) you want to be
notified of, provide a list of AWS DMS source IDs (C<SourceIds>) that
triggers the events, and provide a list of event categories
(C<EventCategories>) for events you want to be notified of. If you
specify both the C<SourceType> and C<SourceIds>, such as C<SourceType =
replication-instance> and C<SourceIdentifier = my-replinstance>, you
will be notified of all the replication instance events for the
specified source. If you specify a C<SourceType> but don't specify a
C<SourceIdentifier>, you receive notice of the events for that source
type for all your AWS DMS sources. If you don't specify either
C<SourceType> nor C<SourceIdentifier>, you will be notified of events
generated from all AWS DMS sources belonging to your customer account.

For more information about AWS DMS events, see Working with Events and
Notifications in the AWS Database MIgration Service User Guide.


=head2 CreateReplicationInstance(ReplicationInstanceClass => Str, ReplicationInstanceIdentifier => Str, [AllocatedStorage => Int, AutoMinorVersionUpgrade => Bool, AvailabilityZone => Str, EngineVersion => Str, KmsKeyId => Str, MultiAZ => Bool, PreferredMaintenanceWindow => Str, PubliclyAccessible => Bool, ReplicationSubnetGroupIdentifier => Str, Tags => ArrayRef[L<Paws::DMS::Tag>], VpcSecurityGroupIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::DMS::CreateReplicationInstance>

Returns: a L<Paws::DMS::CreateReplicationInstanceResponse> instance

  Creates the replication instance using the specified parameters.


=head2 CreateReplicationSubnetGroup(ReplicationSubnetGroupDescription => Str, ReplicationSubnetGroupIdentifier => Str, SubnetIds => ArrayRef[Str|Undef], [Tags => ArrayRef[L<Paws::DMS::Tag>]])

Each argument is described in detail in: L<Paws::DMS::CreateReplicationSubnetGroup>

Returns: a L<Paws::DMS::CreateReplicationSubnetGroupResponse> instance

  Creates a replication subnet group given a list of the subnet IDs in a
VPC.


=head2 CreateReplicationTask(MigrationType => Str, ReplicationInstanceArn => Str, ReplicationTaskIdentifier => Str, SourceEndpointArn => Str, TableMappings => Str, TargetEndpointArn => Str, [CdcStartTime => Str, ReplicationTaskSettings => Str, Tags => ArrayRef[L<Paws::DMS::Tag>]])

Each argument is described in detail in: L<Paws::DMS::CreateReplicationTask>

Returns: a L<Paws::DMS::CreateReplicationTaskResponse> instance

  Creates a replication task using the specified parameters.


=head2 DeleteCertificate(CertificateArn => Str)

Each argument is described in detail in: L<Paws::DMS::DeleteCertificate>

Returns: a L<Paws::DMS::DeleteCertificateResponse> instance

  Deletes the specified certificate.


=head2 DeleteEndpoint(EndpointArn => Str)

Each argument is described in detail in: L<Paws::DMS::DeleteEndpoint>

Returns: a L<Paws::DMS::DeleteEndpointResponse> instance

  Deletes the specified endpoint.

All tasks associated with the endpoint must be deleted before you can
delete the endpoint.


=head2 DeleteEventSubscription(SubscriptionName => Str)

Each argument is described in detail in: L<Paws::DMS::DeleteEventSubscription>

Returns: a L<Paws::DMS::DeleteEventSubscriptionResponse> instance

  Deletes an AWS DMS event subscription.


=head2 DeleteReplicationInstance(ReplicationInstanceArn => Str)

Each argument is described in detail in: L<Paws::DMS::DeleteReplicationInstance>

Returns: a L<Paws::DMS::DeleteReplicationInstanceResponse> instance

  Deletes the specified replication instance.

You must delete any migration tasks that are associated with the
replication instance before you can delete it.


=head2 DeleteReplicationSubnetGroup(ReplicationSubnetGroupIdentifier => Str)

Each argument is described in detail in: L<Paws::DMS::DeleteReplicationSubnetGroup>

Returns: a L<Paws::DMS::DeleteReplicationSubnetGroupResponse> instance

  Deletes a subnet group.


=head2 DeleteReplicationTask(ReplicationTaskArn => Str)

Each argument is described in detail in: L<Paws::DMS::DeleteReplicationTask>

Returns: a L<Paws::DMS::DeleteReplicationTaskResponse> instance

  Deletes the specified replication task.


=head2 DescribeAccountAttributes()

Each argument is described in detail in: L<Paws::DMS::DescribeAccountAttributes>

Returns: a L<Paws::DMS::DescribeAccountAttributesResponse> instance

  Lists all of the AWS DMS attributes for a customer account. The
attributes include AWS DMS quotas for the account, such as the number
of replication instances allowed. The description for a quota includes
the quota name, current usage toward that quota, and the quota's
maximum value.

This command does not take any parameters.


=head2 DescribeCertificates([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::DMS::DescribeCertificates>

Returns: a L<Paws::DMS::DescribeCertificatesResponse> instance

  Provides a description of the certificate.


=head2 DescribeConnections([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::DMS::DescribeConnections>

Returns: a L<Paws::DMS::DescribeConnectionsResponse> instance

  Describes the status of the connections that have been made between the
replication instance and an endpoint. Connections are created when you
test an endpoint.


=head2 DescribeEndpoints([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::DMS::DescribeEndpoints>

Returns: a L<Paws::DMS::DescribeEndpointsResponse> instance

  Returns information about the endpoints for your account in the current
region.


=head2 DescribeEndpointTypes([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::DMS::DescribeEndpointTypes>

Returns: a L<Paws::DMS::DescribeEndpointTypesResponse> instance

  Returns information about the type of endpoints available.


=head2 DescribeEventCategories([Filters => ArrayRef[L<Paws::DMS::Filter>], SourceType => Str])

Each argument is described in detail in: L<Paws::DMS::DescribeEventCategories>

Returns: a L<Paws::DMS::DescribeEventCategoriesResponse> instance

  Lists categories for all event source types, or, if specified, for a
specified source type. You can see a list of the event categories and
source types in Working with Events and Notifications in the AWS
Database Migration Service User Guide.


=head2 DescribeEvents([Duration => Int, EndTime => Str, EventCategories => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int, SourceIdentifier => Str, SourceType => Str, StartTime => Str])

Each argument is described in detail in: L<Paws::DMS::DescribeEvents>

Returns: a L<Paws::DMS::DescribeEventsResponse> instance

  Lists events for a given source identifier and source type. You can
also specify a start and end time. For more information on AWS DMS
events, see Working with Events and Notifications .


=head2 DescribeEventSubscriptions([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int, SubscriptionName => Str])

Each argument is described in detail in: L<Paws::DMS::DescribeEventSubscriptions>

Returns: a L<Paws::DMS::DescribeEventSubscriptionsResponse> instance

  Lists all the event subscriptions for a customer account. The
description of a subscription includes C<SubscriptionName>,
C<SNSTopicARN>, C<CustomerID>, C<SourceType>, C<SourceID>,
C<CreationTime>, and C<Status>.

If you specify C<SubscriptionName>, this action lists the description
for that subscription.


=head2 DescribeOrderableReplicationInstances([Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::DMS::DescribeOrderableReplicationInstances>

Returns: a L<Paws::DMS::DescribeOrderableReplicationInstancesResponse> instance

  Returns information about the replication instance types that can be
created in the specified region.


=head2 DescribeRefreshSchemasStatus(EndpointArn => Str)

Each argument is described in detail in: L<Paws::DMS::DescribeRefreshSchemasStatus>

Returns: a L<Paws::DMS::DescribeRefreshSchemasStatusResponse> instance

  Returns the status of the RefreshSchemas operation.


=head2 DescribeReplicationInstances([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::DMS::DescribeReplicationInstances>

Returns: a L<Paws::DMS::DescribeReplicationInstancesResponse> instance

  Returns information about replication instances for your account in the
current region.


=head2 DescribeReplicationSubnetGroups([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::DMS::DescribeReplicationSubnetGroups>

Returns: a L<Paws::DMS::DescribeReplicationSubnetGroupsResponse> instance

  Returns information about the replication subnet groups.


=head2 DescribeReplicationTasks([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::DMS::DescribeReplicationTasks>

Returns: a L<Paws::DMS::DescribeReplicationTasksResponse> instance

  Returns information about replication tasks for your account in the
current region.


=head2 DescribeSchemas(EndpointArn => Str, [Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::DMS::DescribeSchemas>

Returns: a L<Paws::DMS::DescribeSchemasResponse> instance

  Returns information about the schema for the specified endpoint.


=head2 DescribeTableStatistics(ReplicationTaskArn => Str, [Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::DMS::DescribeTableStatistics>

Returns: a L<Paws::DMS::DescribeTableStatisticsResponse> instance

  Returns table statistics on the database migration task, including
table name, rows inserted, rows updated, and rows deleted.


=head2 ImportCertificate(CertificateIdentifier => Str, [CertificatePem => Str, CertificateWallet => Str])

Each argument is described in detail in: L<Paws::DMS::ImportCertificate>

Returns: a L<Paws::DMS::ImportCertificateResponse> instance

  Uploads the specified certificate.


=head2 ListTagsForResource(ResourceArn => Str)

Each argument is described in detail in: L<Paws::DMS::ListTagsForResource>

Returns: a L<Paws::DMS::ListTagsForResourceResponse> instance

  Lists all tags for an AWS DMS resource.


=head2 ModifyEndpoint(EndpointArn => Str, [CertificateArn => Str, DatabaseName => Str, DynamoDbSettings => L<Paws::DMS::DynamoDbSettings>, EndpointIdentifier => Str, EndpointType => Str, EngineName => Str, ExtraConnectionAttributes => Str, MongoDbSettings => L<Paws::DMS::MongoDbSettings>, Password => Str, Port => Int, S3Settings => L<Paws::DMS::S3Settings>, ServerName => Str, SslMode => Str, Username => Str])

Each argument is described in detail in: L<Paws::DMS::ModifyEndpoint>

Returns: a L<Paws::DMS::ModifyEndpointResponse> instance

  Modifies the specified endpoint.


=head2 ModifyEventSubscription(SubscriptionName => Str, [Enabled => Bool, EventCategories => ArrayRef[Str|Undef], SnsTopicArn => Str, SourceType => Str])

Each argument is described in detail in: L<Paws::DMS::ModifyEventSubscription>

Returns: a L<Paws::DMS::ModifyEventSubscriptionResponse> instance

  Modifies an existing AWS DMS event notification subscription.


=head2 ModifyReplicationInstance(ReplicationInstanceArn => Str, [AllocatedStorage => Int, AllowMajorVersionUpgrade => Bool, ApplyImmediately => Bool, AutoMinorVersionUpgrade => Bool, EngineVersion => Str, MultiAZ => Bool, PreferredMaintenanceWindow => Str, ReplicationInstanceClass => Str, ReplicationInstanceIdentifier => Str, VpcSecurityGroupIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::DMS::ModifyReplicationInstance>

Returns: a L<Paws::DMS::ModifyReplicationInstanceResponse> instance

  Modifies the replication instance to apply new settings. You can change
one or more parameters by specifying these parameters and the new
values in the request.

Some settings are applied during the maintenance window.


=head2 ModifyReplicationSubnetGroup(ReplicationSubnetGroupIdentifier => Str, SubnetIds => ArrayRef[Str|Undef], [ReplicationSubnetGroupDescription => Str])

Each argument is described in detail in: L<Paws::DMS::ModifyReplicationSubnetGroup>

Returns: a L<Paws::DMS::ModifyReplicationSubnetGroupResponse> instance

  Modifies the settings for the specified replication subnet group.


=head2 ModifyReplicationTask(ReplicationTaskArn => Str, [CdcStartTime => Str, MigrationType => Str, ReplicationTaskIdentifier => Str, ReplicationTaskSettings => Str, TableMappings => Str])

Each argument is described in detail in: L<Paws::DMS::ModifyReplicationTask>

Returns: a L<Paws::DMS::ModifyReplicationTaskResponse> instance

  Modifies the specified replication task.

You can't modify the task endpoints. The task must be stopped before
you can modify it.

For more information about AWS DMS tasks, see the AWS DMS user guide at
Working with Migration Tasks


=head2 RefreshSchemas(EndpointArn => Str, ReplicationInstanceArn => Str)

Each argument is described in detail in: L<Paws::DMS::RefreshSchemas>

Returns: a L<Paws::DMS::RefreshSchemasResponse> instance

  Populates the schema for the specified endpoint. This is an
asynchronous operation and can take several minutes. You can check the
status of this operation by calling the DescribeRefreshSchemasStatus
operation.


=head2 ReloadTables(ReplicationTaskArn => Str, TablesToReload => ArrayRef[L<Paws::DMS::TableToReload>])

Each argument is described in detail in: L<Paws::DMS::ReloadTables>

Returns: a L<Paws::DMS::ReloadTablesResponse> instance

  Reloads the target database table with the source data.


=head2 RemoveTagsFromResource(ResourceArn => Str, TagKeys => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::DMS::RemoveTagsFromResource>

Returns: a L<Paws::DMS::RemoveTagsFromResourceResponse> instance

  Removes metadata tags from a DMS resource.


=head2 StartReplicationTask(ReplicationTaskArn => Str, StartReplicationTaskType => Str, [CdcStartTime => Str])

Each argument is described in detail in: L<Paws::DMS::StartReplicationTask>

Returns: a L<Paws::DMS::StartReplicationTaskResponse> instance

  Starts the replication task.

For more information about AWS DMS tasks, see the AWS DMS user guide at
Working with Migration Tasks


=head2 StopReplicationTask(ReplicationTaskArn => Str)

Each argument is described in detail in: L<Paws::DMS::StopReplicationTask>

Returns: a L<Paws::DMS::StopReplicationTaskResponse> instance

  Stops the replication task.


=head2 TestConnection(EndpointArn => Str, ReplicationInstanceArn => Str)

Each argument is described in detail in: L<Paws::DMS::TestConnection>

Returns: a L<Paws::DMS::TestConnectionResponse> instance

  Tests the connection between the replication instance and the endpoint.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

