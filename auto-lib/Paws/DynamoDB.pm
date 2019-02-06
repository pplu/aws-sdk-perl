package Paws::DynamoDB;
  use Moose;
  sub service { 'dynamodb' }
  sub signing_name { 'dynamodb' }
  sub version { '2012-08-10' }
  sub target_prefix { 'DynamoDB_20120810' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 10);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => '0.05', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
       sub { $_[0]->code eq 'Crc32Error' },
       sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq 'TransactionInProgressException' },
       sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq 'ProvisionedThroughputExceededException' },
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  has '+region_rules' => (default => sub {
    my $regioninfo;
      $regioninfo = [
    {
      constraints => [
        [
          'region',
          'equals',
          'local'
        ]
      ],
      properties => {
        credentialScope => {
          region => 'us-east-1',
          service => 'dynamodb'
        }
      },
      uri => 'http://localhost:8000'
    }
  ];

    return $regioninfo;
  });

  
  sub BatchGetItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::BatchGetItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchWriteItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::BatchWriteItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::CreateBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGlobalTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::CreateGlobalTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::CreateTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::DeleteBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::DeleteItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::DeleteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::DescribeBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeContinuousBackups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::DescribeContinuousBackups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::DescribeEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGlobalTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::DescribeGlobalTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGlobalTableSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::DescribeGlobalTableSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLimits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::DescribeLimits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::DescribeTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTimeToLive {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::DescribeTimeToLive', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::GetItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBackups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::ListBackups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGlobalTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::ListGlobalTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::ListTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsOfResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::ListTagsOfResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::PutItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Query {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::Query', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreTableFromBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::RestoreTableFromBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreTableToPointInTime {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::RestoreTableToPointInTime', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Scan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::Scan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TransactGetItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::TransactGetItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TransactWriteItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::TransactWriteItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContinuousBackups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::UpdateContinuousBackups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGlobalTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::UpdateGlobalTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGlobalTableSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::UpdateGlobalTableSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::UpdateItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::UpdateTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTimeToLive {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDB::UpdateTimeToLive', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllBackups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBackups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->LastEvaluatedBackupArn) {
        $next_result = $self->ListBackups(@_, ExclusiveStartBackupArn => $next_result->LastEvaluatedBackupArn);
        push @{ $result->BackupSummaries }, @{ $next_result->BackupSummaries };
      }
      return $result;
    } else {
      while ($result->LastEvaluatedBackupArn) {
        $callback->($_ => 'BackupSummaries') foreach (@{ $result->BackupSummaries });
        $result = $self->ListBackups(@_, ExclusiveStartBackupArn => $result->LastEvaluatedBackupArn);
      }
      $callback->($_ => 'BackupSummaries') foreach (@{ $result->BackupSummaries });
    }

    return undef
  }
  sub ListAllTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->LastEvaluatedTableName) {
        $next_result = $self->ListTables(@_, ExclusiveStartTableName => $next_result->LastEvaluatedTableName);
        push @{ $result->TableNames }, @{ $next_result->TableNames };
      }
      return $result;
    } else {
      while ($result->LastEvaluatedTableName) {
        $callback->($_ => 'TableNames') foreach (@{ $result->TableNames });
        $result = $self->ListTables(@_, ExclusiveStartTableName => $result->LastEvaluatedTableName);
      }
      $callback->($_ => 'TableNames') foreach (@{ $result->TableNames });
    }

    return undef
  }
  sub ListAllTagsOfResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsOfResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTagsOfResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTagsOfResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub QueryAll {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->Query(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->LastEvaluatedKey) {
        $next_result = $self->Query(@_, ExclusiveStartKey => $next_result->LastEvaluatedKey);
        push @{ $result->Items }, @{ $next_result->Items };
        push @{ $result->Count }, @{ $next_result->Count };
        push @{ $result->ScannedCount }, @{ $next_result->ScannedCount };
      }
      return $result;
    } else {
      while ($result->LastEvaluatedKey) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $callback->($_ => 'Count') foreach (@{ $result->Count });
        $callback->($_ => 'ScannedCount') foreach (@{ $result->ScannedCount });
        $result = $self->Query(@_, ExclusiveStartKey => $result->LastEvaluatedKey);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
      $callback->($_ => 'Count') foreach (@{ $result->Count });
      $callback->($_ => 'ScannedCount') foreach (@{ $result->ScannedCount });
    }

    return undef
  }
  sub ScanAll {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->Scan(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->LastEvaluatedKey) {
        $next_result = $self->Scan(@_, ExclusiveStartKey => $next_result->LastEvaluatedKey);
        push @{ $result->Items }, @{ $next_result->Items };
        push @{ $result->Count }, @{ $next_result->Count };
        push @{ $result->ScannedCount }, @{ $next_result->ScannedCount };
      }
      return $result;
    } else {
      while ($result->LastEvaluatedKey) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $callback->($_ => 'Count') foreach (@{ $result->Count });
        $callback->($_ => 'ScannedCount') foreach (@{ $result->ScannedCount });
        $result = $self->Scan(@_, ExclusiveStartKey => $result->LastEvaluatedKey);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
      $callback->($_ => 'Count') foreach (@{ $result->Count });
      $callback->($_ => 'ScannedCount') foreach (@{ $result->ScannedCount });
    }

    return undef
  }


  sub operations { qw/BatchGetItem BatchWriteItem CreateBackup CreateGlobalTable CreateTable DeleteBackup DeleteItem DeleteTable DescribeBackup DescribeContinuousBackups DescribeEndpoints DescribeGlobalTable DescribeGlobalTableSettings DescribeLimits DescribeTable DescribeTimeToLive GetItem ListBackups ListGlobalTables ListTables ListTagsOfResource PutItem Query RestoreTableFromBackup RestoreTableToPointInTime Scan TagResource TransactGetItems TransactWriteItems UntagResource UpdateContinuousBackups UpdateGlobalTable UpdateGlobalTableSettings UpdateItem UpdateTable UpdateTimeToLive / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB - Perl Interface to AWS Amazon DynamoDB

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DynamoDB');
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

Amazon DynamoDB

Amazon DynamoDB is a fully managed NoSQL database service that provides
fast and predictable performance with seamless scalability. DynamoDB
lets you offload the administrative burdens of operating and scaling a
distributed database, so that you don't have to worry about hardware
provisioning, setup and configuration, replication, software patching,
or cluster scaling.

With DynamoDB, you can create database tables that can store and
retrieve any amount of data, and serve any level of request traffic.
You can scale up or scale down your tables' throughput capacity without
downtime or performance degradation, and use the AWS Management Console
to monitor resource utilization and performance metrics.

DynamoDB automatically spreads the data and traffic for your tables
over a sufficient number of servers to handle your throughput and
storage requirements, while maintaining consistent and fast
performance. All of your data is stored on solid state disks (SSDs) and
automatically replicated across multiple Availability Zones in an AWS
region, providing built-in high availability and data durability.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10>


=head1 METHODS

=head2 BatchGetItem

=over

=item RequestItems => L<Paws::DynamoDB::BatchGetRequestMap>

=item [ReturnConsumedCapacity => Str]


=back

Each argument is described in detail in: L<Paws::DynamoDB::BatchGetItem>

Returns: a L<Paws::DynamoDB::BatchGetItemOutput> instance

The C<BatchGetItem> operation returns the attributes of one or more
items from one or more tables. You identify requested items by primary
key.

A single operation can retrieve up to 16 MB of data, which can contain
as many as 100 items. C<BatchGetItem> will return a partial result if
the response size limit is exceeded, the table's provisioned throughput
is exceeded, or an internal processing failure occurs. If a partial
result is returned, the operation returns a value for
C<UnprocessedKeys>. You can use this value to retry the operation
starting with the next item to get.

If you request more than 100 items C<BatchGetItem> will return a
C<ValidationException> with the message "Too many items requested for
the BatchGetItem call".

For example, if you ask to retrieve 100 items, but each individual item
is 300 KB in size, the system returns 52 items (so as not to exceed the
16 MB limit). It also returns an appropriate C<UnprocessedKeys> value
so you can get the next page of results. If desired, your application
can include its own logic to assemble the pages of results into one
data set.

If I<none> of the items can be processed due to insufficient
provisioned throughput on all of the tables in the request, then
C<BatchGetItem> will return a
C<ProvisionedThroughputExceededException>. If I<at least one> of the
items is successfully processed, then C<BatchGetItem> completes
successfully, while returning the keys of the unread items in
C<UnprocessedKeys>.

If DynamoDB returns any unprocessed items, you should retry the batch
operation on those items. However, I<we strongly recommend that you use
an exponential backoff algorithm>. If you retry the batch operation
immediately, the underlying read or write requests can still fail due
to throttling on the individual tables. If you delay the batch
operation using exponential backoff, the individual requests in the
batch are much more likely to succeed.

For more information, see Batch Operations and Error Handling
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations)
in the I<Amazon DynamoDB Developer Guide>.

