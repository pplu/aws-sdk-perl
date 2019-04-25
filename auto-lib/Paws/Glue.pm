package Paws::Glue;
  use Moose;
  sub service { 'glue' }
  sub signing_name { 'glue' }
  sub version { '2017-03-31' }
  sub target_prefix { 'AWSGlue' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
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
  sub BatchDeleteTableVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchDeleteTableVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetPartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetPartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchStopJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchStopJobRun', @_);
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
  sub CreateSecurityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateSecurityConfiguration', @_);
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
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSecurityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteSecurityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTableVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteTableVersion', @_);
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
  sub GetDataCatalogEncryptionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDataCatalogEncryptionSettings', @_);
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
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSecurityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetSecurityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSecurityConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetSecurityConfigurations', @_);
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
  sub GetTableVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTableVersion', @_);
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
  sub PutDataCatalogEncryptionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::PutDataCatalogEncryptionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::PutResourcePolicy', @_);
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
  
  sub GetAllClassifiers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetClassifiers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetClassifiers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Classifiers }, @{ $next_result->Classifiers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Classifiers') foreach (@{ $result->Classifiers });
        $result = $self->GetClassifiers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Classifiers') foreach (@{ $result->Classifiers });
    }

    return undef
  }
  sub GetAllConnections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetConnections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetConnections(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConnectionList }, @{ $next_result->ConnectionList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConnectionList') foreach (@{ $result->ConnectionList });
        $result = $self->GetConnections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConnectionList') foreach (@{ $result->ConnectionList });
    }

    return undef
  }
  sub GetAllCrawlerMetrics {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCrawlerMetrics(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetCrawlerMetrics(@_, NextToken => $next_result->NextToken);
        push @{ $result->CrawlerMetricsList }, @{ $next_result->CrawlerMetricsList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CrawlerMetricsList') foreach (@{ $result->CrawlerMetricsList });
        $result = $self->GetCrawlerMetrics(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CrawlerMetricsList') foreach (@{ $result->CrawlerMetricsList });
    }

    return undef
  }
  sub GetAllCrawlers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCrawlers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetCrawlers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Crawlers }, @{ $next_result->Crawlers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Crawlers') foreach (@{ $result->Crawlers });
        $result = $self->GetCrawlers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Crawlers') foreach (@{ $result->Crawlers });
    }

    return undef
  }
  sub GetAllDatabases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDatabases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetDatabases(@_, NextToken => $next_result->NextToken);
        push @{ $result->DatabaseList }, @{ $next_result->DatabaseList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DatabaseList') foreach (@{ $result->DatabaseList });
        $result = $self->GetDatabases(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DatabaseList') foreach (@{ $result->DatabaseList });
    }

    return undef
  }
  sub GetAllDevEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDevEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetDevEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->DevEndpoints }, @{ $next_result->DevEndpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DevEndpoints') foreach (@{ $result->DevEndpoints });
        $result = $self->GetDevEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DevEndpoints') foreach (@{ $result->DevEndpoints });
    }

    return undef
  }
  sub GetAllJobRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetJobRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetJobRuns(@_, NextToken => $next_result->NextToken);
        push @{ $result->JobRuns }, @{ $next_result->JobRuns };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'JobRuns') foreach (@{ $result->JobRuns });
        $result = $self->GetJobRuns(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'JobRuns') foreach (@{ $result->JobRuns });
    }

    return undef
  }
  sub GetAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->Jobs }, @{ $next_result->Jobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Jobs') foreach (@{ $result->Jobs });
        $result = $self->GetJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Jobs') foreach (@{ $result->Jobs });
    }

    return undef
  }
  sub GetAllPartitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetPartitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetPartitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Partitions }, @{ $next_result->Partitions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Partitions') foreach (@{ $result->Partitions });
        $result = $self->GetPartitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Partitions') foreach (@{ $result->Partitions });
    }

    return undef
  }
  sub GetAllSecurityConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetSecurityConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetSecurityConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecurityConfigurations }, @{ $next_result->SecurityConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecurityConfigurations') foreach (@{ $result->SecurityConfigurations });
        $result = $self->GetSecurityConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecurityConfigurations') foreach (@{ $result->SecurityConfigurations });
    }

    return undef
  }
  sub GetAllTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTables(@_, NextToken => $next_result->NextToken);
        push @{ $result->TableList }, @{ $next_result->TableList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TableList') foreach (@{ $result->TableList });
        $result = $self->GetTables(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TableList') foreach (@{ $result->TableList });
    }

    return undef
  }
  sub GetAllTableVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTableVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTableVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->TableVersions }, @{ $next_result->TableVersions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TableVersions') foreach (@{ $result->TableVersions });
        $result = $self->GetTableVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TableVersions') foreach (@{ $result->TableVersions });
    }

    return undef
  }
  sub GetAllTriggers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTriggers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTriggers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Triggers }, @{ $next_result->Triggers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Triggers') foreach (@{ $result->Triggers });
        $result = $self->GetTriggers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Triggers') foreach (@{ $result->Triggers });
    }

    return undef
  }
  sub GetAllUserDefinedFunctions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetUserDefinedFunctions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetUserDefinedFunctions(@_, NextToken => $next_result->NextToken);
        push @{ $result->UserDefinedFunctions }, @{ $next_result->UserDefinedFunctions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserDefinedFunctions') foreach (@{ $result->UserDefinedFunctions });
        $result = $self->GetUserDefinedFunctions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserDefinedFunctions') foreach (@{ $result->UserDefinedFunctions });
    }

    return undef
  }


  sub operations { qw/BatchCreatePartition BatchDeleteConnection BatchDeletePartition BatchDeleteTable BatchDeleteTableVersion BatchGetPartition BatchStopJobRun CreateClassifier CreateConnection CreateCrawler CreateDatabase CreateDevEndpoint CreateJob CreatePartition CreateScript CreateSecurityConfiguration CreateTable CreateTrigger CreateUserDefinedFunction DeleteClassifier DeleteConnection DeleteCrawler DeleteDatabase DeleteDevEndpoint DeleteJob DeletePartition DeleteResourcePolicy DeleteSecurityConfiguration DeleteTable DeleteTableVersion DeleteTrigger DeleteUserDefinedFunction GetCatalogImportStatus GetClassifier GetClassifiers GetConnection GetConnections GetCrawler GetCrawlerMetrics GetCrawlers GetDatabase GetDatabases GetDataCatalogEncryptionSettings GetDataflowGraph GetDevEndpoint GetDevEndpoints GetJob GetJobRun GetJobRuns GetJobs GetMapping GetPartition GetPartitions GetPlan GetResourcePolicy GetSecurityConfiguration GetSecurityConfigurations GetTable GetTables GetTableVersion GetTableVersions GetTrigger GetTriggers GetUserDefinedFunction GetUserDefinedFunctions ImportCatalogToGlue PutDataCatalogEncryptionSettings PutResourcePolicy ResetJobBookmark StartCrawler StartCrawlerSchedule StartJobRun StartTrigger StopCrawler StopCrawlerSchedule StopTrigger UpdateClassifier UpdateConnection UpdateCrawler UpdateCrawlerSchedule UpdateDatabase UpdateDevEndpoint UpdateJob UpdatePartition UpdateTable UpdateTrigger UpdateUserDefinedFunction / }

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

