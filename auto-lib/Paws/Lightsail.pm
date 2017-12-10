package Paws::Lightsail;
  use Moose;
  sub service { 'lightsail' }
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
  sub StopInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::StopInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnpeerVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lightsail::UnpeerVpc', @_);
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


  sub operations { qw/AllocateStaticIp AttachDisk AttachInstancesToLoadBalancer AttachLoadBalancerTlsCertificate AttachStaticIp CloseInstancePublicPorts CreateDisk CreateDiskFromSnapshot CreateDiskSnapshot CreateDomain CreateDomainEntry CreateInstances CreateInstancesFromSnapshot CreateInstanceSnapshot CreateKeyPair CreateLoadBalancer CreateLoadBalancerTlsCertificate DeleteDisk DeleteDiskSnapshot DeleteDomain DeleteDomainEntry DeleteInstance DeleteInstanceSnapshot DeleteKeyPair DeleteLoadBalancer DeleteLoadBalancerTlsCertificate DetachDisk DetachInstancesFromLoadBalancer DetachStaticIp DownloadDefaultKeyPair GetActiveNames GetBlueprints GetBundles GetDisk GetDisks GetDiskSnapshot GetDiskSnapshots GetDomain GetDomains GetInstance GetInstanceAccessDetails GetInstanceMetricData GetInstancePortStates GetInstances GetInstanceSnapshot GetInstanceSnapshots GetInstanceState GetKeyPair GetKeyPairs GetLoadBalancer GetLoadBalancerMetricData GetLoadBalancers GetLoadBalancerTlsCertificates GetOperation GetOperations GetOperationsForResource GetRegions GetStaticIp GetStaticIps ImportKeyPair IsVpcPeered OpenInstancePublicPorts PeerVpc PutInstancePublicPorts RebootInstance ReleaseStaticIp StartInstance StopInstance UnpeerVpc UpdateDomainEntry UpdateLoadBalancerAttribute / }

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

=head1 METHODS

=head2 AllocateStaticIp(StaticIpName => Str)

Each argument is described in detail in: L<Paws::Lightsail::AllocateStaticIp>

Returns: a L<Paws::Lightsail::AllocateStaticIpResult> instance

Allocates a static IP address.


=head2 AttachDisk(DiskName => Str, DiskPath => Str, InstanceName => Str)

Each argument is described in detail in: L<Paws::Lightsail::AttachDisk>

Returns: a L<Paws::Lightsail::AttachDiskResult> instance

Attaches a block storage disk to a running or stopped Lightsail
instance and exposes it to the instance with the specified disk name.