By default, C<BatchGetItem> performs eventually consistent reads on
every table in the request. If you want strongly consistent reads
instead, you can set C<ConsistentRead> to C<true> for any or all
tables.

In order to minimize response latency, C<BatchGetItem> retrieves items
in parallel.

When designing your application, keep in mind that DynamoDB does not
return items in any particular order. To help parse the response by
item, include the primary key values for the items in your request in
the C<ProjectionExpression> parameter.

If a requested item does not exist, it is not returned in the result.
Requests for nonexistent items consume the minimum read capacity units
according to the type of read. For more information, see Capacity Units
Calculations
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations)
in the I<Amazon DynamoDB Developer Guide>.


=head2 BatchWriteItem

=over

=item RequestItems => L<Paws::DynamoDB::BatchWriteItemRequestMap>

=item [ReturnConsumedCapacity => Str]

=item [ReturnItemCollectionMetrics => Str]


=back

Each argument is described in detail in: L<Paws::DynamoDB::BatchWriteItem>

Returns: a L<Paws::DynamoDB::BatchWriteItemOutput> instance

The C<BatchWriteItem> operation puts or deletes multiple items in one
or more tables. A single call to C<BatchWriteItem> can write up to 16
MB of data, which can comprise as many as 25 put or delete requests.
Individual items to be written can be as large as 400 KB.

C<BatchWriteItem> cannot update items. To update items, use the
C<UpdateItem> action.

The individual C<PutItem> and C<DeleteItem> operations specified in
C<BatchWriteItem> are atomic; however C<BatchWriteItem> as a whole is
not. If any requested operations fail because the table's provisioned
throughput is exceeded or an internal processing failure occurs, the
failed operations are returned in the C<UnprocessedItems> response
parameter. You can investigate and optionally resend the requests.
Typically, you would call C<BatchWriteItem> in a loop. Each iteration
would check for unprocessed items and submit a new C<BatchWriteItem>
request with those unprocessed items until all items have been
processed.

Note that if I<none> of the items can be processed due to insufficient
provisioned throughput on all of the tables in the request, then
C<BatchWriteItem> will return a
C<ProvisionedThroughputExceededException>.

If DynamoDB returns any unprocessed items, you should retry the batch
operation on those items. However, I<we strongly recommend that you use
an exponential backoff algorithm>. If you retry the batch operation
immediately, the underlying read or write requests can still fail due
to throttling on the individual tables. If you delay the batch
operation using exponential backoff, the individual requests in the
batch are much more likely to succeed.

For more information, see Batch Operations and Error Handling
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations)
in the I<Amazon DynamoDB Developer Guide>.

With C<BatchWriteItem>, you can efficiently write or delete large
amounts of data, such as from Amazon Elastic MapReduce (EMR), or copy
data from another database into DynamoDB. In order to improve
performance with these large-scale operations, C<BatchWriteItem> does
not behave in the same way as individual C<PutItem> and C<DeleteItem>
calls would. For example, you cannot specify conditions on individual
put and delete requests, and C<BatchWriteItem> does not return deleted
items in the response.

If you use a programming language that supports concurrency, you can
use threads to write items in parallel. Your application must include
the necessary logic to manage the threads. With languages that don't
support threading, you must update or delete the specified items one at
a time. In both situations, C<BatchWriteItem> performs the specified
put and delete operations in parallel, giving you the power of the
thread pool approach without having to introduce complexity into your
application.

Parallel processing reduces latency, but each specified put and delete
request consumes the same number of write capacity units whether it is
processed in parallel or not. Delete operations on nonexistent items
consume one write capacity unit.

If one or more of the following is true, DynamoDB rejects the entire
batch write operation:

=over

=item *

One or more tables specified in the C<BatchWriteItem> request does not
exist.

=item *

Primary key attributes specified on an item in the request do not match
those in the corresponding table's primary key schema.

=item *

You try to perform multiple operations on the same item in the same
C<BatchWriteItem> request. For example, you cannot put and delete the
same item in the same C<BatchWriteItem> request.

=item *

Your request contains at least two items with identical hash and range
keys (which essentially is two put operations).

=item *

There are more than 25 requests in the batch.

=item *

Any individual item in a batch exceeds 400 KB.

=item *

The total request size exceeds 16 MB.

=back



=head2 CreateBackup

=over

=item BackupName => Str

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::DynamoDB::CreateBackup>

Returns: a L<Paws::DynamoDB::CreateBackupOutput> instance

Creates a backup for an existing table.

Each time you create an On-Demand Backup, the entire table data is
backed up. There is no limit to the number of on-demand backups that
can be taken.

When you create an On-Demand Backup, a time marker of the request is
cataloged, and the backup is created asynchronously, by applying all
changes until the time of the request to the last full table snapshot.
Backup requests are processed instantaneously and become available for
restore within minutes.

You can call C<CreateBackup> at a maximum rate of 50 times per second.

All backups in DynamoDB work without consuming any provisioned
throughput on the table.