AWS Glue

Defines the public endpoint for the AWS Glue service.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31>


=head1 METHODS

=head2 BatchCreatePartition

=over

=item DatabaseName => Str

=item PartitionInputList => ArrayRef[L<Paws::Glue::PartitionInput>]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchCreatePartition>

Returns: a L<Paws::Glue::BatchCreatePartitionResponse> instance

Creates one or more partitions in a batch operation.


=head2 BatchDeleteConnection

=over

=item ConnectionNameList => ArrayRef[Str|Undef]

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchDeleteConnection>

Returns: a L<Paws::Glue::BatchDeleteConnectionResponse> instance

Deletes a list of connection definitions from the Data Catalog.


=head2 BatchDeletePartition

=over

=item DatabaseName => Str

=item PartitionsToDelete => ArrayRef[L<Paws::Glue::PartitionValueList>]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchDeletePartition>

Returns: a L<Paws::Glue::BatchDeletePartitionResponse> instance

Deletes one or more partitions in a batch operation.


=head2 BatchDeleteTable

=over

=item DatabaseName => Str

=item TablesToDelete => ArrayRef[Str|Undef]

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchDeleteTable>

Returns: a L<Paws::Glue::BatchDeleteTableResponse> instance

Deletes multiple tables at once.

After completing this operation, you will no longer have access to the
table versions and partitions that belong to the deleted table. AWS
Glue deletes these "orphaned" resources asynchronously in a timely
manner, at the discretion of the service.

To ensure immediate deletion of all related resources, before calling
C<BatchDeleteTable>, use C<DeleteTableVersion> or
C<BatchDeleteTableVersion>, and C<DeletePartition> or
C<BatchDeletePartition>, to delete any resources that belong to the
table.


=head2 BatchDeleteTableVersion

=over

=item DatabaseName => Str

=item TableName => Str

=item VersionIds => ArrayRef[Str|Undef]

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchDeleteTableVersion>

Returns: a L<Paws::Glue::BatchDeleteTableVersionResponse> instance

Deletes a specified batch of versions of a table.


=head2 BatchGetPartition

=over

=item DatabaseName => Str

=item PartitionsToGet => ArrayRef[L<Paws::Glue::PartitionValueList>]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchGetPartition>

Returns: a L<Paws::Glue::BatchGetPartitionResponse> instance

