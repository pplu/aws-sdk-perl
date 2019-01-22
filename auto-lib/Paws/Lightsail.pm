package Paws::Lightsail;
  use Moose;
  sub service { 'lightsail' }
  sub signing_name { 'lightsail' }
  sub version { '2016-11-28' }
  sub target_prefix { 'Lightsail_20161128' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AllocateStaticIp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::AllocateStaticIp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachDisk {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::AttachDisk', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachInstancesToLoadBalancer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::AttachInstancesToLoadBalancer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachLoadBalancerTlsCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::AttachLoadBalancerTlsCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachStaticIp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::AttachStaticIp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CloseInstancePublicPorts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::CloseInstancePublicPorts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopySnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::CopySnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCloudFormationStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::CreateCloudFormationStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDisk {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::CreateDisk', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDiskFromSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::CreateDiskFromSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDiskSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::CreateDiskSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::CreateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomainEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::CreateDomainEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::CreateInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInstancesFromSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::CreateInstancesFromSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInstanceSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::CreateInstanceSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::CreateKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLoadBalancer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::CreateLoadBalancer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLoadBalancerTlsCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::CreateLoadBalancerTlsCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRelationalDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::CreateRelationalDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRelationalDatabaseFromSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::CreateRelationalDatabaseFromSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRelationalDatabaseSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::CreateRelationalDatabaseSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDisk {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::DeleteDisk', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDiskSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::DeleteDiskSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::DeleteDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomainEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::DeleteDomainEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::DeleteInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInstanceSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::DeleteInstanceSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::DeleteKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLoadBalancer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::DeleteLoadBalancer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLoadBalancerTlsCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::DeleteLoadBalancerTlsCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRelationalDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::DeleteRelationalDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRelationalDatabaseSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::DeleteRelationalDatabaseSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachDisk {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::DetachDisk', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachInstancesFromLoadBalancer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::DetachInstancesFromLoadBalancer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachStaticIp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::DetachStaticIp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DownloadDefaultKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::DownloadDefaultKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::ExportSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetActiveNames {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetActiveNames', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBlueprints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetBlueprints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBundles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetBundles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCloudFormationStackRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetCloudFormationStackRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDisk {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetDisk', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDisks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetDisks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDiskSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetDiskSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDiskSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetDiskSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExportSnapshotRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetExportSnapshotRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstanceAccessDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetInstanceAccessDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstanceMetricData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetInstanceMetricData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstancePortStates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetInstancePortStates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstanceSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetInstanceSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstanceSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetInstanceSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstanceState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetInstanceState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKeyPairs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetKeyPairs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLoadBalancer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetLoadBalancer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLoadBalancerMetricData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetLoadBalancerMetricData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLoadBalancers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetLoadBalancers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLoadBalancerTlsCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetLoadBalancerTlsCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOperationsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetOperationsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRegions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetRegions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRelationalDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetRelationalDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRelationalDatabaseBlueprints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetRelationalDatabaseBlueprints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRelationalDatabaseBundles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetRelationalDatabaseBundles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRelationalDatabaseEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetRelationalDatabaseEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRelationalDatabaseLogEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetRelationalDatabaseLogEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRelationalDatabaseLogStreams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetRelationalDatabaseLogStreams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRelationalDatabaseMasterUserPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetRelationalDatabaseMasterUserPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRelationalDatabaseMetricData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetRelationalDatabaseMetricData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRelationalDatabaseParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetRelationalDatabaseParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRelationalDatabases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetRelationalDatabases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRelationalDatabaseSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetRelationalDatabaseSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRelationalDatabaseSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetRelationalDatabaseSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStaticIp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetStaticIp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStaticIps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::GetStaticIps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::ImportKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub IsVpcPeered {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::IsVpcPeered', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub OpenInstancePublicPorts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::OpenInstancePublicPorts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PeerVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::PeerVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutInstancePublicPorts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::PutInstancePublicPorts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::RebootInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootRelationalDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::RebootRelationalDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReleaseStaticIp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::ReleaseStaticIp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::StartInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartRelationalDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::StartRelationalDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::StopInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopRelationalDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::StopRelationalDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnpeerVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::UnpeerVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomainEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::UpdateDomainEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLoadBalancerAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::UpdateLoadBalancerAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRelationalDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::UpdateRelationalDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRelationalDatabaseParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::UpdateRelationalDatabaseParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllActiveNames {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetActiveNames(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetActiveNames(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->activeNames }, @{ $next_result->activeNames };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'activeNames') foreach (@{ $result->activeNames });
        $result = $self->GetActiveNames(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'activeNames') foreach (@{ $result->activeNames });
    }

    return undef
  }
  sub GetAllBlueprints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetBlueprints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetBlueprints(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->blueprints }, @{ $next_result->blueprints };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'blueprints') foreach (@{ $result->blueprints });
        $result = $self->GetBlueprints(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'blueprints') foreach (@{ $result->blueprints });
    }

    return undef
  }
  sub GetAllBundles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetBundles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetBundles(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->bundles }, @{ $next_result->bundles };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'bundles') foreach (@{ $result->bundles });
        $result = $self->GetBundles(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'bundles') foreach (@{ $result->bundles });
    }

    return undef
  }
  sub GetAllCloudFormationStackRecords {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCloudFormationStackRecords(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetCloudFormationStackRecords(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->cloudFormationStackRecords }, @{ $next_result->cloudFormationStackRecords };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'cloudFormationStackRecords') foreach (@{ $result->cloudFormationStackRecords });
        $result = $self->GetCloudFormationStackRecords(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'cloudFormationStackRecords') foreach (@{ $result->cloudFormationStackRecords });
    }

    return undef
  }
  sub GetAllDisks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDisks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetDisks(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->disks }, @{ $next_result->disks };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'disks') foreach (@{ $result->disks });
        $result = $self->GetDisks(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'disks') foreach (@{ $result->disks });
    }

    return undef
  }
  sub GetAllDiskSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDiskSnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetDiskSnapshots(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->diskSnapshots }, @{ $next_result->diskSnapshots };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'diskSnapshots') foreach (@{ $result->diskSnapshots });
        $result = $self->GetDiskSnapshots(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'diskSnapshots') foreach (@{ $result->diskSnapshots });
    }

    return undef
  }
  sub GetAllDomains {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDomains(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetDomains(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->domains }, @{ $next_result->domains };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'domains') foreach (@{ $result->domains });
        $result = $self->GetDomains(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'domains') foreach (@{ $result->domains });
    }

    return undef
  }
  sub GetAllExportSnapshotRecords {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetExportSnapshotRecords(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetExportSnapshotRecords(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->exportSnapshotRecords }, @{ $next_result->exportSnapshotRecords };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'exportSnapshotRecords') foreach (@{ $result->exportSnapshotRecords });
        $result = $self->GetExportSnapshotRecords(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'exportSnapshotRecords') foreach (@{ $result->exportSnapshotRecords });
    }

    return undef
  }
  sub GetAllInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetInstances(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->instances }, @{ $next_result->instances };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'instances') foreach (@{ $result->instances });
        $result = $self->GetInstances(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'instances') foreach (@{ $result->instances });
    }

    return undef
  }
  sub GetAllInstanceSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetInstanceSnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetInstanceSnapshots(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->instanceSnapshots }, @{ $next_result->instanceSnapshots };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'instanceSnapshots') foreach (@{ $result->instanceSnapshots });
        $result = $self->GetInstanceSnapshots(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'instanceSnapshots') foreach (@{ $result->instanceSnapshots });
    }

    return undef
  }
  sub GetAllKeyPairs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetKeyPairs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetKeyPairs(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->keyPairs }, @{ $next_result->keyPairs };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'keyPairs') foreach (@{ $result->keyPairs });
        $result = $self->GetKeyPairs(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'keyPairs') foreach (@{ $result->keyPairs });
    }

    return undef
  }
  sub GetAllLoadBalancers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetLoadBalancers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetLoadBalancers(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->loadBalancers }, @{ $next_result->loadBalancers };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'loadBalancers') foreach (@{ $result->loadBalancers });
        $result = $self->GetLoadBalancers(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'loadBalancers') foreach (@{ $result->loadBalancers });
    }

    return undef
  }
  sub GetAllOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetOperations(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->operations }, @{ $next_result->operations };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'operations') foreach (@{ $result->operations });
        $result = $self->GetOperations(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'operations') foreach (@{ $result->operations });
    }

    return undef
  }
  sub GetAllRelationalDatabaseBlueprints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetRelationalDatabaseBlueprints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetRelationalDatabaseBlueprints(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->blueprints }, @{ $next_result->blueprints };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'blueprints') foreach (@{ $result->blueprints });
        $result = $self->GetRelationalDatabaseBlueprints(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'blueprints') foreach (@{ $result->blueprints });
    }

    return undef
  }
  sub GetAllRelationalDatabaseBundles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetRelationalDatabaseBundles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetRelationalDatabaseBundles(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->bundles }, @{ $next_result->bundles };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'bundles') foreach (@{ $result->bundles });
        $result = $self->GetRelationalDatabaseBundles(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'bundles') foreach (@{ $result->bundles });
    }

    return undef
  }
  sub GetAllRelationalDatabaseEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetRelationalDatabaseEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetRelationalDatabaseEvents(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->relationalDatabaseEvents }, @{ $next_result->relationalDatabaseEvents };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'relationalDatabaseEvents') foreach (@{ $result->relationalDatabaseEvents });
        $result = $self->GetRelationalDatabaseEvents(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'relationalDatabaseEvents') foreach (@{ $result->relationalDatabaseEvents });
    }

    return undef
  }
  sub GetAllRelationalDatabaseParameters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetRelationalDatabaseParameters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetRelationalDatabaseParameters(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->parameters }, @{ $next_result->parameters };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'parameters') foreach (@{ $result->parameters });
        $result = $self->GetRelationalDatabaseParameters(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'parameters') foreach (@{ $result->parameters });
    }

    return undef
  }
  sub GetAllRelationalDatabases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetRelationalDatabases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetRelationalDatabases(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->relationalDatabases }, @{ $next_result->relationalDatabases };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'relationalDatabases') foreach (@{ $result->relationalDatabases });
        $result = $self->GetRelationalDatabases(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'relationalDatabases') foreach (@{ $result->relationalDatabases });
    }

    return undef
  }
  sub GetAllRelationalDatabaseSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetRelationalDatabaseSnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetRelationalDatabaseSnapshots(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->relationalDatabaseSnapshots }, @{ $next_result->relationalDatabaseSnapshots };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'relationalDatabaseSnapshots') foreach (@{ $result->relationalDatabaseSnapshots });
        $result = $self->GetRelationalDatabaseSnapshots(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'relationalDatabaseSnapshots') foreach (@{ $result->relationalDatabaseSnapshots });
    }

    return undef
  }
  sub GetAllStaticIps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetStaticIps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetStaticIps(@_, pageToken => $next_result->nextPageToken);
        push @{ $result->staticIps }, @{ $next_result->staticIps };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'staticIps') foreach (@{ $result->staticIps });
        $result = $self->GetStaticIps(@_, pageToken => $result->nextPageToken);
      }
      $callback->($_ => 'staticIps') foreach (@{ $result->staticIps });
    }

    return undef
  }


  sub operations { qw/AllocateStaticIp AttachDisk AttachInstancesToLoadBalancer AttachLoadBalancerTlsCertificate AttachStaticIp CloseInstancePublicPorts CopySnapshot CreateCloudFormationStack CreateDisk CreateDiskFromSnapshot CreateDiskSnapshot CreateDomain CreateDomainEntry CreateInstances CreateInstancesFromSnapshot CreateInstanceSnapshot CreateKeyPair CreateLoadBalancer CreateLoadBalancerTlsCertificate CreateRelationalDatabase CreateRelationalDatabaseFromSnapshot CreateRelationalDatabaseSnapshot DeleteDisk DeleteDiskSnapshot DeleteDomain DeleteDomainEntry DeleteInstance DeleteInstanceSnapshot DeleteKeyPair DeleteLoadBalancer DeleteLoadBalancerTlsCertificate DeleteRelationalDatabase DeleteRelationalDatabaseSnapshot DetachDisk DetachInstancesFromLoadBalancer DetachStaticIp DownloadDefaultKeyPair ExportSnapshot GetActiveNames GetBlueprints GetBundles GetCloudFormationStackRecords GetDisk GetDisks GetDiskSnapshot GetDiskSnapshots GetDomain GetDomains GetExportSnapshotRecords GetInstance GetInstanceAccessDetails GetInstanceMetricData GetInstancePortStates GetInstances GetInstanceSnapshot GetInstanceSnapshots GetInstanceState GetKeyPair GetKeyPairs GetLoadBalancer GetLoadBalancerMetricData GetLoadBalancers GetLoadBalancerTlsCertificates GetOperation GetOperations GetOperationsForResource GetRegions GetRelationalDatabase GetRelationalDatabaseBlueprints GetRelationalDatabaseBundles GetRelationalDatabaseEvents GetRelationalDatabaseLogEvents GetRelationalDatabaseLogStreams GetRelationalDatabaseMasterUserPassword GetRelationalDatabaseMetricData GetRelationalDatabaseParameters GetRelationalDatabases GetRelationalDatabaseSnapshot GetRelationalDatabaseSnapshots GetStaticIp GetStaticIps ImportKeyPair IsVpcPeered OpenInstancePublicPorts PeerVpc PutInstancePublicPorts RebootInstance RebootRelationalDatabase ReleaseStaticIp StartInstance StartRelationalDatabase StopInstance StopRelationalDatabase TagResource UnpeerVpc UntagResource UpdateDomainEntry UpdateLoadBalancerAttribute UpdateRelationalDatabase UpdateRelationalDatabaseParameters / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail - Perl Interface to AWS Amazon Lightsail

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Lightsail');
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

Amazon Lightsail is the easiest way to get started with AWS for
developers who just need virtual private servers. Lightsail includes
everything you need to launch your project quickly - a virtual machine,
SSD-based storage, data transfer, DNS management, and a static IP - for
a low, predictable price. You manage those Lightsail servers through
the Lightsail console or by using the API or command-line interface
(CLI).

For more information about Lightsail concepts and tasks, see the
Lightsail Dev Guide (https://lightsail.aws.amazon.com/ls/docs/all).

To use the Lightsail API or the CLI, you will need to use AWS Identity
and Access Management (IAM) to generate access keys. For details about
how to set this up, see the Lightsail Dev Guide
(http://lightsail.aws.amazon.com/ls/docs/how-to/article/lightsail-how-to-set-up-access-keys-to-use-sdk-api-cli).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28>


=head1 METHODS

=head2 AllocateStaticIp

=over

=item StaticIpName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::AllocateStaticIp>

Returns: a L<Paws::Lightsail::AllocateStaticIpResult> instance

Allocates a static IP address.


=head2 AttachDisk

=over

=item DiskName => Str

=item DiskPath => Str

=item InstanceName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::AttachDisk>

Returns: a L<Paws::Lightsail::AttachDiskResult> instance

Attaches a block storage disk to a running or stopped Lightsail
instance and exposes it to the instance with the specified disk name.

The C<attach disk> operation supports tag-based access control via
resource tags applied to the resource identified by diskName. For more
information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 AttachInstancesToLoadBalancer

=over

=item InstanceNames => ArrayRef[Str|Undef]

=item LoadBalancerName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::AttachInstancesToLoadBalancer>

Returns: a L<Paws::Lightsail::AttachInstancesToLoadBalancerResult> instance

Attaches one or more Lightsail instances to a load balancer.

After some time, the instances are attached to the load balancer and
the health check status is available.

The C<attach instances to load balancer> operation supports tag-based
access control via resource tags applied to the resource identified by
loadBalancerName. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 AttachLoadBalancerTlsCertificate

=over

=item CertificateName => Str

=item LoadBalancerName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::AttachLoadBalancerTlsCertificate>

Returns: a L<Paws::Lightsail::AttachLoadBalancerTlsCertificateResult> instance

Attaches a Transport Layer Security (TLS) certificate to your load
balancer. TLS is just an updated, more secure version of Secure Socket
Layer (SSL).

Once you create and validate your certificate, you can attach it to
your load balancer. You can also use this API to rotate the
certificates on your account. Use the
C<AttachLoadBalancerTlsCertificate> operation with the non-attached
certificate, and it will replace the existing one and become the
attached certificate.

The C<attach load balancer tls certificate> operation supports
tag-based access control via resource tags applied to the resource
identified by loadBalancerName. For more information, see the Lightsail
Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 AttachStaticIp

=over

=item InstanceName => Str

=item StaticIpName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::AttachStaticIp>

Returns: a L<Paws::Lightsail::AttachStaticIpResult> instance

Attaches a static IP address to a specific Amazon Lightsail instance.


=head2 CloseInstancePublicPorts

=over

=item InstanceName => Str

=item PortInfo => L<Paws::Lightsail::PortInfo>


=back

Each argument is described in detail in: L<Paws::Lightsail::CloseInstancePublicPorts>

Returns: a L<Paws::Lightsail::CloseInstancePublicPortsResult> instance

Closes the public ports on a specific Amazon Lightsail instance.

The C<close instance public ports> operation supports tag-based access
control via resource tags applied to the resource identified by
instanceName. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 CopySnapshot

=over

=item SourceRegion => Str

=item SourceSnapshotName => Str

=item TargetSnapshotName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::CopySnapshot>

Returns: a L<Paws::Lightsail::CopySnapshotResult> instance

Copies an instance or disk snapshot from one AWS Region to another in
Amazon Lightsail.


=head2 CreateCloudFormationStack

=over

=item Instances => ArrayRef[L<Paws::Lightsail::InstanceEntry>]


=back

Each argument is described in detail in: L<Paws::Lightsail::CreateCloudFormationStack>

Returns: a L<Paws::Lightsail::CreateCloudFormationStackResult> instance

Creates an AWS CloudFormation stack, which creates a new Amazon EC2
instance from an exported Amazon Lightsail snapshot. This operation
results in a CloudFormation stack record that can be used to track the
AWS CloudFormation stack created. Use the C<get cloud formation stack
records> operation to get a list of the CloudFormation stacks created.

Wait until after your new Amazon EC2 instance is created before running
the C<create cloud formation stack> operation again with the same
export snapshot record.


=head2 CreateDisk

=over

=item AvailabilityZone => Str

=item DiskName => Str

=item SizeInGb => Int

=item [Tags => ArrayRef[L<Paws::Lightsail::Tag>]]


=back

Each argument is described in detail in: L<Paws::Lightsail::CreateDisk>

Returns: a L<Paws::Lightsail::CreateDiskResult> instance

Creates a block storage disk that can be attached to a Lightsail
instance in the same Availability Zone (e.g., C<us-east-2a>). The disk
is created in the regional endpoint that you send the HTTP request to.
For more information, see Regions and Availability Zones in Lightsail
(https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail).

The C<create disk> operation supports tag-based access control via
request tags. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 CreateDiskFromSnapshot

=over

=item AvailabilityZone => Str

=item DiskName => Str

=item DiskSnapshotName => Str

=item SizeInGb => Int

=item [Tags => ArrayRef[L<Paws::Lightsail::Tag>]]


=back

Each argument is described in detail in: L<Paws::Lightsail::CreateDiskFromSnapshot>

Returns: a L<Paws::Lightsail::CreateDiskFromSnapshotResult> instance

Creates a block storage disk from a disk snapshot that can be attached
to a Lightsail instance in the same Availability Zone (e.g.,
C<us-east-2a>). The disk is created in the regional endpoint that you
send the HTTP request to. For more information, see Regions and
Availability Zones in Lightsail
(https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail).

The C<create disk from snapshot> operation supports tag-based access
control via request tags and resource tags applied to the resource
identified by diskSnapshotName. For more information, see the Lightsail
Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 CreateDiskSnapshot

=over

=item DiskSnapshotName => Str

=item [DiskName => Str]

=item [InstanceName => Str]

=item [Tags => ArrayRef[L<Paws::Lightsail::Tag>]]


=back

Each argument is described in detail in: L<Paws::Lightsail::CreateDiskSnapshot>

Returns: a L<Paws::Lightsail::CreateDiskSnapshotResult> instance

Creates a snapshot of a block storage disk. You can use snapshots for
backups, to make copies of disks, and to save data before shutting down
a Lightsail instance.

You can take a snapshot of an attached disk that is in use; however,
snapshots only capture data that has been written to your disk at the
time the snapshot command is issued. This may exclude any data that has
been cached by any applications or the operating system. If you can
pause any file systems on the disk long enough to take a snapshot, your
snapshot should be complete. Nevertheless, if you cannot pause all file
writes to the disk, you should unmount the disk from within the
Lightsail instance, issue the create disk snapshot command, and then
remount the disk to ensure a consistent and complete snapshot. You may
remount and use your disk while the snapshot status is pending.

You can also use this operation to create a snapshot of an instance's
system volume. You might want to do this, for example, to recover data
from the system volume of a botched instance or to create a backup of
the system volume like you would for a block storage disk. To create a
snapshot of a system volume, just define the C<instance name> parameter
when issuing the snapshot command, and a snapshot of the defined
instance's system volume will be created. After the snapshot is
available, you can create a block storage disk from the snapshot and
attach it to a running instance to access the data on the disk.

The C<create disk snapshot> operation supports tag-based access control
via request tags. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 CreateDomain

=over

=item DomainName => Str

=item [Tags => ArrayRef[L<Paws::Lightsail::Tag>]]


=back

Each argument is described in detail in: L<Paws::Lightsail::CreateDomain>

Returns: a L<Paws::Lightsail::CreateDomainResult> instance

Creates a domain resource for the specified domain (e.g., example.com).

The C<create domain> operation supports tag-based access control via
request tags. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 CreateDomainEntry

=over

=item DomainEntry => L<Paws::Lightsail::DomainEntry>

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::CreateDomainEntry>

Returns: a L<Paws::Lightsail::CreateDomainEntryResult> instance

Creates one of the following entry records associated with the domain:
A record, CNAME record, TXT record, or MX record.

The C<create domain entry> operation supports tag-based access control
via resource tags applied to the resource identified by domainName. For
more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 CreateInstances

=over

=item AvailabilityZone => Str

=item BlueprintId => Str

=item BundleId => Str

=item InstanceNames => ArrayRef[Str|Undef]

=item [CustomImageName => Str]

=item [KeyPairName => Str]

=item [Tags => ArrayRef[L<Paws::Lightsail::Tag>]]

=item [UserData => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::CreateInstances>

Returns: a L<Paws::Lightsail::CreateInstancesResult> instance

Creates one or more Amazon Lightsail virtual private servers, or
I<instances>. Create instances using active blueprints. Inactive
blueprints are listed to support customers with existing instances but
are not necessarily available for launch of new instances. Blueprints
are marked inactive when they become outdated due to operating system
updates or new application releases. Use the get blueprints operation
to return a list of available blueprints.

The C<create instances> operation supports tag-based access control via
request tags. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 CreateInstancesFromSnapshot

=over

=item AvailabilityZone => Str

=item BundleId => Str

=item InstanceNames => ArrayRef[Str|Undef]

=item InstanceSnapshotName => Str

=item [AttachedDiskMapping => L<Paws::Lightsail::AttachedDiskMap>]

=item [KeyPairName => Str]

=item [Tags => ArrayRef[L<Paws::Lightsail::Tag>]]

=item [UserData => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::CreateInstancesFromSnapshot>

Returns: a L<Paws::Lightsail::CreateInstancesFromSnapshotResult> instance

Uses a specific snapshot as a blueprint for creating one or more new
instances that are based on that identical configuration.

The C<create instances from snapshot> operation supports tag-based
access control via request tags and resource tags applied to the
resource identified by instanceSnapshotName. For more information, see
the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 CreateInstanceSnapshot

=over

=item InstanceName => Str

=item InstanceSnapshotName => Str

=item [Tags => ArrayRef[L<Paws::Lightsail::Tag>]]


=back

Each argument is described in detail in: L<Paws::Lightsail::CreateInstanceSnapshot>

Returns: a L<Paws::Lightsail::CreateInstanceSnapshotResult> instance

Creates a snapshot of a specific virtual private server, or
I<instance>. You can use a snapshot to create a new instance that is
based on that snapshot.

The C<create instance snapshot> operation supports tag-based access
control via request tags. For more information, see the Lightsail Dev
Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 CreateKeyPair

=over

=item KeyPairName => Str

=item [Tags => ArrayRef[L<Paws::Lightsail::Tag>]]


=back

Each argument is described in detail in: L<Paws::Lightsail::CreateKeyPair>

Returns: a L<Paws::Lightsail::CreateKeyPairResult> instance

Creates an SSH key pair.

The C<create key pair> operation supports tag-based access control via
request tags. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 CreateLoadBalancer

=over

=item InstancePort => Int

=item LoadBalancerName => Str

=item [CertificateAlternativeNames => ArrayRef[Str|Undef]]

=item [CertificateDomainName => Str]

=item [CertificateName => Str]

=item [HealthCheckPath => Str]

=item [Tags => ArrayRef[L<Paws::Lightsail::Tag>]]


=back

Each argument is described in detail in: L<Paws::Lightsail::CreateLoadBalancer>

Returns: a L<Paws::Lightsail::CreateLoadBalancerResult> instance

Creates a Lightsail load balancer. To learn more about deciding whether
to load balance your application, see Configure your Lightsail
instances for load balancing
(https://lightsail.aws.amazon.com/ls/docs/how-to/article/configure-lightsail-instances-for-load-balancing).
You can create up to 5 load balancers per AWS Region in your account.

When you create a load balancer, you can specify a unique name and port
settings. To change additional load balancer settings, use the
C<UpdateLoadBalancerAttribute> operation.

The C<create load balancer> operation supports tag-based access control
via request tags. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 CreateLoadBalancerTlsCertificate

=over

=item CertificateDomainName => Str

=item CertificateName => Str

=item LoadBalancerName => Str

=item [CertificateAlternativeNames => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::Lightsail::Tag>]]


=back

Each argument is described in detail in: L<Paws::Lightsail::CreateLoadBalancerTlsCertificate>

Returns: a L<Paws::Lightsail::CreateLoadBalancerTlsCertificateResult> instance

Creates a Lightsail load balancer TLS certificate.

TLS is just an updated, more secure version of Secure Socket Layer
(SSL).

The C<create load balancer tls certificate> operation supports
tag-based access control via resource tags applied to the resource
identified by loadBalancerName. For more information, see the Lightsail
Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 CreateRelationalDatabase

=over

=item MasterDatabaseName => Str

=item MasterUsername => Str

=item RelationalDatabaseBlueprintId => Str

=item RelationalDatabaseBundleId => Str

=item RelationalDatabaseName => Str

=item [AvailabilityZone => Str]

=item [MasterUserPassword => Str]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [PubliclyAccessible => Bool]

=item [Tags => ArrayRef[L<Paws::Lightsail::Tag>]]


=back

Each argument is described in detail in: L<Paws::Lightsail::CreateRelationalDatabase>

Returns: a L<Paws::Lightsail::CreateRelationalDatabaseResult> instance

Creates a new database in Amazon Lightsail.

The C<create relational database> operation supports tag-based access
control via request tags. For more information, see the Lightsail Dev
Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 CreateRelationalDatabaseFromSnapshot

=over

=item RelationalDatabaseName => Str

=item [AvailabilityZone => Str]

=item [PubliclyAccessible => Bool]

=item [RelationalDatabaseBundleId => Str]

=item [RelationalDatabaseSnapshotName => Str]

=item [RestoreTime => Str]

=item [SourceRelationalDatabaseName => Str]

=item [Tags => ArrayRef[L<Paws::Lightsail::Tag>]]

=item [UseLatestRestorableTime => Bool]


=back

Each argument is described in detail in: L<Paws::Lightsail::CreateRelationalDatabaseFromSnapshot>

Returns: a L<Paws::Lightsail::CreateRelationalDatabaseFromSnapshotResult> instance

Creates a new database from an existing database snapshot in Amazon
Lightsail.

You can create a new database from a snapshot in if something goes
wrong with your original database, or to change it to a different plan,
such as a high availability or standard plan.

The C<create relational database from snapshot> operation supports
tag-based access control via request tags and resource tags applied to
the resource identified by relationalDatabaseSnapshotName. For more
information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 CreateRelationalDatabaseSnapshot

=over

=item RelationalDatabaseName => Str

=item RelationalDatabaseSnapshotName => Str

=item [Tags => ArrayRef[L<Paws::Lightsail::Tag>]]


=back

Each argument is described in detail in: L<Paws::Lightsail::CreateRelationalDatabaseSnapshot>

Returns: a L<Paws::Lightsail::CreateRelationalDatabaseSnapshotResult> instance

Creates a snapshot of your database in Amazon Lightsail. You can use
snapshots for backups, to make copies of a database, and to save data
before deleting a database.

The C<create relational database snapshot> operation supports tag-based
access control via request tags. For more information, see the
Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 DeleteDisk

=over

=item DiskName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::DeleteDisk>

Returns: a L<Paws::Lightsail::DeleteDiskResult> instance

Deletes the specified block storage disk. The disk must be in the
C<available> state (not attached to a Lightsail instance).

The disk may remain in the C<deleting> state for several minutes.

The C<delete disk> operation supports tag-based access control via
resource tags applied to the resource identified by diskName. For more
information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 DeleteDiskSnapshot

=over

=item DiskSnapshotName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::DeleteDiskSnapshot>

Returns: a L<Paws::Lightsail::DeleteDiskSnapshotResult> instance

Deletes the specified disk snapshot.

When you make periodic snapshots of a disk, the snapshots are
incremental, and only the blocks on the device that have changed since
your last snapshot are saved in the new snapshot. When you delete a
snapshot, only the data not needed for any other snapshot is removed.
So regardless of which prior snapshots have been deleted, all active
snapshots will have access to all the information needed to restore the
disk.

The C<delete disk snapshot> operation supports tag-based access control
via resource tags applied to the resource identified by
diskSnapshotName. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 DeleteDomain

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::DeleteDomain>

Returns: a L<Paws::Lightsail::DeleteDomainResult> instance

Deletes the specified domain recordset and all of its domain records.

The C<delete domain> operation supports tag-based access control via
resource tags applied to the resource identified by domainName. For
more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 DeleteDomainEntry

=over

=item DomainEntry => L<Paws::Lightsail::DomainEntry>

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::DeleteDomainEntry>

Returns: a L<Paws::Lightsail::DeleteDomainEntryResult> instance

Deletes a specific domain entry.

The C<delete domain entry> operation supports tag-based access control
via resource tags applied to the resource identified by domainName. For
more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 DeleteInstance

=over

=item InstanceName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::DeleteInstance>

Returns: a L<Paws::Lightsail::DeleteInstanceResult> instance

Deletes a specific Amazon Lightsail virtual private server, or
I<instance>.

The C<delete instance> operation supports tag-based access control via
resource tags applied to the resource identified by instanceName. For
more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 DeleteInstanceSnapshot

=over

=item InstanceSnapshotName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::DeleteInstanceSnapshot>

Returns: a L<Paws::Lightsail::DeleteInstanceSnapshotResult> instance

Deletes a specific snapshot of a virtual private server (or
I<instance>).

The C<delete instance snapshot> operation supports tag-based access
control via resource tags applied to the resource identified by
instanceSnapshotName. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 DeleteKeyPair

=over

=item KeyPairName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::DeleteKeyPair>

Returns: a L<Paws::Lightsail::DeleteKeyPairResult> instance

Deletes a specific SSH key pair.

The C<delete key pair> operation supports tag-based access control via
resource tags applied to the resource identified by keyPairName. For
more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 DeleteLoadBalancer

=over

=item LoadBalancerName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::DeleteLoadBalancer>

Returns: a L<Paws::Lightsail::DeleteLoadBalancerResult> instance

Deletes a Lightsail load balancer and all its associated SSL/TLS
certificates. Once the load balancer is deleted, you will need to
create a new load balancer, create a new certificate, and verify domain
ownership again.

The C<delete load balancer> operation supports tag-based access control
via resource tags applied to the resource identified by
loadBalancerName. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 DeleteLoadBalancerTlsCertificate

=over

=item CertificateName => Str

=item LoadBalancerName => Str

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::Lightsail::DeleteLoadBalancerTlsCertificate>

Returns: a L<Paws::Lightsail::DeleteLoadBalancerTlsCertificateResult> instance

Deletes an SSL/TLS certificate associated with a Lightsail load
balancer.

The C<delete load balancer tls certificate> operation supports
tag-based access control via resource tags applied to the resource
identified by loadBalancerName. For more information, see the Lightsail
Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 DeleteRelationalDatabase

=over

=item RelationalDatabaseName => Str

=item [FinalRelationalDatabaseSnapshotName => Str]

=item [SkipFinalSnapshot => Bool]


=back

Each argument is described in detail in: L<Paws::Lightsail::DeleteRelationalDatabase>

Returns: a L<Paws::Lightsail::DeleteRelationalDatabaseResult> instance

Deletes a database in Amazon Lightsail.

The C<delete relational database> operation supports tag-based access
control via resource tags applied to the resource identified by
relationalDatabaseName. For more information, see the Lightsail Dev
Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 DeleteRelationalDatabaseSnapshot

=over

=item RelationalDatabaseSnapshotName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::DeleteRelationalDatabaseSnapshot>

Returns: a L<Paws::Lightsail::DeleteRelationalDatabaseSnapshotResult> instance

Deletes a database snapshot in Amazon Lightsail.

The C<delete relational database snapshot> operation supports tag-based
access control via resource tags applied to the resource identified by
relationalDatabaseName. For more information, see the Lightsail Dev
Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 DetachDisk

=over

=item DiskName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::DetachDisk>

Returns: a L<Paws::Lightsail::DetachDiskResult> instance

Detaches a stopped block storage disk from a Lightsail instance. Make
sure to unmount any file systems on the device within your operating
system before stopping the instance and detaching the disk.

The C<detach disk> operation supports tag-based access control via
resource tags applied to the resource identified by diskName. For more
information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 DetachInstancesFromLoadBalancer

=over

=item InstanceNames => ArrayRef[Str|Undef]

=item LoadBalancerName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::DetachInstancesFromLoadBalancer>

Returns: a L<Paws::Lightsail::DetachInstancesFromLoadBalancerResult> instance

Detaches the specified instances from a Lightsail load balancer.

This operation waits until the instances are no longer needed before
they are detached from the load balancer.

The C<detach instances from load balancer> operation supports tag-based
access control via resource tags applied to the resource identified by
loadBalancerName. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 DetachStaticIp

=over

=item StaticIpName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::DetachStaticIp>

Returns: a L<Paws::Lightsail::DetachStaticIpResult> instance

Detaches a static IP from the Amazon Lightsail instance to which it is
attached.


=head2 DownloadDefaultKeyPair






Each argument is described in detail in: L<Paws::Lightsail::DownloadDefaultKeyPair>

Returns: a L<Paws::Lightsail::DownloadDefaultKeyPairResult> instance

Downloads the default SSH key pair from the user's account.


=head2 ExportSnapshot

=over

=item SourceSnapshotName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::ExportSnapshot>

Returns: a L<Paws::Lightsail::ExportSnapshotResult> instance

Exports an Amazon Lightsail instance or block storage disk snapshot to
Amazon Elastic Compute Cloud (Amazon EC2). This operation results in an
export snapshot record that can be used with the C<create cloud
formation stack> operation to create new Amazon EC2 instances.

Exported instance snapshots appear in Amazon EC2 as Amazon Machine
Images (AMIs), and the instance system disk appears as an Amazon
Elastic Block Store (Amazon EBS) volume. Exported disk snapshots appear
in Amazon EC2 as Amazon EBS volumes. Snapshots are exported to the same
Amazon Web Services Region in Amazon EC2 as the source Lightsail
snapshot.

The C<export snapshot> operation supports tag-based access control via
resource tags applied to the resource identified by sourceSnapshotName.
For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).

Use the C<get instance snapshots> or C<get disk snapshots> operations
to get a list of snapshots that you can export to Amazon EC2.


=head2 GetActiveNames

=over

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetActiveNames>

Returns: a L<Paws::Lightsail::GetActiveNamesResult> instance

Returns the names of all active (not deleted) resources.


=head2 GetBlueprints

=over

=item [IncludeInactive => Bool]

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetBlueprints>

Returns: a L<Paws::Lightsail::GetBlueprintsResult> instance

Returns the list of available instance images, or I<blueprints>. You
can use a blueprint to create a new virtual private server already
running a specific operating system, as well as a preinstalled app or
development stack. The software each instance is running depends on the
blueprint image you choose.


=head2 GetBundles

=over

=item [IncludeInactive => Bool]

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetBundles>

Returns: a L<Paws::Lightsail::GetBundlesResult> instance

Returns the list of bundles that are available for purchase. A bundle
describes the specs for your virtual private server (or I<instance>).


=head2 GetCloudFormationStackRecords

=over

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetCloudFormationStackRecords>

Returns: a L<Paws::Lightsail::GetCloudFormationStackRecordsResult> instance

Returns the CloudFormation stack record created as a result of the
C<create cloud formation stack> operation.

An AWS CloudFormation stack is used to create a new Amazon EC2 instance
from an exported Lightsail snapshot.


=head2 GetDisk

=over

=item DiskName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetDisk>

Returns: a L<Paws::Lightsail::GetDiskResult> instance

Returns information about a specific block storage disk.


=head2 GetDisks

=over

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetDisks>

Returns: a L<Paws::Lightsail::GetDisksResult> instance

Returns information about all block storage disks in your AWS account
and region.

If you are describing a long list of disks, you can paginate the output
to make the list more manageable. You can use the pageToken and
nextPageToken values to retrieve the next items in the list.


=head2 GetDiskSnapshot

=over

=item DiskSnapshotName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetDiskSnapshot>

Returns: a L<Paws::Lightsail::GetDiskSnapshotResult> instance

Returns information about a specific block storage disk snapshot.


=head2 GetDiskSnapshots

=over

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetDiskSnapshots>

Returns: a L<Paws::Lightsail::GetDiskSnapshotsResult> instance

Returns information about all block storage disk snapshots in your AWS
account and region.

If you are describing a long list of disk snapshots, you can paginate
the output to make the list more manageable. You can use the pageToken
and nextPageToken values to retrieve the next items in the list.


=head2 GetDomain

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetDomain>

Returns: a L<Paws::Lightsail::GetDomainResult> instance

Returns information about a specific domain recordset.


=head2 GetDomains

=over

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetDomains>

Returns: a L<Paws::Lightsail::GetDomainsResult> instance

Returns a list of all domains in the user's account.


=head2 GetExportSnapshotRecords

=over

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetExportSnapshotRecords>

Returns: a L<Paws::Lightsail::GetExportSnapshotRecordsResult> instance

Returns the export snapshot record created as a result of the C<export
snapshot> operation.

An export snapshot record can be used to create a new Amazon EC2
instance and its related resources with the C<create cloud formation
stack> operation.


=head2 GetInstance

=over

=item InstanceName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetInstance>

Returns: a L<Paws::Lightsail::GetInstanceResult> instance

Returns information about a specific Amazon Lightsail instance, which
is a virtual private server.


=head2 GetInstanceAccessDetails

=over

=item InstanceName => Str

=item [Protocol => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetInstanceAccessDetails>

Returns: a L<Paws::Lightsail::GetInstanceAccessDetailsResult> instance

Returns temporary SSH keys you can use to connect to a specific virtual
private server, or I<instance>.

The C<get instance access details> operation supports tag-based access
control via resource tags applied to the resource identified by
instanceName. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 GetInstanceMetricData

=over

=item EndTime => Str

=item InstanceName => Str

=item MetricName => Str

=item Period => Int

=item StartTime => Str

=item Statistics => ArrayRef[Str|Undef]

=item Unit => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetInstanceMetricData>

Returns: a L<Paws::Lightsail::GetInstanceMetricDataResult> instance

Returns the data points for the specified Amazon Lightsail instance
metric, given an instance name.


=head2 GetInstancePortStates

=over

=item InstanceName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetInstancePortStates>

Returns: a L<Paws::Lightsail::GetInstancePortStatesResult> instance

Returns the port states for a specific virtual private server, or
I<instance>.


=head2 GetInstances

=over

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetInstances>

Returns: a L<Paws::Lightsail::GetInstancesResult> instance

Returns information about all Amazon Lightsail virtual private servers,
or I<instances>.


=head2 GetInstanceSnapshot

=over

=item InstanceSnapshotName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetInstanceSnapshot>

Returns: a L<Paws::Lightsail::GetInstanceSnapshotResult> instance

Returns information about a specific instance snapshot.


=head2 GetInstanceSnapshots

=over

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetInstanceSnapshots>

Returns: a L<Paws::Lightsail::GetInstanceSnapshotsResult> instance

Returns all instance snapshots for the user's account.


=head2 GetInstanceState

=over

=item InstanceName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetInstanceState>

Returns: a L<Paws::Lightsail::GetInstanceStateResult> instance

Returns the state of a specific instance. Works on one instance at a
time.


=head2 GetKeyPair

=over

=item KeyPairName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetKeyPair>

Returns: a L<Paws::Lightsail::GetKeyPairResult> instance

Returns information about a specific key pair.


=head2 GetKeyPairs

=over

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetKeyPairs>

Returns: a L<Paws::Lightsail::GetKeyPairsResult> instance

Returns information about all key pairs in the user's account.


=head2 GetLoadBalancer

=over

=item LoadBalancerName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetLoadBalancer>

Returns: a L<Paws::Lightsail::GetLoadBalancerResult> instance

Returns information about the specified Lightsail load balancer.


=head2 GetLoadBalancerMetricData

=over

=item EndTime => Str

=item LoadBalancerName => Str

=item MetricName => Str

=item Period => Int

=item StartTime => Str

=item Statistics => ArrayRef[Str|Undef]

=item Unit => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetLoadBalancerMetricData>

Returns: a L<Paws::Lightsail::GetLoadBalancerMetricDataResult> instance

Returns information about health metrics for your Lightsail load
balancer.


=head2 GetLoadBalancers

=over

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetLoadBalancers>

Returns: a L<Paws::Lightsail::GetLoadBalancersResult> instance

Returns information about all load balancers in an account.

If you are describing a long list of load balancers, you can paginate
the output to make the list more manageable. You can use the pageToken
and nextPageToken values to retrieve the next items in the list.


=head2 GetLoadBalancerTlsCertificates

=over

=item LoadBalancerName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetLoadBalancerTlsCertificates>

Returns: a L<Paws::Lightsail::GetLoadBalancerTlsCertificatesResult> instance

Returns information about the TLS certificates that are associated with
the specified Lightsail load balancer.

TLS is just an updated, more secure version of Secure Socket Layer
(SSL).

You can have a maximum of 2 certificates associated with a Lightsail
load balancer. One is active and the other is inactive.


=head2 GetOperation

=over

=item OperationId => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetOperation>

Returns: a L<Paws::Lightsail::GetOperationResult> instance

Returns information about a specific operation. Operations include
events such as when you create an instance, allocate a static IP,
attach a static IP, and so on.


=head2 GetOperations

=over

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetOperations>

Returns: a L<Paws::Lightsail::GetOperationsResult> instance

Returns information about all operations.

Results are returned from oldest to newest, up to a maximum of 200.
Results can be paged by making each subsequent call to C<GetOperations>
use the maximum (last) C<statusChangedAt> value from the previous
request.


=head2 GetOperationsForResource

=over

=item ResourceName => Str

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetOperationsForResource>

Returns: a L<Paws::Lightsail::GetOperationsForResourceResult> instance

Gets operations for a specific resource (e.g., an instance or a static
IP).


=head2 GetRegions

=over

=item [IncludeAvailabilityZones => Bool]

=item [IncludeRelationalDatabaseAvailabilityZones => Bool]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetRegions>

Returns: a L<Paws::Lightsail::GetRegionsResult> instance

Returns a list of all valid regions for Amazon Lightsail. Use the
C<include availability zones> parameter to also return the Availability
Zones in a region.


=head2 GetRelationalDatabase

=over

=item RelationalDatabaseName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetRelationalDatabase>

Returns: a L<Paws::Lightsail::GetRelationalDatabaseResult> instance

Returns information about a specific database in Amazon Lightsail.


=head2 GetRelationalDatabaseBlueprints

=over

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetRelationalDatabaseBlueprints>

Returns: a L<Paws::Lightsail::GetRelationalDatabaseBlueprintsResult> instance

Returns a list of available database blueprints in Amazon Lightsail. A
blueprint describes the major engine version of a database.

You can use a blueprint ID to create a new database that runs a
specific database engine.


=head2 GetRelationalDatabaseBundles

=over

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetRelationalDatabaseBundles>

Returns: a L<Paws::Lightsail::GetRelationalDatabaseBundlesResult> instance

Returns the list of bundles that are available in Amazon Lightsail. A
bundle describes the performance specifications for a database.

You can use a bundle ID to create a new database with explicit
performance specifications.


=head2 GetRelationalDatabaseEvents

=over

=item RelationalDatabaseName => Str

=item [DurationInMinutes => Int]

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetRelationalDatabaseEvents>

Returns: a L<Paws::Lightsail::GetRelationalDatabaseEventsResult> instance

Returns a list of events for a specific database in Amazon Lightsail.


=head2 GetRelationalDatabaseLogEvents

=over

=item LogStreamName => Str

=item RelationalDatabaseName => Str

=item [EndTime => Str]

=item [PageToken => Str]

=item [StartFromHead => Bool]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetRelationalDatabaseLogEvents>

Returns: a L<Paws::Lightsail::GetRelationalDatabaseLogEventsResult> instance

Returns a list of log events for a database in Amazon Lightsail.


=head2 GetRelationalDatabaseLogStreams

=over

=item RelationalDatabaseName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetRelationalDatabaseLogStreams>

Returns: a L<Paws::Lightsail::GetRelationalDatabaseLogStreamsResult> instance

Returns a list of available log streams for a specific database in
Amazon Lightsail.


=head2 GetRelationalDatabaseMasterUserPassword

=over

=item RelationalDatabaseName => Str

=item [PasswordVersion => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetRelationalDatabaseMasterUserPassword>

Returns: a L<Paws::Lightsail::GetRelationalDatabaseMasterUserPasswordResult> instance

Returns the current, previous, or pending versions of the master user
password for a Lightsail database.

The C<asdf> operation GetRelationalDatabaseMasterUserPassword supports
tag-based access control via resource tags applied to the resource
identified by relationalDatabaseName.


=head2 GetRelationalDatabaseMetricData

=over

=item EndTime => Str

=item MetricName => Str

=item Period => Int

=item RelationalDatabaseName => Str

=item StartTime => Str

=item Statistics => ArrayRef[Str|Undef]

=item Unit => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetRelationalDatabaseMetricData>

Returns: a L<Paws::Lightsail::GetRelationalDatabaseMetricDataResult> instance

Returns the data points of the specified metric for a database in
Amazon Lightsail.


=head2 GetRelationalDatabaseParameters

=over

=item RelationalDatabaseName => Str

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetRelationalDatabaseParameters>

Returns: a L<Paws::Lightsail::GetRelationalDatabaseParametersResult> instance

Returns all of the runtime parameters offered by the underlying
database software, or engine, for a specific database in Amazon
Lightsail.

In addition to the parameter names and values, this operation returns
other information about each parameter. This information includes
whether changes require a reboot, whether the parameter is modifiable,
the allowed values, and the data types.


=head2 GetRelationalDatabases

=over

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetRelationalDatabases>

Returns: a L<Paws::Lightsail::GetRelationalDatabasesResult> instance

Returns information about all of your databases in Amazon Lightsail.


=head2 GetRelationalDatabaseSnapshot

=over

=item RelationalDatabaseSnapshotName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetRelationalDatabaseSnapshot>

Returns: a L<Paws::Lightsail::GetRelationalDatabaseSnapshotResult> instance

Returns information about a specific database snapshot in Amazon
Lightsail.


=head2 GetRelationalDatabaseSnapshots

=over

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetRelationalDatabaseSnapshots>

Returns: a L<Paws::Lightsail::GetRelationalDatabaseSnapshotsResult> instance

Returns information about all of your database snapshots in Amazon
Lightsail.


=head2 GetStaticIp

=over

=item StaticIpName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::GetStaticIp>

Returns: a L<Paws::Lightsail::GetStaticIpResult> instance

Returns information about a specific static IP.


=head2 GetStaticIps

=over

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::GetStaticIps>

Returns: a L<Paws::Lightsail::GetStaticIpsResult> instance

Returns information about all static IPs in the user's account.


=head2 ImportKeyPair

=over

=item KeyPairName => Str

=item PublicKeyBase64 => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::ImportKeyPair>

Returns: a L<Paws::Lightsail::ImportKeyPairResult> instance

Imports a public SSH key from a specific key pair.


=head2 IsVpcPeered






Each argument is described in detail in: L<Paws::Lightsail::IsVpcPeered>

Returns: a L<Paws::Lightsail::IsVpcPeeredResult> instance

Returns a Boolean value indicating whether your Lightsail VPC is
peered.


=head2 OpenInstancePublicPorts

=over

=item InstanceName => Str

=item PortInfo => L<Paws::Lightsail::PortInfo>


=back

Each argument is described in detail in: L<Paws::Lightsail::OpenInstancePublicPorts>

Returns: a L<Paws::Lightsail::OpenInstancePublicPortsResult> instance

Adds public ports to an Amazon Lightsail instance.

The C<open instance public ports> operation supports tag-based access
control via resource tags applied to the resource identified by
instanceName. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 PeerVpc






Each argument is described in detail in: L<Paws::Lightsail::PeerVpc>

Returns: a L<Paws::Lightsail::PeerVpcResult> instance

Tries to peer the Lightsail VPC with the user's default VPC.


=head2 PutInstancePublicPorts

=over

=item InstanceName => Str

=item PortInfos => ArrayRef[L<Paws::Lightsail::PortInfo>]


=back

Each argument is described in detail in: L<Paws::Lightsail::PutInstancePublicPorts>

Returns: a L<Paws::Lightsail::PutInstancePublicPortsResult> instance

Sets the specified open ports for an Amazon Lightsail instance, and
closes all ports for every protocol not included in the current
request.

The C<put instance public ports> operation supports tag-based access
control via resource tags applied to the resource identified by
instanceName. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 RebootInstance

=over

=item InstanceName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::RebootInstance>

Returns: a L<Paws::Lightsail::RebootInstanceResult> instance

Restarts a specific instance.

The C<reboot instance> operation supports tag-based access control via
resource tags applied to the resource identified by instanceName. For
more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 RebootRelationalDatabase

=over

=item RelationalDatabaseName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::RebootRelationalDatabase>

Returns: a L<Paws::Lightsail::RebootRelationalDatabaseResult> instance

Restarts a specific database in Amazon Lightsail.

The C<reboot relational database> operation supports tag-based access
control via resource tags applied to the resource identified by
relationalDatabaseName. For more information, see the Lightsail Dev
Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 ReleaseStaticIp

=over

=item StaticIpName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::ReleaseStaticIp>

Returns: a L<Paws::Lightsail::ReleaseStaticIpResult> instance

Deletes a specific static IP from your account.


=head2 StartInstance

=over

=item InstanceName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::StartInstance>

Returns: a L<Paws::Lightsail::StartInstanceResult> instance

Starts a specific Amazon Lightsail instance from a stopped state. To
restart an instance, use the C<reboot instance> operation.

When you start a stopped instance, Lightsail assigns a new public IP
address to the instance. To use the same IP address after stopping and
starting an instance, create a static IP address and attach it to the
instance. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/lightsail-create-static-ip).

The C<start instance> operation supports tag-based access control via
resource tags applied to the resource identified by instanceName. For
more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 StartRelationalDatabase

=over

=item RelationalDatabaseName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::StartRelationalDatabase>

Returns: a L<Paws::Lightsail::StartRelationalDatabaseResult> instance

Starts a specific database from a stopped state in Amazon Lightsail. To
restart a database, use the C<reboot relational database> operation.

The C<start relational database> operation supports tag-based access
control via resource tags applied to the resource identified by
relationalDatabaseName. For more information, see the Lightsail Dev
Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 StopInstance

=over

=item InstanceName => Str

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::Lightsail::StopInstance>

Returns: a L<Paws::Lightsail::StopInstanceResult> instance

Stops a specific Amazon Lightsail instance that is currently running.

When you start a stopped instance, Lightsail assigns a new public IP
address to the instance. To use the same IP address after stopping and
starting an instance, create a static IP address and attach it to the
instance. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/lightsail-create-static-ip).

The C<stop instance> operation supports tag-based access control via
resource tags applied to the resource identified by instanceName. For
more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 StopRelationalDatabase

=over

=item RelationalDatabaseName => Str

=item [RelationalDatabaseSnapshotName => Str]


=back

Each argument is described in detail in: L<Paws::Lightsail::StopRelationalDatabase>

Returns: a L<Paws::Lightsail::StopRelationalDatabaseResult> instance

Stops a specific database that is currently running in Amazon
Lightsail.

The C<stop relational database> operation supports tag-based access
control via resource tags applied to the resource identified by
relationalDatabaseName. For more information, see the Lightsail Dev
Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 TagResource

=over

=item ResourceName => Str

=item Tags => ArrayRef[L<Paws::Lightsail::Tag>]


=back

Each argument is described in detail in: L<Paws::Lightsail::TagResource>

Returns: a L<Paws::Lightsail::TagResourceResult> instance

Adds one or more tags to the specified Amazon Lightsail resource. Each
resource can have a maximum of 50 tags. Each tag consists of a key and
an optional value. Tag keys must be unique per resource. For more
information about tags, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags).

The C<tag resource> operation supports tag-based access control via
request tags and resource tags applied to the resource identified by
resourceName. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 UnpeerVpc






Each argument is described in detail in: L<Paws::Lightsail::UnpeerVpc>

Returns: a L<Paws::Lightsail::UnpeerVpcResult> instance

Attempts to unpeer the Lightsail VPC from the user's default VPC.


=head2 UntagResource

=over

=item ResourceName => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Lightsail::UntagResource>

Returns: a L<Paws::Lightsail::UntagResourceResult> instance

Deletes the specified set of tag keys and their values from the
specified Amazon Lightsail resource.

The C<untag resource> operation supports tag-based access control via
request tags and resource tags applied to the resource identified by
resourceName. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 UpdateDomainEntry

=over

=item DomainEntry => L<Paws::Lightsail::DomainEntry>

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::UpdateDomainEntry>

Returns: a L<Paws::Lightsail::UpdateDomainEntryResult> instance

Updates a domain recordset after it is created.

The C<update domain entry> operation supports tag-based access control
via resource tags applied to the resource identified by domainName. For
more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 UpdateLoadBalancerAttribute

=over

=item AttributeName => Str

=item AttributeValue => Str

=item LoadBalancerName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::UpdateLoadBalancerAttribute>

Returns: a L<Paws::Lightsail::UpdateLoadBalancerAttributeResult> instance

Updates the specified attribute for a load balancer. You can only
update one attribute at a time.

The C<update load balancer attribute> operation supports tag-based
access control via resource tags applied to the resource identified by
loadBalancerName. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 UpdateRelationalDatabase

=over

=item RelationalDatabaseName => Str

=item [ApplyImmediately => Bool]

=item [DisableBackupRetention => Bool]

=item [EnableBackupRetention => Bool]

=item [MasterUserPassword => Str]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [PubliclyAccessible => Bool]

=item [RotateMasterUserPassword => Bool]


=back

Each argument is described in detail in: L<Paws::Lightsail::UpdateRelationalDatabase>

Returns: a L<Paws::Lightsail::UpdateRelationalDatabaseResult> instance

Allows the update of one or more attributes of a database in Amazon
Lightsail.

Updates are applied immediately, or in cases where the updates could
result in an outage, are applied during the database's predefined
maintenance window.

The C<update relational database> operation supports tag-based access
control via resource tags applied to the resource identified by
relationalDatabaseName. For more information, see the Lightsail Dev
Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).


=head2 UpdateRelationalDatabaseParameters

=over

=item Parameters => ArrayRef[L<Paws::Lightsail::RelationalDatabaseParameter>]

=item RelationalDatabaseName => Str


=back

Each argument is described in detail in: L<Paws::Lightsail::UpdateRelationalDatabaseParameters>

Returns: a L<Paws::Lightsail::UpdateRelationalDatabaseParametersResult> instance

Allows the update of one or more parameters of a database in Amazon
Lightsail.

Parameter updates don't cause outages; therefore, their application is
not subject to the preferred maintenance window. However, there are two
ways in which paramater updates are applied: C<dynamic> or
C<pending-reboot>. Parameters marked with a C<dynamic> apply type are
applied immediately. Parameters marked with a C<pending-reboot> apply
type are applied only after the database is rebooted using the C<reboot
relational database> operation.

The C<update relational database parameters> operation supports
tag-based access control via resource tags applied to the resource
identified by relationalDatabaseName. For more information, see the
Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllActiveNames(sub { },[PageToken => Str])

=head2 GetAllActiveNames([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - activeNames, passing the object as the first parameter, and the string 'activeNames' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetActiveNamesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllBlueprints(sub { },[IncludeInactive => Bool, PageToken => Str])

=head2 GetAllBlueprints([IncludeInactive => Bool, PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - blueprints, passing the object as the first parameter, and the string 'blueprints' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetBlueprintsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllBundles(sub { },[IncludeInactive => Bool, PageToken => Str])

=head2 GetAllBundles([IncludeInactive => Bool, PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - bundles, passing the object as the first parameter, and the string 'bundles' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetBundlesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllCloudFormationStackRecords(sub { },[PageToken => Str])

=head2 GetAllCloudFormationStackRecords([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - cloudFormationStackRecords, passing the object as the first parameter, and the string 'cloudFormationStackRecords' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetCloudFormationStackRecordsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDisks(sub { },[PageToken => Str])

=head2 GetAllDisks([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - disks, passing the object as the first parameter, and the string 'disks' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetDisksResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDiskSnapshots(sub { },[PageToken => Str])

=head2 GetAllDiskSnapshots([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - diskSnapshots, passing the object as the first parameter, and the string 'diskSnapshots' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetDiskSnapshotsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDomains(sub { },[PageToken => Str])

=head2 GetAllDomains([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - domains, passing the object as the first parameter, and the string 'domains' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetDomainsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllExportSnapshotRecords(sub { },[PageToken => Str])

=head2 GetAllExportSnapshotRecords([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - exportSnapshotRecords, passing the object as the first parameter, and the string 'exportSnapshotRecords' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetExportSnapshotRecordsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllInstances(sub { },[PageToken => Str])

=head2 GetAllInstances([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - instances, passing the object as the first parameter, and the string 'instances' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetInstancesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllInstanceSnapshots(sub { },[PageToken => Str])

=head2 GetAllInstanceSnapshots([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - instanceSnapshots, passing the object as the first parameter, and the string 'instanceSnapshots' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetInstanceSnapshotsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllKeyPairs(sub { },[PageToken => Str])

=head2 GetAllKeyPairs([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - keyPairs, passing the object as the first parameter, and the string 'keyPairs' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetKeyPairsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllLoadBalancers(sub { },[PageToken => Str])

=head2 GetAllLoadBalancers([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - loadBalancers, passing the object as the first parameter, and the string 'loadBalancers' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetLoadBalancersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllOperations(sub { },[PageToken => Str])

=head2 GetAllOperations([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - operations, passing the object as the first parameter, and the string 'operations' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetOperationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllRelationalDatabaseBlueprints(sub { },[PageToken => Str])

=head2 GetAllRelationalDatabaseBlueprints([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - blueprints, passing the object as the first parameter, and the string 'blueprints' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetRelationalDatabaseBlueprintsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllRelationalDatabaseBundles(sub { },[PageToken => Str])

=head2 GetAllRelationalDatabaseBundles([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - bundles, passing the object as the first parameter, and the string 'bundles' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetRelationalDatabaseBundlesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllRelationalDatabaseEvents(sub { },RelationalDatabaseName => Str, [DurationInMinutes => Int, PageToken => Str])

=head2 GetAllRelationalDatabaseEvents(RelationalDatabaseName => Str, [DurationInMinutes => Int, PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - relationalDatabaseEvents, passing the object as the first parameter, and the string 'relationalDatabaseEvents' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetRelationalDatabaseEventsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllRelationalDatabaseParameters(sub { },RelationalDatabaseName => Str, [PageToken => Str])

=head2 GetAllRelationalDatabaseParameters(RelationalDatabaseName => Str, [PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - parameters, passing the object as the first parameter, and the string 'parameters' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetRelationalDatabaseParametersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllRelationalDatabases(sub { },[PageToken => Str])

=head2 GetAllRelationalDatabases([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - relationalDatabases, passing the object as the first parameter, and the string 'relationalDatabases' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetRelationalDatabasesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllRelationalDatabaseSnapshots(sub { },[PageToken => Str])

=head2 GetAllRelationalDatabaseSnapshots([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - relationalDatabaseSnapshots, passing the object as the first parameter, and the string 'relationalDatabaseSnapshots' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetRelationalDatabaseSnapshotsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllStaticIps(sub { },[PageToken => Str])

=head2 GetAllStaticIps([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - staticIps, passing the object as the first parameter, and the string 'staticIps' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetStaticIpsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