If you submit a backup request on 2018-12-14 at 14:25:00, the backup is
guaranteed to contain all data committed to the table up to 14:24:00,
and data committed after 14:26:00 will not be. The backup may or may
not contain data modifications made between 14:24:00 and 14:26:00.
On-Demand Backup does not support causal consistency.

Along with data, the following are also included on the backups:

=over

=item *

Global secondary indexes (GSIs)

=item *

Local secondary indexes (LSIs)

=item *

Streams

=item *

Provisioned read and write capacity

=back



=head2 CreateGlobalTable

=over

=item GlobalTableName => Str

=item ReplicationGroup => ArrayRef[L<Paws::DynamoDB::Replica>]


=back

Each argument is described in detail in: L<Paws::DynamoDB::CreateGlobalTable>

Returns: a L<Paws::DynamoDB::CreateGlobalTableOutput> instance

Creates a global table from an existing table. A global table creates a
replication relationship between two or more DynamoDB tables with the
same table name in the provided regions.

If you want to add a new replica table to a global table, each of the
following conditions must be true:

=over

=item *

The table must have the same primary key as all of the other replicas.

=item *

The table must have the same name as all of the other replicas.

=item *

The table must have DynamoDB Streams enabled, with the stream
containing both the new and the old images of the item.

=item *

None of the replica tables in the global table can contain any data.

=back

If global secondary indexes are specified, then the following
conditions must also be met:

=over

=item *

The global secondary indexes must have the same name.

=item *

The global secondary indexes must have the same hash key and sort key
(if present).

=back

Write capacity settings should be set consistently across your replica
tables and secondary indexes. DynamoDB strongly recommends enabling
auto scaling to manage the write capacity settings for all of your
global tables replicas and indexes.

If you prefer to manage write capacity settings manually, you should
provision equal replicated write capacity units to your replica tables.
You should also provision equal replicated write capacity units to
matching secondary indexes across your global table.


=head2 CreateTable

=over

=item AttributeDefinitions => ArrayRef[L<Paws::DynamoDB::AttributeDefinition>]

=item KeySchema => ArrayRef[L<Paws::DynamoDB::KeySchemaElement>]

=item TableName => Str

=item [BillingMode => Str]

=item [GlobalSecondaryIndexes => ArrayRef[L<Paws::DynamoDB::GlobalSecondaryIndex>]]

=item [LocalSecondaryIndexes => ArrayRef[L<Paws::DynamoDB::LocalSecondaryIndex>]]

=item [ProvisionedThroughput => L<Paws::DynamoDB::ProvisionedThroughput>]

=item [SSESpecification => L<Paws::DynamoDB::SSESpecification>]

=item [StreamSpecification => L<Paws::DynamoDB::StreamSpecification>]


=back

Each argument is described in detail in: L<Paws::DynamoDB::CreateTable>

Returns: a L<Paws::DynamoDB::CreateTableOutput> instance

The C<CreateTable> operation adds a new table to your account. In an
AWS account, table names must be unique within each region. That is,
you can have two tables with same name if you create the tables in
different regions.

C<CreateTable> is an asynchronous operation. Upon receiving a
C<CreateTable> request, DynamoDB immediately returns a response with a
C<TableStatus> of C<CREATING>. After the table is created, DynamoDB
sets the C<TableStatus> to C<ACTIVE>. You can perform read and write
operations only on an C<ACTIVE> table.

You can optionally define secondary indexes on the new table, as part
of the C<CreateTable> operation. If you want to create multiple tables
with secondary indexes on them, you must create the tables
sequentially. Only one table with secondary indexes can be in the
C<CREATING> state at any given time.

You can use the C<DescribeTable> action to check the table status.


=head2 DeleteBackup

=over

=item BackupArn => Str


=back

Each argument is described in detail in: L<Paws::DynamoDB::DeleteBackup>

Returns: a L<Paws::DynamoDB::DeleteBackupOutput> instance

Deletes an existing backup of a table.

You can call C<DeleteBackup> at a maximum rate of 10 times per second.


=head2 DeleteItem

=over

=item Key => L<Paws::DynamoDB::Key>

=item TableName => Str

=item [ConditionalOperator => Str]

=item [ConditionExpression => Str]

=item [Expected => L<Paws::DynamoDB::ExpectedAttributeMap>]

=item [ExpressionAttributeNames => L<Paws::DynamoDB::ExpressionAttributeNameMap>]

=item [ExpressionAttributeValues => L<Paws::DynamoDB::ExpressionAttributeValueMap>]

=item [ReturnConsumedCapacity => Str]

=item [ReturnItemCollectionMetrics => Str]

=item [ReturnValues => Str]


=back

Each argument is described in detail in: L<Paws::DynamoDB::DeleteItem>

Returns: a L<Paws::DynamoDB::DeleteItemOutput> instance

Deletes a single item in a table by primary key. You can perform a
conditional delete operation that deletes the item if it exists, or if
it has an expected attribute value.

In addition to deleting an item, you can also return the item's
attribute values in the same operation, using the C<ReturnValues>
parameter.

Unless you specify conditions, the C<DeleteItem> is an idempotent
operation; running it multiple times on the same item or attribute does
I<not> result in an error response.

Conditional deletes are useful for deleting items only if specific
conditions are met. If those conditions are met, DynamoDB performs the
delete. Otherwise, the item is not deleted.


=head2 DeleteTable

=over

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::DynamoDB::DeleteTable>

Returns: a L<Paws::DynamoDB::DeleteTableOutput> instance

The C<DeleteTable> operation deletes a table and all of its items.
After a C<DeleteTable> request, the specified table is in the
C<DELETING> state until DynamoDB completes the deletion. If the table
is in the C<ACTIVE> state, you can delete it. If a table is in
C<CREATING> or C<UPDATING> states, then DynamoDB returns a
C<ResourceInUseException>. If the specified table does not exist,
DynamoDB returns a C<ResourceNotFoundException>. If table is already in
the C<DELETING> state, no error is returned.

DynamoDB might continue to accept data read and write operations, such
as C<GetItem> and C<PutItem>, on a table in the C<DELETING> state until
the table deletion is complete.

When you delete a table, any indexes on that table are also deleted.

If you have DynamoDB Streams enabled on the table, then the
corresponding stream on that table goes into the C<DISABLED> state, and
the stream is automatically deleted after 24 hours.

Use the C<DescribeTable> action to check the status of the table.


=head2 DescribeBackup

=over

=item BackupArn => Str


=back

Each argument is described in detail in: L<Paws::DynamoDB::DescribeBackup>

Returns: a L<Paws::DynamoDB::DescribeBackupOutput> instance

Describes an existing backup of a table.

You can call C<DescribeBackup> at a maximum rate of 10 times per
second.


=head2 DescribeContinuousBackups

=over

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::DynamoDB::DescribeContinuousBackups>

Returns: a L<Paws::DynamoDB::DescribeContinuousBackupsOutput> instance

Checks the status of continuous backups and point in time recovery on
the specified table. Continuous backups are C<ENABLED> on all tables at
table creation. If point in time recovery is enabled,
C<PointInTimeRecoveryStatus> will be set to ENABLED.