Retrieves partitions in a batch request.


=head2 BatchStopJobRun

=over

=item JobName => Str

=item JobRunIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Glue::BatchStopJobRun>

Returns: a L<Paws::Glue::BatchStopJobRunResponse> instance

Stops one or more job runs for a specified job definition.


=head2 CreateClassifier

=over

=item [GrokClassifier => L<Paws::Glue::CreateGrokClassifierRequest>]

=item [JsonClassifier => L<Paws::Glue::CreateJsonClassifierRequest>]

=item [XMLClassifier => L<Paws::Glue::CreateXMLClassifierRequest>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateClassifier>

Returns: a L<Paws::Glue::CreateClassifierResponse> instance

Creates a classifier in the user's account. This may be a
C<GrokClassifier>, an C<XMLClassifier>, or abbrev C<JsonClassifier>,
depending on which field of the request is present.


=head2 CreateConnection

=over

=item ConnectionInput => L<Paws::Glue::ConnectionInput>

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateConnection>

Returns: a L<Paws::Glue::CreateConnectionResponse> instance

Creates a connection definition in the Data Catalog.


=head2 CreateCrawler

=over

=item DatabaseName => Str

=item Name => Str

=item Role => Str

=item Targets => L<Paws::Glue::CrawlerTargets>

=item [Classifiers => ArrayRef[Str|Undef]]

=item [Configuration => Str]

=item [CrawlerSecurityConfiguration => Str]

=item [Description => Str]

=item [Schedule => Str]

=item [SchemaChangePolicy => L<Paws::Glue::SchemaChangePolicy>]

=item [TablePrefix => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateCrawler>

Returns: a L<Paws::Glue::CreateCrawlerResponse> instance

Creates a new crawler with specified targets, role, configuration, and
optional schedule. At least one crawl target must be specified, in the
I<s3Targets> field, the I<jdbcTargets> field, or the I<DynamoDBTargets>
field.


=head2 CreateDatabase

=over

=item DatabaseInput => L<Paws::Glue::DatabaseInput>

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateDatabase>

Returns: a L<Paws::Glue::CreateDatabaseResponse> instance

Creates a new database in a Data Catalog.


=head2 CreateDevEndpoint

=over

=item EndpointName => Str

=item RoleArn => Str

=item [ExtraJarsS3Path => Str]

=item [ExtraPythonLibsS3Path => Str]

=item [NumberOfNodes => Int]

=item [PublicKey => Str]

=item [PublicKeys => ArrayRef[Str|Undef]]

=item [SecurityConfiguration => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SubnetId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateDevEndpoint>

Returns: a L<Paws::Glue::CreateDevEndpointResponse> instance

Creates a new DevEndpoint.


=head2 CreateJob

=over

=item Command => L<Paws::Glue::JobCommand>

=item Name => Str

=item Role => Str

=item [AllocatedCapacity => Int]

=item [Connections => L<Paws::Glue::ConnectionsList>]

=item [DefaultArguments => L<Paws::Glue::GenericMap>]

=item [Description => Str]

=item [ExecutionProperty => L<Paws::Glue::ExecutionProperty>]

=item [LogUri => Str]

=item [MaxCapacity => Num]

=item [MaxRetries => Int]

=item [NotificationProperty => L<Paws::Glue::NotificationProperty>]

=item [SecurityConfiguration => Str]

=item [Timeout => Int]


=back

Each argument is described in detail in: L<Paws::Glue::CreateJob>

Returns: a L<Paws::Glue::CreateJobResponse> instance

Creates a new job definition.


=head2 CreatePartition

=over

=item DatabaseName => Str

=item PartitionInput => L<Paws::Glue::PartitionInput>

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreatePartition>

Returns: a L<Paws::Glue::CreatePartitionResponse> instance

Creates a new partition.


=head2 CreateScript

=over

=item [DagEdges => ArrayRef[L<Paws::Glue::CodeGenEdge>]]

=item [DagNodes => ArrayRef[L<Paws::Glue::CodeGenNode>]]

=item [Language => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateScript>

Returns: a L<Paws::Glue::CreateScriptResponse> instance

Transforms a directed acyclic graph (DAG) into code.


=head2 CreateSecurityConfiguration

=over

=item EncryptionConfiguration => L<Paws::Glue::EncryptionConfiguration>

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::CreateSecurityConfiguration>

Returns: a L<Paws::Glue::CreateSecurityConfigurationResponse> instance

Creates a new security configuration.


=head2 CreateTable

=over

=item DatabaseName => Str

=item TableInput => L<Paws::Glue::TableInput>

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateTable>

Returns: a L<Paws::Glue::CreateTableResponse> instance

Creates a new table definition in the Data Catalog.


=head2 CreateTrigger

=over

=item Actions => ArrayRef[L<Paws::Glue::Action>]

=item Name => Str

=item Type => Str

=item [Description => Str]

=item [Predicate => L<Paws::Glue::Predicate>]

=item [Schedule => Str]

=item [StartOnCreation => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::CreateTrigger>

Returns: a L<Paws::Glue::CreateTriggerResponse> instance

Creates a new trigger.


=head2 CreateUserDefinedFunction

=over

=item DatabaseName => Str

=item FunctionInput => L<Paws::Glue::UserDefinedFunctionInput>

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateUserDefinedFunction>

Returns: a L<Paws::Glue::CreateUserDefinedFunctionResponse> instance

Creates a new function definition in the Data Catalog.


=head2 DeleteClassifier

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteClassifier>

Returns: a L<Paws::Glue::DeleteClassifierResponse> instance

Removes a classifier from the Data Catalog.


=head2 DeleteConnection

=over

=item ConnectionName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteConnection>

Returns: a L<Paws::Glue::DeleteConnectionResponse> instance

Deletes a connection from the Data Catalog.


=head2 DeleteCrawler

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteCrawler>

Returns: a L<Paws::Glue::DeleteCrawlerResponse> instance

Removes a specified crawler from the Data Catalog, unless the crawler
state is C<RUNNING>.


=head2 DeleteDatabase

=over

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteDatabase>

Returns: a L<Paws::Glue::DeleteDatabaseResponse> instance

Removes a specified Database from a Data Catalog.

After completing this operation, you will no longer have access to the
tables (and all table versions and partitions that might belong to the
tables) and the user-defined functions in the deleted database. AWS
Glue deletes these "orphaned" resources asynchronously in a timely
manner, at the discretion of the service.

To ensure immediate deletion of all related resources, before calling
C<DeleteDatabase>, use C<DeleteTableVersion> or
C<BatchDeleteTableVersion>, C<DeletePartition> or
C<BatchDeletePartition>, C<DeleteUserDefinedFunction>, and
C<DeleteTable> or C<BatchDeleteTable>, to delete any resources that
belong to the database.


=head2 DeleteDevEndpoint

=over

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteDevEndpoint>

Returns: a L<Paws::Glue::DeleteDevEndpointResponse> instance

Deletes a specified DevEndpoint.


=head2 DeleteJob

=over

=item JobName => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteJob>

Returns: a L<Paws::Glue::DeleteJobResponse> instance

Deletes a specified job definition. If the job definition is not found,
no exception is thrown.


=head2 DeletePartition

=over

=item DatabaseName => Str

=item PartitionValues => ArrayRef[Str|Undef]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeletePartition>

Returns: a L<Paws::Glue::DeletePartitionResponse> instance

Deletes a specified partition.


=head2 DeleteResourcePolicy

=over

=item [PolicyHashCondition => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteResourcePolicy>

Returns: a L<Paws::Glue::DeleteResourcePolicyResponse> instance

Deletes a specified policy.


=head2 DeleteSecurityConfiguration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteSecurityConfiguration>

Returns: a L<Paws::Glue::DeleteSecurityConfigurationResponse> instance

Deletes a specified security configuration.


=head2 DeleteTable

=over

=item DatabaseName => Str

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteTable>

Returns: a L<Paws::Glue::DeleteTableResponse> instance

Removes a table definition from the Data Catalog.

After completing this operation, you will no longer have access to the
table versions and partitions that belong to the deleted table. AWS
Glue deletes these "orphaned" resources asynchronously in a timely
manner, at the discretion of the service.

To ensure immediate deletion of all related resources, before calling
C<DeleteTable>, use C<DeleteTableVersion> or
C<BatchDeleteTableVersion>, and C<DeletePartition> or
C<BatchDeletePartition>, to delete any resources that belong to the
table.


=head2 DeleteTableVersion

=over

=item DatabaseName => Str

=item TableName => Str

=item VersionId => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteTableVersion>

Returns: a L<Paws::Glue::DeleteTableVersionResponse> instance

Deletes a specified version of a table.


=head2 DeleteTrigger

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteTrigger>

Returns: a L<Paws::Glue::DeleteTriggerResponse> instance

Deletes a specified trigger. If the trigger is not found, no exception
is thrown.


=head2 DeleteUserDefinedFunction

=over

=item DatabaseName => Str

=item FunctionName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteUserDefinedFunction>

Returns: a L<Paws::Glue::DeleteUserDefinedFunctionResponse> instance

Deletes an existing function definition from the Data Catalog.


=head2 GetCatalogImportStatus

=over

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetCatalogImportStatus>

Returns: a L<Paws::Glue::GetCatalogImportStatusResponse> instance

Retrieves the status of a migration operation.


=head2 GetClassifier

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetClassifier>

Returns: a L<Paws::Glue::GetClassifierResponse> instance

Retrieve a classifier by name.


=head2 GetClassifiers

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetClassifiers>

Returns: a L<Paws::Glue::GetClassifiersResponse> instance

Lists all classifier objects in the Data Catalog.


=head2 GetConnection

=over

=item Name => Str

=item [CatalogId => Str]

=item [HidePassword => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::GetConnection>

Returns: a L<Paws::Glue::GetConnectionResponse> instance

Retrieves a connection definition from the Data Catalog.


=head2 GetConnections

=over

=item [CatalogId => Str]

=item [Filter => L<Paws::Glue::GetConnectionsFilter>]

=item [HidePassword => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetConnections>

Returns: a L<Paws::Glue::GetConnectionsResponse> instance

Retrieves a list of connection definitions from the Data Catalog.


=head2 GetCrawler

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetCrawler>

Returns: a L<Paws::Glue::GetCrawlerResponse> instance

Retrieves metadata for a specified crawler.


=head2 GetCrawlerMetrics

=over

=item [CrawlerNameList => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetCrawlerMetrics>

Returns: a L<Paws::Glue::GetCrawlerMetricsResponse> instance

Retrieves metrics about specified crawlers.


=head2 GetCrawlers

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetCrawlers>

Returns: a L<Paws::Glue::GetCrawlersResponse> instance

Retrieves metadata for all crawlers defined in the customer account.


=head2 GetDatabase

=over

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetDatabase>

Returns: a L<Paws::Glue::GetDatabaseResponse> instance

Retrieves the definition of a specified database.


=head2 GetDatabases

=over

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetDatabases>

Returns: a L<Paws::Glue::GetDatabasesResponse> instance

Retrieves all Databases defined in a given Data Catalog.


=head2 GetDataCatalogEncryptionSettings

=over

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetDataCatalogEncryptionSettings>

Returns: a L<Paws::Glue::GetDataCatalogEncryptionSettingsResponse> instance

Retrieves the security configuration for a specified catalog.


=head2 GetDataflowGraph

=over

=item [PythonScript => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetDataflowGraph>

Returns: a L<Paws::Glue::GetDataflowGraphResponse> instance

Transforms a Python script into a directed acyclic graph (DAG).


=head2 GetDevEndpoint

=over

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetDevEndpoint>

Returns: a L<Paws::Glue::GetDevEndpointResponse> instance

Retrieves information about a specified DevEndpoint.

When you create a development endpoint in a virtual private cloud
(VPC), AWS Glue returns only a private IP address, and the public IP
address field is not populated. When you create a non-VPC development
endpoint, AWS Glue returns only a public IP address.


=head2 GetDevEndpoints

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetDevEndpoints>

Returns: a L<Paws::Glue::GetDevEndpointsResponse> instance

Retrieves all the DevEndpoints in this AWS account.

When you create a development endpoint in a virtual private cloud
(VPC), AWS Glue returns only a private IP address and the public IP
address field is not populated. When you create a non-VPC development
endpoint, AWS Glue returns only a public IP address.


=head2 GetJob

=over

=item JobName => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetJob>

Returns: a L<Paws::Glue::GetJobResponse> instance

Retrieves an existing job definition.


=head2 GetJobRun

=over

=item JobName => Str

=item RunId => Str

=item [PredecessorsIncluded => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::GetJobRun>

Returns: a L<Paws::Glue::GetJobRunResponse> instance

Retrieves the metadata for a given job run.


=head2 GetJobRuns

=over

=item JobName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetJobRuns>

Returns: a L<Paws::Glue::GetJobRunsResponse> instance

Retrieves metadata for all runs of a given job definition.


=head2 GetJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetJobs>

Returns: a L<Paws::Glue::GetJobsResponse> instance

Retrieves all current job definitions.


=head2 GetMapping

=over

=item Source => L<Paws::Glue::CatalogEntry>

=item [Location => L<Paws::Glue::Location>]

=item [Sinks => ArrayRef[L<Paws::Glue::CatalogEntry>]]


=back

Each argument is described in detail in: L<Paws::Glue::GetMapping>

Returns: a L<Paws::Glue::GetMappingResponse> instance

Creates mappings.


=head2 GetPartition

=over

=item DatabaseName => Str

=item PartitionValues => ArrayRef[Str|Undef]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetPartition>

Returns: a L<Paws::Glue::GetPartitionResponse> instance

Retrieves information about a specified partition.


=head2 GetPartitions

=over

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]

=item [Expression => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Segment => L<Paws::Glue::Segment>]


=back

Each argument is described in detail in: L<Paws::Glue::GetPartitions>

Returns: a L<Paws::Glue::GetPartitionsResponse> instance

Retrieves information about the partitions in a table.


=head2 GetPlan

=over

=item Mapping => ArrayRef[L<Paws::Glue::MappingEntry>]

=item Source => L<Paws::Glue::CatalogEntry>

=item [Language => Str]

=item [Location => L<Paws::Glue::Location>]

=item [Sinks => ArrayRef[L<Paws::Glue::CatalogEntry>]]


=back

Each argument is described in detail in: L<Paws::Glue::GetPlan>

Returns: a L<Paws::Glue::GetPlanResponse> instance

Gets code to perform a specified mapping.


=head2 GetResourcePolicy






Each argument is described in detail in: L<Paws::Glue::GetResourcePolicy>

Returns: a L<Paws::Glue::GetResourcePolicyResponse> instance

Retrieves a specified resource policy.


=head2 GetSecurityConfiguration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetSecurityConfiguration>

Returns: a L<Paws::Glue::GetSecurityConfigurationResponse> instance

Retrieves a specified security configuration.


=head2 GetSecurityConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetSecurityConfigurations>

Returns: a L<Paws::Glue::GetSecurityConfigurationsResponse> instance

Retrieves a list of all security configurations.


=head2 GetTable

=over

=item DatabaseName => Str

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetTable>

Returns: a L<Paws::Glue::GetTableResponse> instance

Retrieves the C<Table> definition in a Data Catalog for a specified
table.


=head2 GetTables

=over

=item DatabaseName => Str

=item [CatalogId => Str]

=item [Expression => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetTables>

Returns: a L<Paws::Glue::GetTablesResponse> instance

Retrieves the definitions of some or all of the tables in a given
C<Database>.


=head2 GetTableVersion

=over

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetTableVersion>

Returns: a L<Paws::Glue::GetTableVersionResponse> instance

Retrieves a specified version of a table.


=head2 GetTableVersions

=over

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetTableVersions>

Returns: a L<Paws::Glue::GetTableVersionsResponse> instance

Retrieves a list of strings that identify available versions of a
specified table.


=head2 GetTrigger

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetTrigger>

Returns: a L<Paws::Glue::GetTriggerResponse> instance

Retrieves the definition of a trigger.


=head2 GetTriggers

=over

=item [DependentJobName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetTriggers>

Returns: a L<Paws::Glue::GetTriggersResponse> instance

Gets all the triggers associated with a job.


=head2 GetUserDefinedFunction

=over

=item DatabaseName => Str

=item FunctionName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetUserDefinedFunction>

Returns: a L<Paws::Glue::GetUserDefinedFunctionResponse> instance

Retrieves a specified function definition from the Data Catalog.


=head2 GetUserDefinedFunctions

=over

=item DatabaseName => Str

=item Pattern => Str

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetUserDefinedFunctions>

Returns: a L<Paws::Glue::GetUserDefinedFunctionsResponse> instance

Retrieves a multiple function definitions from the Data Catalog.


=head2 ImportCatalogToGlue

=over

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ImportCatalogToGlue>

Returns: a L<Paws::Glue::ImportCatalogToGlueResponse> instance

Imports an existing Athena Data Catalog to AWS Glue


=head2 PutDataCatalogEncryptionSettings

=over

=item DataCatalogEncryptionSettings => L<Paws::Glue::DataCatalogEncryptionSettings>

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::PutDataCatalogEncryptionSettings>

Returns: a L<Paws::Glue::PutDataCatalogEncryptionSettingsResponse> instance

Sets the security configuration for a specified catalog. Once the
configuration has been set, the specified encryption is applied to
every catalog write thereafter.


=head2 PutResourcePolicy

=over

=item PolicyInJson => Str

=item [PolicyExistsCondition => Str]

=item [PolicyHashCondition => Str]


=back

Each argument is described in detail in: L<Paws::Glue::PutResourcePolicy>

Returns: a L<Paws::Glue::PutResourcePolicyResponse> instance

Sets the Data Catalog resource policy for access control.


=head2 ResetJobBookmark

=over

=item JobName => Str


=back

Each argument is described in detail in: L<Paws::Glue::ResetJobBookmark>

Returns: a L<Paws::Glue::ResetJobBookmarkResponse> instance

Resets a bookmark entry.


=head2 StartCrawler

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::StartCrawler>

Returns: a L<Paws::Glue::StartCrawlerResponse> instance

Starts a crawl using the specified crawler, regardless of what is
scheduled. If the crawler is already running, returns a
CrawlerRunningException
(https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-exceptions.html#aws-glue-api-exceptions-CrawlerRunningException).


=head2 StartCrawlerSchedule

=over

=item CrawlerName => Str


=back

Each argument is described in detail in: L<Paws::Glue::StartCrawlerSchedule>

Returns: a L<Paws::Glue::StartCrawlerScheduleResponse> instance

Changes the schedule state of the specified crawler to C<SCHEDULED>,
unless the crawler is already running or the schedule state is already
C<SCHEDULED>.


=head2 StartJobRun

=over

=item JobName => Str

=item [AllocatedCapacity => Int]

=item [Arguments => L<Paws::Glue::GenericMap>]

=item [JobRunId => Str]

=item [MaxCapacity => Num]

=item [NotificationProperty => L<Paws::Glue::NotificationProperty>]

=item [SecurityConfiguration => Str]

=item [Timeout => Int]


=back

Each argument is described in detail in: L<Paws::Glue::StartJobRun>

Returns: a L<Paws::Glue::StartJobRunResponse> instance

Starts a job run using a job definition.


=head2 StartTrigger

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::StartTrigger>

Returns: a L<Paws::Glue::StartTriggerResponse> instance

Starts an existing trigger. See Triggering Jobs
(http://docs.aws.amazon.com/glue/latest/dg/trigger-job.html) for
information about how different types of trigger are started.


=head2 StopCrawler

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::StopCrawler>

Returns: a L<Paws::Glue::StopCrawlerResponse> instance

If the specified crawler is running, stops the crawl.


=head2 StopCrawlerSchedule

=over

=item CrawlerName => Str


=back

Each argument is described in detail in: L<Paws::Glue::StopCrawlerSchedule>

Returns: a L<Paws::Glue::StopCrawlerScheduleResponse> instance

Sets the schedule state of the specified crawler to C<NOT_SCHEDULED>,
but does not stop the crawler if it is already running.


=head2 StopTrigger

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::StopTrigger>

Returns: a L<Paws::Glue::StopTriggerResponse> instance

Stops a specified trigger.


=head2 UpdateClassifier

=over

=item [GrokClassifier => L<Paws::Glue::UpdateGrokClassifierRequest>]

=item [JsonClassifier => L<Paws::Glue::UpdateJsonClassifierRequest>]

=item [XMLClassifier => L<Paws::Glue::UpdateXMLClassifierRequest>]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateClassifier>

Returns: a L<Paws::Glue::UpdateClassifierResponse> instance

Modifies an existing classifier (a C<GrokClassifier>, C<XMLClassifier>,
or C<JsonClassifier>, depending on which field is present).


=head2 UpdateConnection

=over

=item ConnectionInput => L<Paws::Glue::ConnectionInput>

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateConnection>

Returns: a L<Paws::Glue::UpdateConnectionResponse> instance

Updates a connection definition in the Data Catalog.


=head2 UpdateCrawler

=over

=item Name => Str

=item [Classifiers => ArrayRef[Str|Undef]]

=item [Configuration => Str]

=item [CrawlerSecurityConfiguration => Str]

=item [DatabaseName => Str]

=item [Description => Str]

=item [Role => Str]

=item [Schedule => Str]

=item [SchemaChangePolicy => L<Paws::Glue::SchemaChangePolicy>]

=item [TablePrefix => Str]

=item [Targets => L<Paws::Glue::CrawlerTargets>]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateCrawler>

Returns: a L<Paws::Glue::UpdateCrawlerResponse> instance

Updates a crawler. If a crawler is running, you must stop it using
C<StopCrawler> before updating it.


=head2 UpdateCrawlerSchedule

=over

=item CrawlerName => Str

=item [Schedule => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateCrawlerSchedule>

Returns: a L<Paws::Glue::UpdateCrawlerScheduleResponse> instance

Updates the schedule of a crawler using a C<cron> expression.


=head2 UpdateDatabase

=over

=item DatabaseInput => L<Paws::Glue::DatabaseInput>

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateDatabase>

Returns: a L<Paws::Glue::UpdateDatabaseResponse> instance

Updates an existing database definition in a Data Catalog.


=head2 UpdateDevEndpoint

=over

=item EndpointName => Str

=item [AddPublicKeys => ArrayRef[Str|Undef]]

=item [CustomLibraries => L<Paws::Glue::DevEndpointCustomLibraries>]

=item [DeletePublicKeys => ArrayRef[Str|Undef]]

=item [PublicKey => Str]

=item [UpdateEtlLibraries => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateDevEndpoint>

Returns: a L<Paws::Glue::UpdateDevEndpointResponse> instance

Updates a specified DevEndpoint.


=head2 UpdateJob

=over

=item JobName => Str

=item JobUpdate => L<Paws::Glue::JobUpdate>


=back

Each argument is described in detail in: L<Paws::Glue::UpdateJob>

Returns: a L<Paws::Glue::UpdateJobResponse> instance

Updates an existing job definition.


=head2 UpdatePartition

=over

=item DatabaseName => Str

=item PartitionInput => L<Paws::Glue::PartitionInput>

=item PartitionValueList => ArrayRef[Str|Undef]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdatePartition>

Returns: a L<Paws::Glue::UpdatePartitionResponse> instance

Updates a partition.


=head2 UpdateTable

=over

=item DatabaseName => Str

=item TableInput => L<Paws::Glue::TableInput>

=item [CatalogId => Str]

=item [SkipArchive => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateTable>

Returns: a L<Paws::Glue::UpdateTableResponse> instance

Updates a metadata table in the Data Catalog.


=head2 UpdateTrigger

=over

=item Name => Str

=item TriggerUpdate => L<Paws::Glue::TriggerUpdate>


=back

Each argument is described in detail in: L<Paws::Glue::UpdateTrigger>

Returns: a L<Paws::Glue::UpdateTriggerResponse> instance

Updates a trigger definition.


=head2 UpdateUserDefinedFunction

=over

=item DatabaseName => Str

=item FunctionInput => L<Paws::Glue::UserDefinedFunctionInput>

=item FunctionName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateUserDefinedFunction>

Returns: a L<Paws::Glue::UpdateUserDefinedFunctionResponse> instance

Updates an existing function definition in the Data Catalog.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllClassifiers(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllClassifiers([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Classifiers, passing the object as the first parameter, and the string 'Classifiers' as the second parameter 

If not, it will return a a L<Paws::Glue::GetClassifiersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllConnections(sub { },[CatalogId => Str, Filter => L<Paws::Glue::GetConnectionsFilter>, HidePassword => Bool, MaxResults => Int, NextToken => Str])

=head2 GetAllConnections([CatalogId => Str, Filter => L<Paws::Glue::GetConnectionsFilter>, HidePassword => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConnectionList, passing the object as the first parameter, and the string 'ConnectionList' as the second parameter 

If not, it will return a a L<Paws::Glue::GetConnectionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllCrawlerMetrics(sub { },[CrawlerNameList => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 GetAllCrawlerMetrics([CrawlerNameList => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CrawlerMetricsList, passing the object as the first parameter, and the string 'CrawlerMetricsList' as the second parameter 

If not, it will return a a L<Paws::Glue::GetCrawlerMetricsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllCrawlers(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllCrawlers([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Crawlers, passing the object as the first parameter, and the string 'Crawlers' as the second parameter 

If not, it will return a a L<Paws::Glue::GetCrawlersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDatabases(sub { },[CatalogId => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllDatabases([CatalogId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DatabaseList, passing the object as the first parameter, and the string 'DatabaseList' as the second parameter 

If not, it will return a a L<Paws::Glue::GetDatabasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDevEndpoints(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllDevEndpoints([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DevEndpoints, passing the object as the first parameter, and the string 'DevEndpoints' as the second parameter 

If not, it will return a a L<Paws::Glue::GetDevEndpointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllJobRuns(sub { },JobName => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllJobRuns(JobName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - JobRuns, passing the object as the first parameter, and the string 'JobRuns' as the second parameter 

If not, it will return a a L<Paws::Glue::GetJobRunsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllJobs(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllJobs([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Jobs, passing the object as the first parameter, and the string 'Jobs' as the second parameter 

If not, it will return a a L<Paws::Glue::GetJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllPartitions(sub { },DatabaseName => Str, TableName => Str, [CatalogId => Str, Expression => Str, MaxResults => Int, NextToken => Str, Segment => L<Paws::Glue::Segment>])

=head2 GetAllPartitions(DatabaseName => Str, TableName => Str, [CatalogId => Str, Expression => Str, MaxResults => Int, NextToken => Str, Segment => L<Paws::Glue::Segment>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Partitions, passing the object as the first parameter, and the string 'Partitions' as the second parameter 

If not, it will return a a L<Paws::Glue::GetPartitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllSecurityConfigurations(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllSecurityConfigurations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecurityConfigurations, passing the object as the first parameter, and the string 'SecurityConfigurations' as the second parameter 

If not, it will return a a L<Paws::Glue::GetSecurityConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTables(sub { },DatabaseName => Str, [CatalogId => Str, Expression => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllTables(DatabaseName => Str, [CatalogId => Str, Expression => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TableList, passing the object as the first parameter, and the string 'TableList' as the second parameter 

If not, it will return a a L<Paws::Glue::GetTablesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTableVersions(sub { },DatabaseName => Str, TableName => Str, [CatalogId => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllTableVersions(DatabaseName => Str, TableName => Str, [CatalogId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TableVersions, passing the object as the first parameter, and the string 'TableVersions' as the second parameter 

If not, it will return a a L<Paws::Glue::GetTableVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTriggers(sub { },[DependentJobName => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllTriggers([DependentJobName => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Triggers, passing the object as the first parameter, and the string 'Triggers' as the second parameter 

If not, it will return a a L<Paws::Glue::GetTriggersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllUserDefinedFunctions(sub { },DatabaseName => Str, Pattern => Str, [CatalogId => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllUserDefinedFunctions(DatabaseName => Str, Pattern => Str, [CatalogId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserDefinedFunctions, passing the object as the first parameter, and the string 'UserDefinedFunctions' as the second parameter 

If not, it will return a a L<Paws::Glue::GetUserDefinedFunctionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

