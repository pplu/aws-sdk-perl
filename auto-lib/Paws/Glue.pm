package Paws::Glue;
  use Moose;
  sub service { 'glue' }
  sub version { '2017-03-31' }
  sub target_prefix { 'AWSGlue' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub BatchCreatePartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchCreatePartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchDeleteConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeletePartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchDeletePartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchDeleteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetPartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetPartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDevEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateDevEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreatePartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateScript {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateScript', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserDefinedFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateUserDefinedFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDevEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteDevEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeletePartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserDefinedFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteUserDefinedFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCatalogImportStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetCatalogImportStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetClassifiers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetClassifiers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCrawlerMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetCrawlerMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCrawlers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetCrawlers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDatabases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDatabases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataflowGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDataflowGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDevEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDevEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetJobRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetPartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPartitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetPartitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTableVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTriggers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTriggers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserDefinedFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetUserDefinedFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserDefinedFunctions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetUserDefinedFunctions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportCatalogToGlue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ImportCatalogToGlue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetJobBookmark {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ResetJobBookmark', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCrawlerSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartCrawlerSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StopCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopCrawlerSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StopCrawlerSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StopTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCrawlerSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateCrawlerSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDevEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateDevEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdatePartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserDefinedFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateUserDefinedFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchCreatePartition BatchDeleteConnection BatchDeletePartition BatchDeleteTable BatchGetPartition CreateClassifier CreateConnection CreateCrawler CreateDatabase CreateDevEndpoint CreateJob CreatePartition CreateScript CreateTable CreateTrigger CreateUserDefinedFunction DeleteClassifier DeleteConnection DeleteCrawler DeleteDatabase DeleteDevEndpoint DeleteJob DeletePartition DeleteTable DeleteTrigger DeleteUserDefinedFunction GetCatalogImportStatus GetClassifier GetClassifiers GetConnection GetConnections GetCrawler GetCrawlerMetrics GetCrawlers GetDatabase GetDatabases GetDataflowGraph GetDevEndpoint GetDevEndpoints GetJob GetJobRun GetJobRuns GetJobs GetMapping GetPartition GetPartitions GetPlan GetTable GetTables GetTableVersions GetTrigger GetTriggers GetUserDefinedFunction GetUserDefinedFunctions ImportCatalogToGlue ResetJobBookmark StartCrawler StartCrawlerSchedule StartJobRun StartTrigger StopCrawler StopCrawlerSchedule StopTrigger UpdateClassifier UpdateConnection UpdateCrawler UpdateCrawlerSchedule UpdateDatabase UpdateDevEndpoint UpdateJob UpdatePartition UpdateTable UpdateTrigger UpdateUserDefinedFunction / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue - Perl Interface to AWS AWS Glue

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Glue');
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

Defines service operations used by the GlueFrontendService

=head1 METHODS

=head2 BatchCreatePartition(DatabaseName => Str, PartitionInputList => ArrayRef[L<Paws::Glue::PartitionInput>], TableName => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::BatchCreatePartition>

Returns: a L<Paws::Glue::BatchCreatePartitionResponse> instance

  Creates one or more partitions in a batch operation.


=head2 BatchDeleteConnection(ConnectionNameList => ArrayRef[Str|Undef], [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::BatchDeleteConnection>

Returns: a L<Paws::Glue::BatchDeleteConnectionResponse> instance

  Deletes a list of connection definitions from the Data Catalog.


=head2 BatchDeletePartition(DatabaseName => Str, PartitionsToDelete => ArrayRef[L<Paws::Glue::PartitionValueList>], TableName => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::BatchDeletePartition>

Returns: a L<Paws::Glue::BatchDeletePartitionResponse> instance

  Deletes one or more partitions in a batch operation.


=head2 BatchDeleteTable(DatabaseName => Str, TablesToDelete => ArrayRef[Str|Undef], [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::BatchDeleteTable>

Returns: a L<Paws::Glue::BatchDeleteTableResponse> instance

  Deletes multiple tables at once.


=head2 BatchGetPartition(DatabaseName => Str, PartitionsToGet => ArrayRef[L<Paws::Glue::PartitionValueList>], TableName => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::BatchGetPartition>

Returns: a L<Paws::Glue::BatchGetPartitionResponse> instance

  Retrieves partitions in a batch request.


=head2 CreateClassifier([GrokClassifier => L<Paws::Glue::CreateGrokClassifierRequest>])

Each argument is described in detail in: L<Paws::Glue::CreateClassifier>

Returns: a L<Paws::Glue::CreateClassifierResponse> instance

  Creates a C<Classifier> in the user's account.


=head2 CreateConnection(ConnectionInput => L<Paws::Glue::ConnectionInput>, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::CreateConnection>

Returns: a L<Paws::Glue::CreateConnectionResponse> instance

  Creates a connection definition in the Data Catalog.


=head2 CreateCrawler(DatabaseName => Str, Name => Str, Role => Str, Targets => L<Paws::Glue::CrawlerTargets>, [Classifiers => ArrayRef[Str|Undef], Description => Str, Schedule => Str, SchemaChangePolicy => L<Paws::Glue::SchemaChangePolicy>, TablePrefix => Str])

Each argument is described in detail in: L<Paws::Glue::CreateCrawler>

Returns: a L<Paws::Glue::CreateCrawlerResponse> instance

  Creates a new C<Crawler> with specified targets, role, configuration,
and optional schedule. At least one crawl target must be specified, in
either the I<s3Targets> or the I<jdbcTargets> field.


=head2 CreateDatabase(DatabaseInput => L<Paws::Glue::DatabaseInput>, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::CreateDatabase>

Returns: a L<Paws::Glue::CreateDatabaseResponse> instance

  Creates a new database in a Data Catalog.


=head2 CreateDevEndpoint(EndpointName => Str, RoleArn => Str, SecurityGroupIds => ArrayRef[Str|Undef], SubnetId => Str, [ExtraJarsS3Path => Str, ExtraPythonLibsS3Path => Str, NumberOfNodes => Int, PublicKey => Str])

Each argument is described in detail in: L<Paws::Glue::CreateDevEndpoint>

Returns: a L<Paws::Glue::CreateDevEndpointResponse> instance

  Creates a new DevEndpoint.


=head2 CreateJob(Command => L<Paws::Glue::JobCommand>, Name => Str, Role => Str, [AllocatedCapacity => Int, Connections => L<Paws::Glue::ConnectionsList>, DefaultArguments => L<Paws::Glue::GenericMap>, Description => Str, ExecutionProperty => L<Paws::Glue::ExecutionProperty>, LogUri => Str, MaxRetries => Int])

Each argument is described in detail in: L<Paws::Glue::CreateJob>

Returns: a L<Paws::Glue::CreateJobResponse> instance

  Creates a new job.


=head2 CreatePartition(DatabaseName => Str, PartitionInput => L<Paws::Glue::PartitionInput>, TableName => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::CreatePartition>

Returns: a L<Paws::Glue::CreatePartitionResponse> instance

  Creates a new partition.


=head2 CreateScript([DagEdges => ArrayRef[L<Paws::Glue::CodeGenEdge>], DagNodes => ArrayRef[L<Paws::Glue::CodeGenNode>]])

Each argument is described in detail in: L<Paws::Glue::CreateScript>

Returns: a L<Paws::Glue::CreateScriptResponse> instance

  Transforms a directed acyclic graph (DAG) into a Python script.


=head2 CreateTable(DatabaseName => Str, TableInput => L<Paws::Glue::TableInput>, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::CreateTable>

Returns: a L<Paws::Glue::CreateTableResponse> instance

  Creates a new table definition in the Data Catalog.


=head2 CreateTrigger(Actions => ArrayRef[L<Paws::Glue::Action>], Name => Str, Type => Str, [Description => Str, Predicate => L<Paws::Glue::Predicate>, Schedule => Str])

Each argument is described in detail in: L<Paws::Glue::CreateTrigger>

Returns: a L<Paws::Glue::CreateTriggerResponse> instance

  Creates a new trigger.


=head2 CreateUserDefinedFunction(DatabaseName => Str, FunctionInput => L<Paws::Glue::UserDefinedFunctionInput>, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::CreateUserDefinedFunction>

Returns: a L<Paws::Glue::CreateUserDefinedFunctionResponse> instance

  Creates a new function definition in the Data Catalog.


=head2 DeleteClassifier(Name => Str)

Each argument is described in detail in: L<Paws::Glue::DeleteClassifier>

Returns: a L<Paws::Glue::DeleteClassifierResponse> instance

  Removes a C<Classifier> from the metadata store.


=head2 DeleteConnection(ConnectionName => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::DeleteConnection>

Returns: a L<Paws::Glue::DeleteConnectionResponse> instance

  Deletes a connection from the Data Catalog.


=head2 DeleteCrawler(Name => Str)

Each argument is described in detail in: L<Paws::Glue::DeleteCrawler>

Returns: a L<Paws::Glue::DeleteCrawlerResponse> instance

  Removes a specified C<Crawler> from the metadata store, unless the
C<Crawler> state is C<RUNNING>.


=head2 DeleteDatabase(Name => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::DeleteDatabase>

Returns: a L<Paws::Glue::DeleteDatabaseResponse> instance

  Removes a specified Database from a Data Catalog.


=head2 DeleteDevEndpoint(EndpointName => Str)

Each argument is described in detail in: L<Paws::Glue::DeleteDevEndpoint>

Returns: a L<Paws::Glue::DeleteDevEndpointResponse> instance

  Deletes a specified DevEndpoint.


=head2 DeleteJob(JobName => Str)

Each argument is described in detail in: L<Paws::Glue::DeleteJob>

Returns: a L<Paws::Glue::DeleteJobResponse> instance

  Deletes a specified job.


=head2 DeletePartition(DatabaseName => Str, PartitionValues => ArrayRef[Str|Undef], TableName => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::DeletePartition>

Returns: a L<Paws::Glue::DeletePartitionResponse> instance

  Deletes a specified partition.


=head2 DeleteTable(DatabaseName => Str, Name => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::DeleteTable>

Returns: a L<Paws::Glue::DeleteTableResponse> instance

  Removes a table definition from the Data Catalog.


=head2 DeleteTrigger(Name => Str)

Each argument is described in detail in: L<Paws::Glue::DeleteTrigger>

Returns: a L<Paws::Glue::DeleteTriggerResponse> instance

  Deletes a specified trigger.


=head2 DeleteUserDefinedFunction(DatabaseName => Str, FunctionName => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::DeleteUserDefinedFunction>

Returns: a L<Paws::Glue::DeleteUserDefinedFunctionResponse> instance

  Deletes an existing function definition from the Data Catalog.


=head2 GetCatalogImportStatus([CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::GetCatalogImportStatus>

Returns: a L<Paws::Glue::GetCatalogImportStatusResponse> instance

  Retrieves the status of a migration operation.


=head2 GetClassifier(Name => Str)

Each argument is described in detail in: L<Paws::Glue::GetClassifier>

Returns: a L<Paws::Glue::GetClassifierResponse> instance

  Retrieve a C<Classifier> by name.


=head2 GetClassifiers([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Glue::GetClassifiers>

Returns: a L<Paws::Glue::GetClassifiersResponse> instance

  Lists all Classifier objects in the metadata store.


=head2 GetConnection(Name => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::GetConnection>

Returns: a L<Paws::Glue::GetConnectionResponse> instance

  Retrieves a connection definition from the Data Catalog.


=head2 GetConnections([CatalogId => Str, Filter => L<Paws::Glue::GetConnectionsFilter>, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Glue::GetConnections>

Returns: a L<Paws::Glue::GetConnectionsResponse> instance

  Retrieves a list of connection definitions from the Data Catalog.


=head2 GetCrawler(Name => Str)

Each argument is described in detail in: L<Paws::Glue::GetCrawler>

Returns: a L<Paws::Glue::GetCrawlerResponse> instance

  Retrieves metadata for a specified C<Crawler>.


=head2 GetCrawlerMetrics([CrawlerNameList => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Glue::GetCrawlerMetrics>

Returns: a L<Paws::Glue::GetCrawlerMetricsResponse> instance

  Retrieves metrics about specified crawlers.


=head2 GetCrawlers([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Glue::GetCrawlers>

Returns: a L<Paws::Glue::GetCrawlersResponse> instance

  Retrieves metadata for all C<Crawlers> defined in the customer account.


=head2 GetDatabase(Name => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::GetDatabase>

Returns: a L<Paws::Glue::GetDatabaseResponse> instance

  Retrieves the definition of a specified database.


=head2 GetDatabases([CatalogId => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Glue::GetDatabases>

Returns: a L<Paws::Glue::GetDatabasesResponse> instance

  Retrieves all Databases defined in a given Data Catalog.


=head2 GetDataflowGraph([PythonScript => Str])

Each argument is described in detail in: L<Paws::Glue::GetDataflowGraph>

Returns: a L<Paws::Glue::GetDataflowGraphResponse> instance

  Transforms a Python script into a directed acyclic graph (DAG).


=head2 GetDevEndpoint(EndpointName => Str)

Each argument is described in detail in: L<Paws::Glue::GetDevEndpoint>

Returns: a L<Paws::Glue::GetDevEndpointResponse> instance

  Retrieves information about a specified DevEndpoint.


=head2 GetDevEndpoints([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Glue::GetDevEndpoints>

Returns: a L<Paws::Glue::GetDevEndpointsResponse> instance

  Retrieves all the DevEndpoints in this AWS account.


=head2 GetJob(JobName => Str)

Each argument is described in detail in: L<Paws::Glue::GetJob>

Returns: a L<Paws::Glue::GetJobResponse> instance

  Retrieves an existing job definition.


=head2 GetJobRun(JobName => Str, RunId => Str, [PredecessorsIncluded => Bool])

Each argument is described in detail in: L<Paws::Glue::GetJobRun>

Returns: a L<Paws::Glue::GetJobRunResponse> instance

  Retrieves the metadata for a given job run.


=head2 GetJobRuns(JobName => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Glue::GetJobRuns>

Returns: a L<Paws::Glue::GetJobRunsResponse> instance

  Retrieves metadata for all runs of a given job.


=head2 GetJobs([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Glue::GetJobs>

Returns: a L<Paws::Glue::GetJobsResponse> instance

  Retrieves all current jobs.


=head2 GetMapping(Source => L<Paws::Glue::CatalogEntry>, [Location => L<Paws::Glue::Location>, Sinks => ArrayRef[L<Paws::Glue::CatalogEntry>]])

Each argument is described in detail in: L<Paws::Glue::GetMapping>

Returns: a L<Paws::Glue::GetMappingResponse> instance

  Creates mappings.


=head2 GetPartition(DatabaseName => Str, PartitionValues => ArrayRef[Str|Undef], TableName => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::GetPartition>

Returns: a L<Paws::Glue::GetPartitionResponse> instance

  Retrieves information about a specified partition.


=head2 GetPartitions(DatabaseName => Str, TableName => Str, [CatalogId => Str, Expression => Str, MaxResults => Int, NextToken => Str, Segment => L<Paws::Glue::Segment>])

Each argument is described in detail in: L<Paws::Glue::GetPartitions>

Returns: a L<Paws::Glue::GetPartitionsResponse> instance

  Retrieves information about the partitions in a table.


=head2 GetPlan(Mapping => ArrayRef[L<Paws::Glue::MappingEntry>], Source => L<Paws::Glue::CatalogEntry>, [Location => L<Paws::Glue::Location>, Sinks => ArrayRef[L<Paws::Glue::CatalogEntry>]])

Each argument is described in detail in: L<Paws::Glue::GetPlan>

Returns: a L<Paws::Glue::GetPlanResponse> instance

  Gets a Python script to perform a specified mapping.


=head2 GetTable(DatabaseName => Str, Name => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::GetTable>

Returns: a L<Paws::Glue::GetTableResponse> instance

  Retrieves the C<Table> definition in a Data Catalog for a specified
table.


=head2 GetTables(DatabaseName => Str, [CatalogId => Str, Expression => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Glue::GetTables>

Returns: a L<Paws::Glue::GetTablesResponse> instance

  Retrieves the definitions of some or all of the tables in a given
C<Database>.


=head2 GetTableVersions(DatabaseName => Str, TableName => Str, [CatalogId => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Glue::GetTableVersions>

Returns: a L<Paws::Glue::GetTableVersionsResponse> instance

  Retrieves a list of strings that identify available versions of a
specified table.


=head2 GetTrigger(Name => Str)

Each argument is described in detail in: L<Paws::Glue::GetTrigger>

Returns: a L<Paws::Glue::GetTriggerResponse> instance

  Retrieves the definition of a trigger.


=head2 GetTriggers([DependentJobName => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Glue::GetTriggers>

Returns: a L<Paws::Glue::GetTriggersResponse> instance

  Gets all the triggers associated with a job.


=head2 GetUserDefinedFunction(DatabaseName => Str, FunctionName => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::GetUserDefinedFunction>

Returns: a L<Paws::Glue::GetUserDefinedFunctionResponse> instance

  Retrieves a specified function definition from the Data Catalog.


=head2 GetUserDefinedFunctions(DatabaseName => Str, Pattern => Str, [CatalogId => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Glue::GetUserDefinedFunctions>

Returns: a L<Paws::Glue::GetUserDefinedFunctionsResponse> instance

  Retrieves a multiple function definitions from the Data Catalog.


=head2 ImportCatalogToGlue([CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::ImportCatalogToGlue>

Returns: a L<Paws::Glue::ImportCatalogToGlueResponse> instance

  Imports an existing Athena Data Catalog to AWS Glue


=head2 ResetJobBookmark(JobName => Str)

Each argument is described in detail in: L<Paws::Glue::ResetJobBookmark>

Returns: a L<Paws::Glue::ResetJobBookmarkResponse> instance

  Resets a bookmark entry.


=head2 StartCrawler(Name => Str)

Each argument is described in detail in: L<Paws::Glue::StartCrawler>

Returns: a L<Paws::Glue::StartCrawlerResponse> instance

  Starts a crawl using the specified C<Crawler>, regardless of what is
scheduled. If the C<Crawler> is already running, does nothing.


=head2 StartCrawlerSchedule(CrawlerName => Str)

Each argument is described in detail in: L<Paws::Glue::StartCrawlerSchedule>

Returns: a L<Paws::Glue::StartCrawlerScheduleResponse> instance

  Changes the schedule state of the specified crawler to C<SCHEDULED>,
unless the crawler is already running or the schedule state is already
C<SCHEDULED>.


=head2 StartJobRun(JobName => Str, [AllocatedCapacity => Int, Arguments => L<Paws::Glue::GenericMap>, JobRunId => Str])

Each argument is described in detail in: L<Paws::Glue::StartJobRun>

Returns: a L<Paws::Glue::StartJobRunResponse> instance

  Runs a job.


=head2 StartTrigger(Name => Str)

Each argument is described in detail in: L<Paws::Glue::StartTrigger>

Returns: a L<Paws::Glue::StartTriggerResponse> instance

  Starts an existing trigger.


=head2 StopCrawler(Name => Str)

Each argument is described in detail in: L<Paws::Glue::StopCrawler>

Returns: a L<Paws::Glue::StopCrawlerResponse> instance

  If the specified C<Crawler> is running, stops the crawl.


=head2 StopCrawlerSchedule(CrawlerName => Str)

Each argument is described in detail in: L<Paws::Glue::StopCrawlerSchedule>

Returns: a L<Paws::Glue::StopCrawlerScheduleResponse> instance

  Sets the schedule state of the specified crawler to C<NOT_SCHEDULED>,
but does not stop the crawler if it is already running.


=head2 StopTrigger(Name => Str)

Each argument is described in detail in: L<Paws::Glue::StopTrigger>

Returns: a L<Paws::Glue::StopTriggerResponse> instance

  Stops a specified trigger.


=head2 UpdateClassifier([GrokClassifier => L<Paws::Glue::UpdateGrokClassifierRequest>])

Each argument is described in detail in: L<Paws::Glue::UpdateClassifier>

Returns: a L<Paws::Glue::UpdateClassifierResponse> instance

  Modifies an existing C<Classifier>.


=head2 UpdateConnection(ConnectionInput => L<Paws::Glue::ConnectionInput>, Name => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::UpdateConnection>

Returns: a L<Paws::Glue::UpdateConnectionResponse> instance

  Updates a connection definition in the Data Catalog.


=head2 UpdateCrawler(Name => Str, [Classifiers => ArrayRef[Str|Undef], DatabaseName => Str, Description => Str, Role => Str, Schedule => Str, SchemaChangePolicy => L<Paws::Glue::SchemaChangePolicy>, TablePrefix => Str, Targets => L<Paws::Glue::CrawlerTargets>])

Each argument is described in detail in: L<Paws::Glue::UpdateCrawler>

Returns: a L<Paws::Glue::UpdateCrawlerResponse> instance

  Updates a C<Crawler>. If a C<Crawler> is running, you must stop it
using C<StopCrawler> before updating it.


=head2 UpdateCrawlerSchedule(CrawlerName => Str, [Schedule => Str])

Each argument is described in detail in: L<Paws::Glue::UpdateCrawlerSchedule>

Returns: a L<Paws::Glue::UpdateCrawlerScheduleResponse> instance

  Updates the schedule of a crawler using a Cron expression.


=head2 UpdateDatabase(DatabaseInput => L<Paws::Glue::DatabaseInput>, Name => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::UpdateDatabase>

Returns: a L<Paws::Glue::UpdateDatabaseResponse> instance

  Updates an existing database definition in a Data Catalog.


=head2 UpdateDevEndpoint(EndpointName => Str, [CustomLibraries => L<Paws::Glue::DevEndpointCustomLibraries>, PublicKey => Str])

Each argument is described in detail in: L<Paws::Glue::UpdateDevEndpoint>

Returns: a L<Paws::Glue::UpdateDevEndpointResponse> instance

  Updates a specified DevEndpoint.


=head2 UpdateJob(JobName => Str, JobUpdate => L<Paws::Glue::JobUpdate>)

Each argument is described in detail in: L<Paws::Glue::UpdateJob>

Returns: a L<Paws::Glue::UpdateJobResponse> instance

  Updates an existing job definition.


=head2 UpdatePartition(DatabaseName => Str, PartitionInput => L<Paws::Glue::PartitionInput>, PartitionValueList => ArrayRef[Str|Undef], TableName => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::UpdatePartition>

Returns: a L<Paws::Glue::UpdatePartitionResponse> instance

  Updates a partition.


=head2 UpdateTable(DatabaseName => Str, TableInput => L<Paws::Glue::TableInput>, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::UpdateTable>

Returns: a L<Paws::Glue::UpdateTableResponse> instance

  Updates a metadata table in the Data Catalog.


=head2 UpdateTrigger(Name => Str, TriggerUpdate => L<Paws::Glue::TriggerUpdate>)

Each argument is described in detail in: L<Paws::Glue::UpdateTrigger>

Returns: a L<Paws::Glue::UpdateTriggerResponse> instance

  Updates a trigger definition.


=head2 UpdateUserDefinedFunction(DatabaseName => Str, FunctionInput => L<Paws::Glue::UserDefinedFunctionInput>, FunctionName => Str, [CatalogId => Str])

Each argument is described in detail in: L<Paws::Glue::UpdateUserDefinedFunction>

Returns: a L<Paws::Glue::UpdateUserDefinedFunctionResponse> instance

  Updates an existing function definition in the Data Catalog.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