Once continuous backups and point in time recovery are enabled, you can
restore to any point in time within C<EarliestRestorableDateTime> and
C<LatestRestorableDateTime>.

C<LatestRestorableDateTime> is typically 5 minutes before the current
time. You can restore your table to any point in time during the last
35 days.

You can call C<DescribeContinuousBackups> at a maximum rate of 10 times
per second.


=head2 DescribeEndpoints






Each argument is described in detail in: L<Paws::DynamoDB::DescribeEndpoints>

Returns: a L<Paws::DynamoDB::DescribeEndpointsResponse> instance

Returns the regional endpoint information.


=head2 DescribeGlobalTable

=over

=item GlobalTableName => Str


=back

Each argument is described in detail in: L<Paws::DynamoDB::DescribeGlobalTable>

Returns: a L<Paws::DynamoDB::DescribeGlobalTableOutput> instance

Returns information about the specified global table.


=head2 DescribeGlobalTableSettings

=over

=item GlobalTableName => Str


=back

Each argument is described in detail in: L<Paws::DynamoDB::DescribeGlobalTableSettings>

Returns: a L<Paws::DynamoDB::DescribeGlobalTableSettingsOutput> instance

Describes region specific settings for a global table.


=head2 DescribeLimits






Each argument is described in detail in: L<Paws::DynamoDB::DescribeLimits>

Returns: a L<Paws::DynamoDB::DescribeLimitsOutput> instance

Returns the current provisioned-capacity limits for your AWS account in
a region, both for the region as a whole and for any one DynamoDB table
that you create there.

When you establish an AWS account, the account has initial limits on
the maximum read capacity units and write capacity units that you can
provision across all of your DynamoDB tables in a given region. Also,
there are per-table limits that apply when you create a table there.
For more information, see Limits
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html)
page in the I<Amazon DynamoDB Developer Guide>.

Although you can increase these limits by filing a case at AWS Support
Center (https://console.aws.amazon.com/support/home#/), obtaining the
increase is not instantaneous. The C<DescribeLimits> action lets you
write code to compare the capacity you are currently using to those
limits imposed by your account so that you have enough time to apply
for an increase before you hit a limit.

For example, you could use one of the AWS SDKs to do the following:

=over

=item 1.

Call C<DescribeLimits> for a particular region to obtain your current
account limits on provisioned capacity there.

=item 2.

Create a variable to hold the aggregate read capacity units provisioned
for all your tables in that region, and one to hold the aggregate write
capacity units. Zero them both.

=item 3.

Call C<ListTables> to obtain a list of all your DynamoDB tables.

=item 4.

For each table name listed by C<ListTables>, do the following:

=over

=item *

Call C<DescribeTable> with the table name.

=item *

Use the data returned by C<DescribeTable> to add the read capacity
units and write capacity units provisioned for the table itself to your
variables.

=item *

If the table has one or more global secondary indexes (GSIs), loop over
these GSIs and add their provisioned capacity values to your variables
as well.

=back

=item 5.

Report the account limits for that region returned by
C<DescribeLimits>, along with the total current provisioned capacity
levels you have calculated.

=back

This will let you see whether you are getting close to your
account-level limits.

The per-table limits apply only when you are creating a new table. They
restrict the sum of the provisioned capacity of the new table itself
and all its global secondary indexes.

For existing tables and their GSIs, DynamoDB will not let you increase
provisioned capacity extremely rapidly, but the only upper limit that
applies is that the aggregate provisioned capacity over all your tables
and GSIs cannot exceed either of the per-account limits.

C<DescribeLimits> should only be called periodically. You can expect
throttling errors if you call it more than once in a minute.

The C<DescribeLimits> Request element has no content.


=head2 DescribeTable

=over

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::DynamoDB::DescribeTable>

Returns: a L<Paws::DynamoDB::DescribeTableOutput> instance

Returns information about the table, including the current status of
the table, when it was created, the primary key schema, and any indexes
on the table.

If you issue a C<DescribeTable> request immediately after a
C<CreateTable> request, DynamoDB might return a
C<ResourceNotFoundException>. This is because C<DescribeTable> uses an
eventually consistent query, and the metadata for your table might not
be available at that moment. Wait for a few seconds, and then try the
C<DescribeTable> request again.


=head2 DescribeTimeToLive

=over

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::DynamoDB::DescribeTimeToLive>

Returns: a L<Paws::DynamoDB::DescribeTimeToLiveOutput> instance

Gives a description of the Time to Live (TTL) status on the specified
table.


=head2 GetItem

=over

=item Key => L<Paws::DynamoDB::Key>

=item TableName => Str

=item [AttributesToGet => ArrayRef[Str|Undef]]

=item [ConsistentRead => Bool]

=item [ExpressionAttributeNames => L<Paws::DynamoDB::ExpressionAttributeNameMap>]

=item [ProjectionExpression => Str]

=item [ReturnConsumedCapacity => Str]


=back

Each argument is described in detail in: L<Paws::DynamoDB::GetItem>

Returns: a L<Paws::DynamoDB::GetItemOutput> instance

The C<GetItem> operation returns a set of attributes for the item with
the given primary key. If there is no matching item, C<GetItem> does
not return any data and there will be no C<Item> element in the
response.

C<GetItem> provides an eventually consistent read by default. If your
application requires a strongly consistent read, set C<ConsistentRead>
to C<true>. Although a strongly consistent read might take more time
than an eventually consistent read, it always returns the last updated
value.


=head2 ListBackups

=over

=item [BackupType => Str]

=item [ExclusiveStartBackupArn => Str]

=item [Limit => Int]

=item [TableName => Str]

=item [TimeRangeLowerBound => Str]

=item [TimeRangeUpperBound => Str]


=back

Each argument is described in detail in: L<Paws::DynamoDB::ListBackups>

Returns: a L<Paws::DynamoDB::ListBackupsOutput> instance

List backups associated with an AWS account. To list backups for a
given table, specify C<TableName>. C<ListBackups> returns a paginated
list of results with at most 1MB worth of items in a page. You can also
specify a limit for the maximum number of entries to be returned in a
page.

In the request, start time is inclusive but end time is exclusive. Note
that these limits are for the time at which the original backup was
requested.

You can call C<ListBackups> a maximum of 5 times per second.


=head2 ListGlobalTables

=over

=item [ExclusiveStartGlobalTableName => Str]

=item [Limit => Int]

=item [RegionName => Str]


=back

Each argument is described in detail in: L<Paws::DynamoDB::ListGlobalTables>

Returns: a L<Paws::DynamoDB::ListGlobalTablesOutput> instance

Lists all global tables that have a replica in the specified region.


=head2 ListTables

=over

=item [ExclusiveStartTableName => Str]

=item [Limit => Int]


=back

Each argument is described in detail in: L<Paws::DynamoDB::ListTables>

Returns: a L<Paws::DynamoDB::ListTablesOutput> instance

Returns an array of table names associated with the current account and
endpoint. The output from C<ListTables> is paginated, with each page
returning a maximum of 100 table names.


=head2 ListTagsOfResource

=over

=item ResourceArn => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DynamoDB::ListTagsOfResource>

Returns: a L<Paws::DynamoDB::ListTagsOfResourceOutput> instance

List all tags on an Amazon DynamoDB resource. You can call
ListTagsOfResource up to 10 times per second, per account.

For an overview on tagging DynamoDB resources, see Tagging for DynamoDB
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html)
in the I<Amazon DynamoDB Developer Guide>.