=head2 AttachInstancesToLoadBalancer(InstanceNames => ArrayRef[Str|Undef], LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::Lightsail::AttachInstancesToLoadBalancer>

Returns: a L<Paws::Lightsail::AttachInstancesToLoadBalancerResult> instance

Attaches one or more Lightsail instances to a load balancer.


=head2 AttachLoadBalancerTlsCertificate(CertificateName => Str, LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::Lightsail::AttachLoadBalancerTlsCertificate>

Returns: a L<Paws::Lightsail::AttachLoadBalancerTlsCertificateResult> instance

Attaches a Transport Layer Security (TLS) certificate to your load
balancer.

TLS is just an updated, more secure version of Secure Socket Layer
(SSL).


=head2 AttachStaticIp(InstanceName => Str, StaticIpName => Str)

Each argument is described in detail in: L<Paws::Lightsail::AttachStaticIp>

Returns: a L<Paws::Lightsail::AttachStaticIpResult> instance

Attaches a static IP address to a specific Amazon Lightsail instance.


=head2 CloseInstancePublicPorts(InstanceName => Str, PortInfo => L<Paws::Lightsail::PortInfo>)

Each argument is described in detail in: L<Paws::Lightsail::CloseInstancePublicPorts>

Returns: a L<Paws::Lightsail::CloseInstancePublicPortsResult> instance

Closes the public ports on a specific Amazon Lightsail instance.


=head2 CreateDisk(AvailabilityZone => Str, DiskName => Str, SizeInGb => Int)

Each argument is described in detail in: L<Paws::Lightsail::CreateDisk>

Returns: a L<Paws::Lightsail::CreateDiskResult> instance

Creates a block storage disk that can be attached to a Lightsail
instance in the same Availability Zone (e.g., C<us-east-2a>). The disk
is created in the regional endpoint that you send the HTTP request to.
For more information, see Regions and Availability Zones in Lightsail
(https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail).


=head2 CreateDiskFromSnapshot(AvailabilityZone => Str, DiskName => Str, DiskSnapshotName => Str, SizeInGb => Int)

Each argument is described in detail in: L<Paws::Lightsail::CreateDiskFromSnapshot>

Returns: a L<Paws::Lightsail::CreateDiskFromSnapshotResult> instance

Creates a block storage disk from a disk snapshot that can be attached
to a Lightsail instance in the same Availability Zone (e.g.,
C<us-east-2a>). The disk is created in the regional endpoint that you
send the HTTP request to. For more information, see Regions and
Availability Zones in Lightsail
(https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail).


=head2 CreateDiskSnapshot(DiskName => Str, DiskSnapshotName => Str)

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


=head2 CreateDomain(DomainName => Str)

Each argument is described in detail in: L<Paws::Lightsail::CreateDomain>

Returns: a L<Paws::Lightsail::CreateDomainResult> instance

Creates a domain resource for the specified domain (e.g., example.com).


=head2 CreateDomainEntry(DomainEntry => L<Paws::Lightsail::DomainEntry>, DomainName => Str)

Each argument is described in detail in: L<Paws::Lightsail::CreateDomainEntry>

Returns: a L<Paws::Lightsail::CreateDomainEntryResult> instance

Creates one of the following entry records associated with the domain:
A record, CNAME record, TXT record, or MX record.


=head2 CreateInstances(AvailabilityZone => Str, BlueprintId => Str, BundleId => Str, InstanceNames => ArrayRef[Str|Undef], [CustomImageName => Str, KeyPairName => Str, UserData => Str])

Each argument is described in detail in: L<Paws::Lightsail::CreateInstances>

Returns: a L<Paws::Lightsail::CreateInstancesResult> instance

Creates one or more Amazon Lightsail virtual private servers, or
I<instances>.


=head2 CreateInstancesFromSnapshot(AvailabilityZone => Str, BundleId => Str, InstanceNames => ArrayRef[Str|Undef], InstanceSnapshotName => Str, [AttachedDiskMapping => L<Paws::Lightsail::AttachedDiskMap>, KeyPairName => Str, UserData => Str])

Each argument is described in detail in: L<Paws::Lightsail::CreateInstancesFromSnapshot>

Returns: a L<Paws::Lightsail::CreateInstancesFromSnapshotResult> instance

Uses a specific snapshot as a blueprint for creating one or more new
instances that are based on that identical configuration.


=head2 CreateInstanceSnapshot(InstanceName => Str, InstanceSnapshotName => Str)

Each argument is described in detail in: L<Paws::Lightsail::CreateInstanceSnapshot>

Returns: a L<Paws::Lightsail::CreateInstanceSnapshotResult> instance

Creates a snapshot of a specific virtual private server, or
I<instance>. You can use a snapshot to create a new instance that is
based on that snapshot.


=head2 CreateKeyPair(KeyPairName => Str)

Each argument is described in detail in: L<Paws::Lightsail::CreateKeyPair>

Returns: a L<Paws::Lightsail::CreateKeyPairResult> instance

Creates sn SSH key pair.


=head2 CreateLoadBalancer(InstancePort => Int, LoadBalancerName => Str, [CertificateAlternativeNames => ArrayRef[Str|Undef], CertificateDomainName => Str, CertificateName => Str, HealthCheckPath => Str])

Each argument is described in detail in: L<Paws::Lightsail::CreateLoadBalancer>

Returns: a L<Paws::Lightsail::CreateLoadBalancerResult> instance

Creates a Lightsail load balancer.

When you create a load balancer, you can specify certificates and port
settings. You can create up to 5 load balancers per AWS Region in your
account.


=head2 CreateLoadBalancerTlsCertificate(CertificateDomainName => Str, CertificateName => Str, LoadBalancerName => Str, [CertificateAlternativeNames => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::Lightsail::CreateLoadBalancerTlsCertificate>

Returns: a L<Paws::Lightsail::CreateLoadBalancerTlsCertificateResult> instance

Creates a Lightsail load balancer TLS certificate.

TLS is just an updated, more secure version of Secure Socket Layer
(SSL).


=head2 DeleteDisk(DiskName => Str)

Each argument is described in detail in: L<Paws::Lightsail::DeleteDisk>

Returns: a L<Paws::Lightsail::DeleteDiskResult> instance

Deletes the specified block storage disk. The disk must be in the
C<available> state (not attached to a Lightsail instance).

The disk may remain in the C<deleting> state for several minutes.


=head2 DeleteDiskSnapshot(DiskSnapshotName => Str)

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


=head2 DeleteDomain(DomainName => Str)

Each argument is described in detail in: L<Paws::Lightsail::DeleteDomain>

Returns: a L<Paws::Lightsail::DeleteDomainResult> instance

Deletes the specified domain recordset and all of its domain records.


=head2 DeleteDomainEntry(DomainEntry => L<Paws::Lightsail::DomainEntry>, DomainName => Str)

Each argument is described in detail in: L<Paws::Lightsail::DeleteDomainEntry>

Returns: a L<Paws::Lightsail::DeleteDomainEntryResult> instance

Deletes a specific domain entry.


=head2 DeleteInstance(InstanceName => Str)

Each argument is described in detail in: L<Paws::Lightsail::DeleteInstance>

Returns: a L<Paws::Lightsail::DeleteInstanceResult> instance

Deletes a specific Amazon Lightsail virtual private server, or
I<instance>.


=head2 DeleteInstanceSnapshot(InstanceSnapshotName => Str)

Each argument is described in detail in: L<Paws::Lightsail::DeleteInstanceSnapshot>

Returns: a L<Paws::Lightsail::DeleteInstanceSnapshotResult> instance

Deletes a specific snapshot of a virtual private server (or
I<instance>).


=head2 DeleteKeyPair(KeyPairName => Str)

Each argument is described in detail in: L<Paws::Lightsail::DeleteKeyPair>

Returns: a L<Paws::Lightsail::DeleteKeyPairResult> instance

Deletes a specific SSH key pair.


=head2 DeleteLoadBalancer(LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::Lightsail::DeleteLoadBalancer>

Returns: a L<Paws::Lightsail::DeleteLoadBalancerResult> instance

Deletes a Lightsail load balancer.


=head2 DeleteLoadBalancerTlsCertificate(CertificateName => Str, LoadBalancerName => Str, [Force => Bool])

Each argument is described in detail in: L<Paws::Lightsail::DeleteLoadBalancerTlsCertificate>

Returns: a L<Paws::Lightsail::DeleteLoadBalancerTlsCertificateResult> instance

Deletes a TLS/SSL certificate associated with a Lightsail load
balancer.


=head2 DetachDisk(DiskName => Str)

Each argument is described in detail in: L<Paws::Lightsail::DetachDisk>

Returns: a L<Paws::Lightsail::DetachDiskResult> instance

Detaches a stopped block storage disk from a Lightsail instance. Make
sure to unmount any file systems on the device within your operating
system before stopping the instance and detaching the disk.


=head2 DetachInstancesFromLoadBalancer(InstanceNames => ArrayRef[Str|Undef], LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::Lightsail::DetachInstancesFromLoadBalancer>

Returns: a L<Paws::Lightsail::DetachInstancesFromLoadBalancerResult> instance

Detaches the specified instances from a Lightsail load balancer.


=head2 DetachStaticIp(StaticIpName => Str)

Each argument is described in detail in: L<Paws::Lightsail::DetachStaticIp>

Returns: a L<Paws::Lightsail::DetachStaticIpResult> instance

Detaches a static IP from the Amazon Lightsail instance to which it is
attached.


=head2 DownloadDefaultKeyPair()

Each argument is described in detail in: L<Paws::Lightsail::DownloadDefaultKeyPair>

Returns: a L<Paws::Lightsail::DownloadDefaultKeyPairResult> instance

Downloads the default SSH key pair from the user's account.


=head2 GetActiveNames([PageToken => Str])

Each argument is described in detail in: L<Paws::Lightsail::GetActiveNames>

Returns: a L<Paws::Lightsail::GetActiveNamesResult> instance

Returns the names of all active (not deleted) resources.


=head2 GetBlueprints([IncludeInactive => Bool, PageToken => Str])

Each argument is described in detail in: L<Paws::Lightsail::GetBlueprints>

Returns: a L<Paws::Lightsail::GetBlueprintsResult> instance

Returns the list of available instance images, or I<blueprints>. You
can use a blueprint to create a new virtual private server already
running a specific operating system, as well as a preinstalled app or
development stack. The software each instance is running depends on the
blueprint image you choose.


=head2 GetBundles([IncludeInactive => Bool, PageToken => Str])

Each argument is described in detail in: L<Paws::Lightsail::GetBundles>

Returns: a L<Paws::Lightsail::GetBundlesResult> instance

Returns the list of bundles that are available for purchase. A bundle
describes the specs for your virtual private server (or I<instance>).


=head2 GetDisk(DiskName => Str)

Each argument is described in detail in: L<Paws::Lightsail::GetDisk>

Returns: a L<Paws::Lightsail::GetDiskResult> instance

Returns information about a specific block storage disk.


=head2 GetDisks([PageToken => Str])

Each argument is described in detail in: L<Paws::Lightsail::GetDisks>

Returns: a L<Paws::Lightsail::GetDisksResult> instance

Returns information about all block storage disks in your AWS account
and region.

If you are describing a long list of disks, you can paginate the output
to make the list more manageable. You can use the pageToken and
nextPageToken values to retrieve the next items in the list.


=head2 GetDiskSnapshot(DiskSnapshotName => Str)

Each argument is described in detail in: L<Paws::Lightsail::GetDiskSnapshot>

Returns: a L<Paws::Lightsail::GetDiskSnapshotResult> instance

Returns information about a specific block storage disk snapshot.


=head2 GetDiskSnapshots([PageToken => Str])

Each argument is described in detail in: L<Paws::Lightsail::GetDiskSnapshots>

Returns: a L<Paws::Lightsail::GetDiskSnapshotsResult> instance

Returns information about all block storage disk snapshots in your AWS
account and region.

If you are describing a long list of disk snapshots, you can paginate
the output to make the list more manageable. You can use the pageToken
and nextPageToken values to retrieve the next items in the list.


=head2 GetDomain(DomainName => Str)

Each argument is described in detail in: L<Paws::Lightsail::GetDomain>

Returns: a L<Paws::Lightsail::GetDomainResult> instance

Returns information about a specific domain recordset.


=head2 GetDomains([PageToken => Str])

Each argument is described in detail in: L<Paws::Lightsail::GetDomains>

Returns: a L<Paws::Lightsail::GetDomainsResult> instance

Returns a list of all domains in the user's account.


=head2 GetInstance(InstanceName => Str)

Each argument is described in detail in: L<Paws::Lightsail::GetInstance>

Returns: a L<Paws::Lightsail::GetInstanceResult> instance

Returns information about a specific Amazon Lightsail instance, which
is a virtual private server.


=head2 GetInstanceAccessDetails(InstanceName => Str, [Protocol => Str])

Each argument is described in detail in: L<Paws::Lightsail::GetInstanceAccessDetails>

Returns: a L<Paws::Lightsail::GetInstanceAccessDetailsResult> instance

Returns temporary SSH keys you can use to connect to a specific virtual
private server, or I<instance>.


=head2 GetInstanceMetricData(EndTime => Str, InstanceName => Str, MetricName => Str, Period => Int, StartTime => Str, Statistics => ArrayRef[Str|Undef], Unit => Str)

Each argument is described in detail in: L<Paws::Lightsail::GetInstanceMetricData>

Returns: a L<Paws::Lightsail::GetInstanceMetricDataResult> instance

Returns the data points for the specified Amazon Lightsail instance
metric, given an instance name.


=head2 GetInstancePortStates(InstanceName => Str)

Each argument is described in detail in: L<Paws::Lightsail::GetInstancePortStates>

Returns: a L<Paws::Lightsail::GetInstancePortStatesResult> instance

Returns the port states for a specific virtual private server, or
I<instance>.


=head2 GetInstances([PageToken => Str])

Each argument is described in detail in: L<Paws::Lightsail::GetInstances>

Returns: a L<Paws::Lightsail::GetInstancesResult> instance

Returns information about all Amazon Lightsail virtual private servers,
or I<instances>.


=head2 GetInstanceSnapshot(InstanceSnapshotName => Str)

Each argument is described in detail in: L<Paws::Lightsail::GetInstanceSnapshot>

Returns: a L<Paws::Lightsail::GetInstanceSnapshotResult> instance

Returns information about a specific instance snapshot.


=head2 GetInstanceSnapshots([PageToken => Str])

Each argument is described in detail in: L<Paws::Lightsail::GetInstanceSnapshots>

Returns: a L<Paws::Lightsail::GetInstanceSnapshotsResult> instance

Returns all instance snapshots for the user's account.


=head2 GetInstanceState(InstanceName => Str)

Each argument is described in detail in: L<Paws::Lightsail::GetInstanceState>

Returns: a L<Paws::Lightsail::GetInstanceStateResult> instance

Returns the state of a specific instance. Works on one instance at a
time.


=head2 GetKeyPair(KeyPairName => Str)

Each argument is described in detail in: L<Paws::Lightsail::GetKeyPair>

Returns: a L<Paws::Lightsail::GetKeyPairResult> instance

Returns information about a specific key pair.


=head2 GetKeyPairs([PageToken => Str])

Each argument is described in detail in: L<Paws::Lightsail::GetKeyPairs>

Returns: a L<Paws::Lightsail::GetKeyPairsResult> instance

Returns information about all key pairs in the user's account.


=head2 GetLoadBalancer(LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::Lightsail::GetLoadBalancer>

Returns: a L<Paws::Lightsail::GetLoadBalancerResult> instance

Returns information about the specified Lightsail load balancer.


=head2 GetLoadBalancerMetricData(EndTime => Str, LoadBalancerName => Str, MetricName => Str, Period => Int, StartTime => Str, Statistics => ArrayRef[Str|Undef], Unit => Str)

Each argument is described in detail in: L<Paws::Lightsail::GetLoadBalancerMetricData>

Returns: a L<Paws::Lightsail::GetLoadBalancerMetricDataResult> instance

Returns information about health metrics for your Lightsail load
balancer.


=head2 GetLoadBalancers([PageToken => Str])

Each argument is described in detail in: L<Paws::Lightsail::GetLoadBalancers>

Returns: a L<Paws::Lightsail::GetLoadBalancersResult> instance

Returns information about all load balancers in an account.

If you are describing a long list of load balancers, you can paginate
the output to make the list more manageable. You can use the pageToken
and nextPageToken values to retrieve the next items in the list.


=head2 GetLoadBalancerTlsCertificates(LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::Lightsail::GetLoadBalancerTlsCertificates>

Returns: a L<Paws::Lightsail::GetLoadBalancerTlsCertificatesResult> instance

Returns information about the TLS certificates that are associated with
the specified Lightsail load balancer.

TLS is just an updated, more secure version of Secure Socket Layer
(SSL).


=head2 GetOperation(OperationId => Str)

Each argument is described in detail in: L<Paws::Lightsail::GetOperation>

Returns: a L<Paws::Lightsail::GetOperationResult> instance

Returns information about a specific operation. Operations include
events such as when you create an instance, allocate a static IP,
attach a static IP, and so on.


=head2 GetOperations([PageToken => Str])

Each argument is described in detail in: L<Paws::Lightsail::GetOperations>

Returns: a L<Paws::Lightsail::GetOperationsResult> instance

Returns information about all operations.

Results are returned from oldest to newest, up to a maximum of 200.
Results can be paged by making each subsequent call to C<GetOperations>
use the maximum (last) C<statusChangedAt> value from the previous
request.


=head2 GetOperationsForResource(ResourceName => Str, [PageToken => Str])

Each argument is described in detail in: L<Paws::Lightsail::GetOperationsForResource>

Returns: a L<Paws::Lightsail::GetOperationsForResourceResult> instance

Gets operations for a specific resource (e.g., an instance or a static
IP).


=head2 GetRegions([IncludeAvailabilityZones => Bool])

Each argument is described in detail in: L<Paws::Lightsail::GetRegions>

Returns: a L<Paws::Lightsail::GetRegionsResult> instance

Returns a list of all valid regions for Amazon Lightsail. Use the
C<include availability zones> parameter to also return the availability
zones in a region.


=head2 GetStaticIp(StaticIpName => Str)

Each argument is described in detail in: L<Paws::Lightsail::GetStaticIp>

Returns: a L<Paws::Lightsail::GetStaticIpResult> instance

Returns information about a specific static IP.


=head2 GetStaticIps([PageToken => Str])

Each argument is described in detail in: L<Paws::Lightsail::GetStaticIps>

Returns: a L<Paws::Lightsail::GetStaticIpsResult> instance

Returns information about all static IPs in the user's account.


=head2 ImportKeyPair(KeyPairName => Str, PublicKeyBase64 => Str)

Each argument is described in detail in: L<Paws::Lightsail::ImportKeyPair>

Returns: a L<Paws::Lightsail::ImportKeyPairResult> instance

Imports a public SSH key from a specific key pair.


=head2 IsVpcPeered()

Each argument is described in detail in: L<Paws::Lightsail::IsVpcPeered>

Returns: a L<Paws::Lightsail::IsVpcPeeredResult> instance

Returns a Boolean value indicating whether your Lightsail VPC is
peered.


=head2 OpenInstancePublicPorts(InstanceName => Str, PortInfo => L<Paws::Lightsail::PortInfo>)

Each argument is described in detail in: L<Paws::Lightsail::OpenInstancePublicPorts>

Returns: a L<Paws::Lightsail::OpenInstancePublicPortsResult> instance

Adds public ports to an Amazon Lightsail instance.


=head2 PeerVpc()

Each argument is described in detail in: L<Paws::Lightsail::PeerVpc>

Returns: a L<Paws::Lightsail::PeerVpcResult> instance

Tries to peer the Lightsail VPC with the user's default VPC.


=head2 PutInstancePublicPorts(InstanceName => Str, PortInfos => ArrayRef[L<Paws::Lightsail::PortInfo>])

Each argument is described in detail in: L<Paws::Lightsail::PutInstancePublicPorts>

Returns: a L<Paws::Lightsail::PutInstancePublicPortsResult> instance

Sets the specified open ports for an Amazon Lightsail instance, and
closes all ports for every protocol not included in the current
request.


=head2 RebootInstance(InstanceName => Str)

Each argument is described in detail in: L<Paws::Lightsail::RebootInstance>

Returns: a L<Paws::Lightsail::RebootInstanceResult> instance

Restarts a specific instance. When your Amazon Lightsail instance is
finished rebooting, Lightsail assigns a new public IP address. To use
the same IP address after restarting, create a static IP address and
attach it to the instance.


=head2 ReleaseStaticIp(StaticIpName => Str)

Each argument is described in detail in: L<Paws::Lightsail::ReleaseStaticIp>

Returns: a L<Paws::Lightsail::ReleaseStaticIpResult> instance

Deletes a specific static IP from your account.


=head2 StartInstance(InstanceName => Str)

Each argument is described in detail in: L<Paws::Lightsail::StartInstance>

Returns: a L<Paws::Lightsail::StartInstanceResult> instance

Starts a specific Amazon Lightsail instance from a stopped state. To
restart an instance, use the reboot instance operation.


=head2 StopInstance(InstanceName => Str, [Force => Bool])

Each argument is described in detail in: L<Paws::Lightsail::StopInstance>

Returns: a L<Paws::Lightsail::StopInstanceResult> instance

Stops a specific Amazon Lightsail instance that is currently running.


=head2 UnpeerVpc()

Each argument is described in detail in: L<Paws::Lightsail::UnpeerVpc>

Returns: a L<Paws::Lightsail::UnpeerVpcResult> instance

Attempts to unpeer the Lightsail VPC from the user's default VPC.


=head2 UpdateDomainEntry(DomainEntry => L<Paws::Lightsail::DomainEntry>, DomainName => Str)

Each argument is described in detail in: L<Paws::Lightsail::UpdateDomainEntry>

Returns: a L<Paws::Lightsail::UpdateDomainEntryResult> instance

Updates a domain recordset after it is created.


=head2 UpdateLoadBalancerAttribute(AttributeName => Str, AttributeValue => Str, LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::Lightsail::UpdateLoadBalancerAttribute>

Returns: a L<Paws::Lightsail::UpdateLoadBalancerAttributeResult> instance

Updates the specified attribute for a load balancer.




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


=head2 GetAllDomains(sub { },[PageToken => Str])

=head2 GetAllDomains([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - domains, passing the object as the first parameter, and the string 'domains' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetDomainsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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


=head2 GetAllOperations(sub { },[PageToken => Str])

=head2 GetAllOperations([PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - operations, passing the object as the first parameter, and the string 'operations' as the second parameter 

If not, it will return a a L<Paws::Lightsail::GetOperationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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