=head2 PutItem

=over

=item Item => L<Paws::DynamoDB::PutItemInputAttributeMap>

=item TableName => Str

=item [ConditionalOperator => Str]

=item [ConditionExpression => Str]

=item [Expected => L<Paws::DynamoDB::ExpectedAttributeMap>]

=item [ExpressionAttributeNames => L<Paws::DynamoDB::ExpressionAttributeNameMap>]

=item [ExpressionAttributeValues => L<Paws::DynamoDB::ExpressionAttributeValueMap>]

=item [ReturnConsumedCapacity => Str]

=item [ReturnItemCollectionMetrics => Str]

=item [ReturnValues => Str]


=back

Each argument is described in detail in: L<Paws::DynamoDB::PutItem>

Returns: a L<Paws::DynamoDB::PutItemOutput> instance

Creates a new item, or replaces an old item with a new item. If an item
that has the same primary key as the new item already exists in the
specified table, the new item completely replaces the existing item.
You can perform a conditional put operation (add a new item if one with
the specified primary key doesn't exist), or replace an existing item
if it has certain attribute values. You can return the item's attribute
values in the same operation, using the C<ReturnValues> parameter.

This topic provides general information about the C<PutItem> API.

For information on how to call the C<PutItem> API using the AWS SDK in
specific languages, see the following:

=over

=item *

PutItem in the AWS Command Line Interface
(http://docs.aws.amazon.com/goto/aws-cli/dynamodb-2012-08-10/PutItem)

=item *

PutItem in the AWS SDK for .NET
(http://docs.aws.amazon.com/goto/DotNetSDKV3/dynamodb-2012-08-10/PutItem)

=item *

PutItem in the AWS SDK for C++
(http://docs.aws.amazon.com/goto/SdkForCpp/dynamodb-2012-08-10/PutItem)

=item *

PutItem in the AWS SDK for Go
(http://docs.aws.amazon.com/goto/SdkForGoV1/dynamodb-2012-08-10/PutItem)

=item *

PutItem in the AWS SDK for Java
(http://docs.aws.amazon.com/goto/SdkForJava/dynamodb-2012-08-10/PutItem)

=item *

PutItem in the AWS SDK for JavaScript
(http://docs.aws.amazon.com/goto/AWSJavaScriptSDK/dynamodb-2012-08-10/PutItem)

=item *

PutItem in the AWS SDK for PHP V3
(http://docs.aws.amazon.com/goto/SdkForPHPV3/dynamodb-2012-08-10/PutItem)

=item *

PutItem in the AWS SDK for Python
(http://docs.aws.amazon.com/goto/boto3/dynamodb-2012-08-10/PutItem)

=item *

PutItem in the AWS SDK for Ruby V2
(http://docs.aws.amazon.com/goto/SdkForRubyV2/dynamodb-2012-08-10/PutItem)

=back

When you add an item, the primary key attribute(s) are the only
required attributes. Attribute values cannot be null. String and Binary
type attributes must have lengths greater than zero. Set type
attributes cannot be empty. Requests with empty values will be rejected
with a C<ValidationException> exception.

To prevent a new item from replacing an existing item, use a
conditional expression that contains the C<attribute_not_exists>
function with the name of the attribute being used as the partition key
for the table. Since every record must contain that attribute, the
C<attribute_not_exists> function will only succeed if no matching item
exists.

For more information about C<PutItem>, see Working with Items
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html)
in the I<Amazon DynamoDB Developer Guide>.


=head2 Query

=over

=item TableName => Str

=item [AttributesToGet => ArrayRef[Str|Undef]]

=item [ConditionalOperator => Str]

=item [ConsistentRead => Bool]

=item [ExclusiveStartKey => L<Paws::DynamoDB::Key>]

=item [ExpressionAttributeNames => L<Paws::DynamoDB::ExpressionAttributeNameMap>]

=item [ExpressionAttributeValues => L<Paws::DynamoDB::ExpressionAttributeValueMap>]

=item [FilterExpression => Str]

=item [IndexName => Str]

=item [KeyConditionExpression => Str]

=item [KeyConditions => L<Paws::DynamoDB::KeyConditions>]

=item [Limit => Int]

=item [ProjectionExpression => Str]

=item [QueryFilter => L<Paws::DynamoDB::FilterConditionMap>]

=item [ReturnConsumedCapacity => Str]

=item [ScanIndexForward => Bool]

=item [Select => Str]


=back

Each argument is described in detail in: L<Paws::DynamoDB::Query>

Returns: a L<Paws::DynamoDB::QueryOutput> instance

The C<Query> operation finds items based on primary key values. You can
query any table or secondary index that has a composite primary key (a
partition key and a sort key).

Use the C<KeyConditionExpression> parameter to provide a specific value
for the partition key. The C<Query> operation will return all of the
items from the table or index with that partition key value. You can
optionally narrow the scope of the C<Query> operation by specifying a
sort key value and a comparison operator in C<KeyConditionExpression>.
To further refine the C<Query> results, you can optionally provide a
C<FilterExpression>. A C<FilterExpression> determines which items
within the results should be returned to you. All of the other results
are discarded.

A C<Query> operation always returns a result set. If no matching items
are found, the result set will be empty. Queries that do not return
results consume the minimum number of read capacity units for that type
of read operation.

DynamoDB calculates the number of read capacity units consumed based on
item size, not on the amount of data that is returned to an
application. The number of capacity units consumed will be the same
whether you request all of the attributes (the default behavior) or
just some of them (using a projection expression). The number will also
be the same whether or not you use a C<FilterExpression>.

C<Query> results are always sorted by the sort key value. If the data
type of the sort key is Number, the results are returned in numeric
order; otherwise, the results are returned in order of UTF-8 bytes. By
default, the sort order is ascending. To reverse the order, set the
C<ScanIndexForward> parameter to false.

A single C<Query> operation will read up to the maximum number of items
set (if using the C<Limit> parameter) or a maximum of 1 MB of data and
then apply any filtering to the results using C<FilterExpression>. If
C<LastEvaluatedKey> is present in the response, you will need to
paginate the result set. For more information, see Paginating the
Results
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.html#Query.Pagination)
in the I<Amazon DynamoDB Developer Guide>.

C<FilterExpression> is applied after a C<Query> finishes, but before
the results are returned. A C<FilterExpression> cannot contain
partition key or sort key attributes. You need to specify those
attributes in the C<KeyConditionExpression>.

A C<Query> operation can return an empty result set and a
C<LastEvaluatedKey> if all the items read for the page of results are
filtered out.

You can query a table, a local secondary index, or a global secondary
index. For a query on a table or on a local secondary index, you can
set the C<ConsistentRead> parameter to C<true> and obtain a strongly
consistent result. Global secondary indexes support eventually
consistent reads only, so do not specify C<ConsistentRead> when
querying a global secondary index.


=head2 RestoreTableFromBackup

=over

=item BackupArn => Str

=item TargetTableName => Str


=back

Each argument is described in detail in: L<Paws::DynamoDB::RestoreTableFromBackup>

Returns: a L<Paws::DynamoDB::RestoreTableFromBackupOutput> instance

Creates a new table from an existing backup. Any number of users can
execute up to 4 concurrent restores (any type of restore) in a given
account.

You can call C<RestoreTableFromBackup> at a maximum rate of 10 times
per second.

You must manually set up the following on the restored table:

=over

=item *

Auto scaling policies

=item *

IAM policies

=item *

Cloudwatch metrics and alarms

=item *

Tags

=item *

Stream settings

=item *

Time to Live (TTL) settings

=back



=head2 RestoreTableToPointInTime

=over

=item SourceTableName => Str

=item TargetTableName => Str

=item [RestoreDateTime => Str]

=item [UseLatestRestorableTime => Bool]


=back

Each argument is described in detail in: L<Paws::DynamoDB::RestoreTableToPointInTime>

Returns: a L<Paws::DynamoDB::RestoreTableToPointInTimeOutput> instance

Restores the specified table to the specified point in time within
C<EarliestRestorableDateTime> and C<LatestRestorableDateTime>. You can
restore your table to any point in time during the last 35 days. Any
number of users can execute up to 4 concurrent restores (any type of
restore) in a given account.

When you restore using point in time recovery, DynamoDB restores your
table data to the state based on the selected date and time
(day:hour:minute:second) to a new table.

Along with data, the following are also included on the new restored
table using point in time recovery:

=over

=item *

Global secondary indexes (GSIs)

=item *

Local secondary indexes (LSIs)

=item *

Provisioned read and write capacity

=item *

Encryption settings

All these settings come from the current settings of the source table
at the time of restore.

=back

You must manually set up the following on the restored table:

=over

=item *

Auto scaling policies

=item *

IAM policies

=item *

Cloudwatch metrics and alarms

=item *

Tags

=item *

Stream settings

=item *

Time to Live (TTL) settings

=item *

Point in time recovery settings

=back



=head2 Scan

=over

=item TableName => Str

=item [AttributesToGet => ArrayRef[Str|Undef]]

=item [ConditionalOperator => Str]

=item [ConsistentRead => Bool]

=item [ExclusiveStartKey => L<Paws::DynamoDB::Key>]

=item [ExpressionAttributeNames => L<Paws::DynamoDB::ExpressionAttributeNameMap>]

=item [ExpressionAttributeValues => L<Paws::DynamoDB::ExpressionAttributeValueMap>]

=item [FilterExpression => Str]

=item [IndexName => Str]

=item [Limit => Int]

=item [ProjectionExpression => Str]

=item [ReturnConsumedCapacity => Str]

=item [ScanFilter => L<Paws::DynamoDB::FilterConditionMap>]

=item [Segment => Int]

=item [Select => Str]

=item [TotalSegments => Int]


=back

Each argument is described in detail in: L<Paws::DynamoDB::Scan>

Returns: a L<Paws::DynamoDB::ScanOutput> instance

The C<Scan> operation returns one or more items and item attributes by
accessing every item in a table or a secondary index. To have DynamoDB
return fewer items, you can provide a C<FilterExpression> operation.

If the total number of scanned items exceeds the maximum data set size
limit of 1 MB, the scan stops and results are returned to the user as a
C<LastEvaluatedKey> value to continue the scan in a subsequent
operation. The results also include the number of items exceeding the
limit. A scan can result in no table data meeting the filter criteria.

A single C<Scan> operation will read up to the maximum number of items
set (if using the C<Limit> parameter) or a maximum of 1 MB of data and
then apply any filtering to the results using C<FilterExpression>. If
C<LastEvaluatedKey> is present in the response, you will need to
paginate the result set. For more information, see Paginating the
Results
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Pagination)
in the I<Amazon DynamoDB Developer Guide>.

C<Scan> operations proceed sequentially; however, for faster
performance on a large table or secondary index, applications can
request a parallel C<Scan> operation by providing the C<Segment> and
C<TotalSegments> parameters. For more information, see Parallel Scan
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.ParallelScan)
in the I<Amazon DynamoDB Developer Guide>.

C<Scan> uses eventually consistent reads when accessing the data in a
table; therefore, the result set might not include the changes to data
in the table immediately before the operation began. If you need a
consistent copy of the data, as of the time that the C<Scan> begins,
you can set the C<ConsistentRead> parameter to C<true>.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::DynamoDB::Tag>]


=back

Each argument is described in detail in: L<Paws::DynamoDB::TagResource>

Returns: nothing

Associate a set of tags with an Amazon DynamoDB resource. You can then
activate these user-defined tags so that they appear on the Billing and
Cost Management console for cost allocation tracking. You can call
TagResource up to 5 times per second, per account.

For an overview on tagging DynamoDB resources, see Tagging for DynamoDB
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html)
in the I<Amazon DynamoDB Developer Guide>.


=head2 TransactGetItems

=over

=item TransactItems => ArrayRef[L<Paws::DynamoDB::TransactGetItem>]

=item [ReturnConsumedCapacity => Str]


=back

Each argument is described in detail in: L<Paws::DynamoDB::TransactGetItems>

Returns: a L<Paws::DynamoDB::TransactGetItemsOutput> instance

C<TransactGetItems> is a synchronous operation that atomically
retrieves multiple items from one or more tables (but not from indexes)
in a single account and region. A C<TransactGetItems> call can contain
up to 10 C<TransactGetItem> objects, each of which contains a C<Get>
structure that specifies an item to retrieve from a table in the
account and region. A call to C<TransactGetItems> cannot retrieve items
from tables in more than one AWS account or region.

DynamoDB rejects the entire C<TransactGetItems> request if any of the
following is true:

=over

=item *

A conflicting operation is in the process of updating an item to be
read.

=item *

There is insufficient provisioned capacity for the transaction to be
completed.

=item *

There is a user error, such as an invalid data format.

=back



=head2 TransactWriteItems

=over

=item TransactItems => ArrayRef[L<Paws::DynamoDB::TransactWriteItem>]

=item [ClientRequestToken => Str]

=item [ReturnConsumedCapacity => Str]

=item [ReturnItemCollectionMetrics => Str]


=back

Each argument is described in detail in: L<Paws::DynamoDB::TransactWriteItems>

Returns: a L<Paws::DynamoDB::TransactWriteItemsOutput> instance

C<TransactWriteItems> is a synchronous write operation that groups up
to 10 action requests. These actions can target items in different
tables, but not in different AWS accounts or regions, and no two
actions can target the same item. For example, you cannot both
C<ConditionCheck> and C<Update> the same item.

The actions are completed atomically so that either all of them
succeed, or all of them fail. They are defined by the following
objects:

=over

=item *

C<Put> E<151> Initiates a C<PutItem> operation to write a new item.
This structure specifies the primary key of the item to be written, the
name of the table to write it in, an optional condition expression that
must be satisfied for the write to succeed, a list of the item's
attributes, and a field indicating whether or not to retrieve the
item's attributes if the condition is not met.

=item *

C<Update> E<151> Initiates an C<UpdateItem> operation to update an
existing item. This structure specifies the primary key of the item to
be updated, the name of the table where it resides, an optional
condition expression that must be satisfied for the update to succeed,
an expression that defines one or more attributes to be updated, and a
field indicating whether or not to retrieve the item's attributes if
the condition is not met.

=item *

C<Delete> E<151> Initiates a C<DeleteItem> operation to delete an
existing item. This structure specifies the primary key of the item to
be deleted, the name of the table where it resides, an optional
condition expression that must be satisfied for the deletion to
succeed, and a field indicating whether or not to retrieve the item's
attributes if the condition is not met.

=item *

C<ConditionCheck> E<151> Applies a condition to an item that is not
being modified by the transaction. This structure specifies the primary
key of the item to be checked, the name of the table where it resides,
a condition expression that must be satisfied for the transaction to
succeed, and a field indicating whether or not to retrieve the item's
attributes if the condition is not met.

=back

DynamoDB rejects the entire C<TransactWriteItems> request if any of the
following is true:

=over

=item *

A condition in one of the condition expressions is not met.

=item *

A conflicting operation is in the process of updating the same item.

=item *

There is insufficient provisioned capacity for the transaction to be
completed.

=item *

An item size becomes too large (bigger than 400 KB), a Local Secondary
Index (LSI) becomes too large, or a similar validation error occurs
because of changes made by the transaction.

=item *

There is a user error, such as an invalid data format.

=back



=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DynamoDB::UntagResource>

Returns: nothing

Removes the association of tags from an Amazon DynamoDB resource. You
can call UntagResource up to 5 times per second, per account.

For an overview on tagging DynamoDB resources, see Tagging for DynamoDB
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html)
in the I<Amazon DynamoDB Developer Guide>.


=head2 UpdateContinuousBackups

=over

=item PointInTimeRecoverySpecification => L<Paws::DynamoDB::PointInTimeRecoverySpecification>

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::DynamoDB::UpdateContinuousBackups>

Returns: a L<Paws::DynamoDB::UpdateContinuousBackupsOutput> instance

C<UpdateContinuousBackups> enables or disables point in time recovery
for the specified table. A successful C<UpdateContinuousBackups> call
returns the current C<ContinuousBackupsDescription>. Continuous backups
are C<ENABLED> on all tables at table creation. If point in time
recovery is enabled, C<PointInTimeRecoveryStatus> will be set to
ENABLED.

Once continuous backups and point in time recovery are enabled, you can
restore to any point in time within C<EarliestRestorableDateTime> and
C<LatestRestorableDateTime>.

C<LatestRestorableDateTime> is typically 5 minutes before the current
time. You can restore your table to any point in time during the last
35 days..


=head2 UpdateGlobalTable

=over

=item GlobalTableName => Str

=item ReplicaUpdates => ArrayRef[L<Paws::DynamoDB::ReplicaUpdate>]


=back

Each argument is described in detail in: L<Paws::DynamoDB::UpdateGlobalTable>

Returns: a L<Paws::DynamoDB::UpdateGlobalTableOutput> instance

Adds or removes replicas in the specified global table. The global
table must already exist to be able to use this operation. Any replica
to be added must be empty, must have the same name as the global table,
must have the same key schema, and must have DynamoDB Streams enabled
and must have same provisioned and maximum write capacity units.

Although you can use C<UpdateGlobalTable> to add replicas and remove
replicas in a single request, for simplicity we recommend that you
issue separate requests for adding or removing replicas.

If global secondary indexes are specified, then the following
conditions must also be met:

=over

=item *

The global secondary indexes must have the same name.

=item *

The global secondary indexes must have the same hash key and sort key
(if present).

=item *

The global secondary indexes must have the same provisioned and maximum
write capacity units.

=back



=head2 UpdateGlobalTableSettings

=over

=item GlobalTableName => Str

=item [GlobalTableBillingMode => Str]

=item [GlobalTableGlobalSecondaryIndexSettingsUpdate => ArrayRef[L<Paws::DynamoDB::GlobalTableGlobalSecondaryIndexSettingsUpdate>]]

=item [GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate => L<Paws::DynamoDB::AutoScalingSettingsUpdate>]

=item [GlobalTableProvisionedWriteCapacityUnits => Int]

=item [ReplicaSettingsUpdate => ArrayRef[L<Paws::DynamoDB::ReplicaSettingsUpdate>]]


=back

Each argument is described in detail in: L<Paws::DynamoDB::UpdateGlobalTableSettings>

Returns: a L<Paws::DynamoDB::UpdateGlobalTableSettingsOutput> instance

Updates settings for a global table.


=head2 UpdateItem

=over

=item Key => L<Paws::DynamoDB::Key>

=item TableName => Str

=item [AttributeUpdates => L<Paws::DynamoDB::AttributeUpdates>]

=item [ConditionalOperator => Str]

=item [ConditionExpression => Str]

=item [Expected => L<Paws::DynamoDB::ExpectedAttributeMap>]

=item [ExpressionAttributeNames => L<Paws::DynamoDB::ExpressionAttributeNameMap>]

=item [ExpressionAttributeValues => L<Paws::DynamoDB::ExpressionAttributeValueMap>]

=item [ReturnConsumedCapacity => Str]

=item [ReturnItemCollectionMetrics => Str]

=item [ReturnValues => Str]

=item [UpdateExpression => Str]


=back

Each argument is described in detail in: L<Paws::DynamoDB::UpdateItem>

Returns: a L<Paws::DynamoDB::UpdateItemOutput> instance

Edits an existing item's attributes, or adds a new item to the table if
it does not already exist. You can put, delete, or add attribute
values. You can also perform a conditional update on an existing item
(insert a new attribute name-value pair if it doesn't exist, or replace
an existing name-value pair if it has certain expected attribute
values).

You can also return the item's attribute values in the same
C<UpdateItem> operation using the C<ReturnValues> parameter.


=head2 UpdateTable

=over

=item TableName => Str

=item [AttributeDefinitions => ArrayRef[L<Paws::DynamoDB::AttributeDefinition>]]

=item [BillingMode => Str]

=item [GlobalSecondaryIndexUpdates => ArrayRef[L<Paws::DynamoDB::GlobalSecondaryIndexUpdate>]]

=item [ProvisionedThroughput => L<Paws::DynamoDB::ProvisionedThroughput>]

=item [SSESpecification => L<Paws::DynamoDB::SSESpecification>]

=item [StreamSpecification => L<Paws::DynamoDB::StreamSpecification>]


=back

Each argument is described in detail in: L<Paws::DynamoDB::UpdateTable>

Returns: a L<Paws::DynamoDB::UpdateTableOutput> instance

Modifies the provisioned throughput settings, global secondary indexes,
or DynamoDB Streams settings for a given table.

You can only perform one of the following operations at once:

=over

=item *

Modify the provisioned throughput settings of the table.

=item *

Enable or disable Streams on the table.

=item *

Remove a global secondary index from the table.

=item *

Create a new global secondary index on the table. Once the index begins
backfilling, you can use C<UpdateTable> to perform other operations.

=back

C<UpdateTable> is an asynchronous operation; while it is executing, the
table status changes from C<ACTIVE> to C<UPDATING>. While it is
C<UPDATING>, you cannot issue another C<UpdateTable> request. When the
table returns to the C<ACTIVE> state, the C<UpdateTable> operation is
complete.


=head2 UpdateTimeToLive

=over

=item TableName => Str

=item TimeToLiveSpecification => L<Paws::DynamoDB::TimeToLiveSpecification>


=back

Each argument is described in detail in: L<Paws::DynamoDB::UpdateTimeToLive>

Returns: a L<Paws::DynamoDB::UpdateTimeToLiveOutput> instance

The UpdateTimeToLive method will enable or disable TTL for the
specified table. A successful C<UpdateTimeToLive> call returns the
current C<TimeToLiveSpecification>; it may take up to one hour for the
change to fully process. Any additional C<UpdateTimeToLive> calls for
the same table during this one hour duration result in a
C<ValidationException>.

TTL compares the current time in epoch time format to the time stored
in the TTL attribute of an item. If the epoch time value stored in the
attribute is less than the current time, the item is marked as expired
and subsequently deleted.

The epoch time format is the number of seconds elapsed since 12:00:00
AM January 1st, 1970 UTC.

DynamoDB deletes expired items on a best-effort basis to ensure
availability of throughput for other data operations.

DynamoDB typically deletes expired items within two days of expiration.
The exact duration within which an item gets deleted after expiration
is specific to the nature of the workload. Items that have expired and
not been deleted will still show up in reads, queries, and scans.

As items are deleted, they are removed from any Local Secondary Index
and Global Secondary Index immediately in the same eventually
consistent way as a standard delete operation.

For more information, see Time To Live
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html)
in the Amazon DynamoDB Developer Guide.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllBackups(sub { },[BackupType => Str, ExclusiveStartBackupArn => Str, Limit => Int, TableName => Str, TimeRangeLowerBound => Str, TimeRangeUpperBound => Str])

=head2 ListAllBackups([BackupType => Str, ExclusiveStartBackupArn => Str, Limit => Int, TableName => Str, TimeRangeLowerBound => Str, TimeRangeUpperBound => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - BackupSummaries, passing the object as the first parameter, and the string 'BackupSummaries' as the second parameter 

If not, it will return a a L<Paws::DynamoDB::ListBackupsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTables(sub { },[ExclusiveStartTableName => Str, Limit => Int])

=head2 ListAllTables([ExclusiveStartTableName => Str, Limit => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TableNames, passing the object as the first parameter, and the string 'TableNames' as the second parameter 

If not, it will return a a L<Paws::DynamoDB::ListTablesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsOfResource(sub { },ResourceArn => Str, [NextToken => Str])

=head2 ListAllTagsOfResource(ResourceArn => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::DynamoDB::ListTagsOfResourceOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 QueryAll(sub { },TableName => Str, [AttributesToGet => ArrayRef[Str|Undef], ConditionalOperator => Str, ConsistentRead => Bool, ExclusiveStartKey => L<Paws::DynamoDB::Key>, ExpressionAttributeNames => L<Paws::DynamoDB::ExpressionAttributeNameMap>, ExpressionAttributeValues => L<Paws::DynamoDB::ExpressionAttributeValueMap>, FilterExpression => Str, IndexName => Str, KeyConditionExpression => Str, KeyConditions => L<Paws::DynamoDB::KeyConditions>, Limit => Int, ProjectionExpression => Str, QueryFilter => L<Paws::DynamoDB::FilterConditionMap>, ReturnConsumedCapacity => Str, ScanIndexForward => Bool, Select => Str])

=head2 QueryAll(TableName => Str, [AttributesToGet => ArrayRef[Str|Undef], ConditionalOperator => Str, ConsistentRead => Bool, ExclusiveStartKey => L<Paws::DynamoDB::Key>, ExpressionAttributeNames => L<Paws::DynamoDB::ExpressionAttributeNameMap>, ExpressionAttributeValues => L<Paws::DynamoDB::ExpressionAttributeValueMap>, FilterExpression => Str, IndexName => Str, KeyConditionExpression => Str, KeyConditions => L<Paws::DynamoDB::KeyConditions>, Limit => Int, ProjectionExpression => Str, QueryFilter => L<Paws::DynamoDB::FilterConditionMap>, ReturnConsumedCapacity => Str, ScanIndexForward => Bool, Select => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

 - Count, passing the object as the first parameter, and the string 'Count' as the second parameter 

 - ScannedCount, passing the object as the first parameter, and the string 'ScannedCount' as the second parameter 

If not, it will return a a L<Paws::DynamoDB::QueryOutput> instance with all the C<param>s; andC<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ScanAll(sub { },TableName => Str, [AttributesToGet => ArrayRef[Str|Undef], ConditionalOperator => Str, ConsistentRead => Bool, ExclusiveStartKey => L<Paws::DynamoDB::Key>, ExpressionAttributeNames => L<Paws::DynamoDB::ExpressionAttributeNameMap>, ExpressionAttributeValues => L<Paws::DynamoDB::ExpressionAttributeValueMap>, FilterExpression => Str, IndexName => Str, Limit => Int, ProjectionExpression => Str, ReturnConsumedCapacity => Str, ScanFilter => L<Paws::DynamoDB::FilterConditionMap>, Segment => Int, Select => Str, TotalSegments => Int])

=head2 ScanAll(TableName => Str, [AttributesToGet => ArrayRef[Str|Undef], ConditionalOperator => Str, ConsistentRead => Bool, ExclusiveStartKey => L<Paws::DynamoDB::Key>, ExpressionAttributeNames => L<Paws::DynamoDB::ExpressionAttributeNameMap>, ExpressionAttributeValues => L<Paws::DynamoDB::ExpressionAttributeValueMap>, FilterExpression => Str, IndexName => Str, Limit => Int, ProjectionExpression => Str, ReturnConsumedCapacity => Str, ScanFilter => L<Paws::DynamoDB::FilterConditionMap>, Segment => Int, Select => Str, TotalSegments => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

 - Count, passing the object as the first parameter, and the string 'Count' as the second parameter 

 - ScannedCount, passing the object as the first parameter, and the string 'ScannedCount' as the second parameter 

If not, it will return a a L<Paws::DynamoDB::ScanOutput> instance with all the C<param>s; andC<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

