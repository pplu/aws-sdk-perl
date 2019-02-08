package Paws::DeviceFarm;
  use Moose;
  sub service { 'devicefarm' }
  sub signing_name { 'devicefarm' }
  sub version { '2015-06-23' }
  sub target_prefix { 'DeviceFarm_20150623' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateDevicePool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::CreateDevicePool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInstanceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::CreateInstanceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::CreateNetworkProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::CreateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRemoteAccessSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::CreateRemoteAccessSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::CreateUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVPCEConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::CreateVPCEConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDevicePool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::DeleteDevicePool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInstanceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::DeleteInstanceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::DeleteNetworkProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::DeleteProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRemoteAccessSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::DeleteRemoteAccessSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::DeleteRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::DeleteUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVPCEConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::DeleteVPCEConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::GetAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::GetDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeviceInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::GetDeviceInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevicePool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::GetDevicePool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevicePoolCompatibility {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::GetDevicePoolCompatibility', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstanceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::GetInstanceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::GetJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNetworkProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::GetNetworkProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOfferingStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::GetOfferingStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::GetProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRemoteAccessSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::GetRemoteAccessSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::GetRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSuite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::GetSuite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::GetTest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::GetUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVPCEConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::GetVPCEConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InstallToRemoteAccessSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::InstallToRemoteAccessSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListArtifacts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListArtifacts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeviceInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListDeviceInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevicePools {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListDevicePools', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInstanceProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListInstanceProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNetworkProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListNetworkProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOfferingPromotions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListOfferingPromotions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOfferingTransactions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListOfferingTransactions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRemoteAccessSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListRemoteAccessSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSamples {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListSamples', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSuites {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListSuites', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListTests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUniqueProblems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListUniqueProblems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUploads {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListUploads', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVPCEConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListVPCEConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseOffering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::PurchaseOffering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RenewOffering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::RenewOffering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ScheduleRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ScheduleRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::StopJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopRemoteAccessSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::StopRemoteAccessSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::StopRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDeviceInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::UpdateDeviceInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDevicePool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::UpdateDevicePool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInstanceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::UpdateInstanceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNetworkProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::UpdateNetworkProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::UpdateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::UpdateUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVPCEConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::UpdateVPCEConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllOfferingStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetOfferingStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetOfferingStatus(@_, nextToken => $next_result->nextToken);
        push @{ $result->current }, @{ $next_result->current };
        push @{ $result->nextPeriod }, @{ $next_result->nextPeriod };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'current') foreach (@{ $result->current });
        $callback->($_ => 'nextPeriod') foreach (@{ $result->nextPeriod });
        $result = $self->GetOfferingStatus(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'current') foreach (@{ $result->current });
      $callback->($_ => 'nextPeriod') foreach (@{ $result->nextPeriod });
    }

    return undef
  }
  sub ListAllArtifacts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListArtifacts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListArtifacts(@_, nextToken => $next_result->nextToken);
        push @{ $result->artifacts }, @{ $next_result->artifacts };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'artifacts') foreach (@{ $result->artifacts });
        $result = $self->ListArtifacts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'artifacts') foreach (@{ $result->artifacts });
    }

    return undef
  }
  sub ListAllDeviceInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeviceInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDeviceInstances(@_, nextToken => $next_result->nextToken);
        push @{ $result->deviceInstances }, @{ $next_result->deviceInstances };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'deviceInstances') foreach (@{ $result->deviceInstances });
        $result = $self->ListDeviceInstances(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'deviceInstances') foreach (@{ $result->deviceInstances });
    }

    return undef
  }
  sub ListAllDevicePools {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDevicePools(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDevicePools(@_, nextToken => $next_result->nextToken);
        push @{ $result->devicePools }, @{ $next_result->devicePools };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'devicePools') foreach (@{ $result->devicePools });
        $result = $self->ListDevicePools(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'devicePools') foreach (@{ $result->devicePools });
    }

    return undef
  }
  sub ListAllDevices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDevices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDevices(@_, nextToken => $next_result->nextToken);
        push @{ $result->devices }, @{ $next_result->devices };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'devices') foreach (@{ $result->devices });
        $result = $self->ListDevices(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'devices') foreach (@{ $result->devices });
    }

    return undef
  }
  sub ListAllInstanceProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInstanceProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListInstanceProfiles(@_, nextToken => $next_result->nextToken);
        push @{ $result->instanceProfiles }, @{ $next_result->instanceProfiles };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'instanceProfiles') foreach (@{ $result->instanceProfiles });
        $result = $self->ListInstanceProfiles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'instanceProfiles') foreach (@{ $result->instanceProfiles });
    }

    return undef
  }
  sub ListAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobs }, @{ $next_result->jobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobs') foreach (@{ $result->jobs });
        $result = $self->ListJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobs') foreach (@{ $result->jobs });
    }

    return undef
  }
  sub ListAllNetworkProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNetworkProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListNetworkProfiles(@_, nextToken => $next_result->nextToken);
        push @{ $result->networkProfiles }, @{ $next_result->networkProfiles };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'networkProfiles') foreach (@{ $result->networkProfiles });
        $result = $self->ListNetworkProfiles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'networkProfiles') foreach (@{ $result->networkProfiles });
    }

    return undef
  }
  sub ListAllOfferingPromotions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOfferingPromotions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListOfferingPromotions(@_, nextToken => $next_result->nextToken);
        push @{ $result->offeringPromotions }, @{ $next_result->offeringPromotions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'offeringPromotions') foreach (@{ $result->offeringPromotions });
        $result = $self->ListOfferingPromotions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'offeringPromotions') foreach (@{ $result->offeringPromotions });
    }

    return undef
  }
  sub ListAllOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListOfferings(@_, nextToken => $next_result->nextToken);
        push @{ $result->offerings }, @{ $next_result->offerings };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'offerings') foreach (@{ $result->offerings });
        $result = $self->ListOfferings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'offerings') foreach (@{ $result->offerings });
    }

    return undef
  }
  sub ListAllOfferingTransactions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOfferingTransactions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListOfferingTransactions(@_, nextToken => $next_result->nextToken);
        push @{ $result->offeringTransactions }, @{ $next_result->offeringTransactions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'offeringTransactions') foreach (@{ $result->offeringTransactions });
        $result = $self->ListOfferingTransactions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'offeringTransactions') foreach (@{ $result->offeringTransactions });
    }

    return undef
  }
  sub ListAllProjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProjects(@_, nextToken => $next_result->nextToken);
        push @{ $result->projects }, @{ $next_result->projects };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'projects') foreach (@{ $result->projects });
        $result = $self->ListProjects(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'projects') foreach (@{ $result->projects });
    }

    return undef
  }
  sub ListAllRemoteAccessSessions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRemoteAccessSessions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRemoteAccessSessions(@_, nextToken => $next_result->nextToken);
        push @{ $result->remoteAccessSessions }, @{ $next_result->remoteAccessSessions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'remoteAccessSessions') foreach (@{ $result->remoteAccessSessions });
        $result = $self->ListRemoteAccessSessions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'remoteAccessSessions') foreach (@{ $result->remoteAccessSessions });
    }

    return undef
  }
  sub ListAllRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRuns(@_, nextToken => $next_result->nextToken);
        push @{ $result->runs }, @{ $next_result->runs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'runs') foreach (@{ $result->runs });
        $result = $self->ListRuns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'runs') foreach (@{ $result->runs });
    }

    return undef
  }
  sub ListAllSamples {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSamples(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSamples(@_, nextToken => $next_result->nextToken);
        push @{ $result->samples }, @{ $next_result->samples };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'samples') foreach (@{ $result->samples });
        $result = $self->ListSamples(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'samples') foreach (@{ $result->samples });
    }

    return undef
  }
  sub ListAllSuites {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSuites(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSuites(@_, nextToken => $next_result->nextToken);
        push @{ $result->suites }, @{ $next_result->suites };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'suites') foreach (@{ $result->suites });
        $result = $self->ListSuites(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'suites') foreach (@{ $result->suites });
    }

    return undef
  }
  sub ListAllTests {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTests(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTests(@_, nextToken => $next_result->nextToken);
        push @{ $result->tests }, @{ $next_result->tests };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tests') foreach (@{ $result->tests });
        $result = $self->ListTests(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tests') foreach (@{ $result->tests });
    }

    return undef
  }
  sub ListAllUniqueProblems {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUniqueProblems(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListUniqueProblems(@_, nextToken => $next_result->nextToken);
        push @{ $result->uniqueProblems }, @{ $next_result->uniqueProblems };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'uniqueProblems') foreach (@{ $result->uniqueProblems });
        $result = $self->ListUniqueProblems(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'uniqueProblems') foreach (@{ $result->uniqueProblems });
    }

    return undef
  }
  sub ListAllUploads {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUploads(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListUploads(@_, nextToken => $next_result->nextToken);
        push @{ $result->uploads }, @{ $next_result->uploads };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'uploads') foreach (@{ $result->uploads });
        $result = $self->ListUploads(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'uploads') foreach (@{ $result->uploads });
    }

    return undef
  }
  sub ListAllVPCEConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVPCEConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListVPCEConfigurations(@_, nextToken => $next_result->nextToken);
        push @{ $result->vpceConfigurations }, @{ $next_result->vpceConfigurations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'vpceConfigurations') foreach (@{ $result->vpceConfigurations });
        $result = $self->ListVPCEConfigurations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'vpceConfigurations') foreach (@{ $result->vpceConfigurations });
    }

    return undef
  }


  sub operations { qw/CreateDevicePool CreateInstanceProfile CreateNetworkProfile CreateProject CreateRemoteAccessSession CreateUpload CreateVPCEConfiguration DeleteDevicePool DeleteInstanceProfile DeleteNetworkProfile DeleteProject DeleteRemoteAccessSession DeleteRun DeleteUpload DeleteVPCEConfiguration GetAccountSettings GetDevice GetDeviceInstance GetDevicePool GetDevicePoolCompatibility GetInstanceProfile GetJob GetNetworkProfile GetOfferingStatus GetProject GetRemoteAccessSession GetRun GetSuite GetTest GetUpload GetVPCEConfiguration InstallToRemoteAccessSession ListArtifacts ListDeviceInstances ListDevicePools ListDevices ListInstanceProfiles ListJobs ListNetworkProfiles ListOfferingPromotions ListOfferings ListOfferingTransactions ListProjects ListRemoteAccessSessions ListRuns ListSamples ListSuites ListTests ListUniqueProblems ListUploads ListVPCEConfigurations PurchaseOffering RenewOffering ScheduleRun StopJob StopRemoteAccessSession StopRun UpdateDeviceInstance UpdateDevicePool UpdateInstanceProfile UpdateNetworkProfile UpdateProject UpdateUpload UpdateVPCEConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm - Perl Interface to AWS AWS Device Farm

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DeviceFarm');
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

AWS Device Farm is a service that enables mobile app developers to test
Android, iOS, and Fire OS apps on physical phones, tablets, and other
devices in the cloud.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23>


=head1 METHODS

=head2 CreateDevicePool

=over

=item Name => Str

=item ProjectArn => Str

=item Rules => ArrayRef[L<Paws::DeviceFarm::Rule>]

=item [Description => Str]

=item [MaxDevices => Int]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::CreateDevicePool>

Returns: a L<Paws::DeviceFarm::CreateDevicePoolResult> instance

Creates a device pool.


=head2 CreateInstanceProfile

=over

=item Name => Str

=item [Description => Str]

=item [ExcludeAppPackagesFromCleanup => ArrayRef[Str|Undef]]

=item [PackageCleanup => Bool]

=item [RebootAfterUse => Bool]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::CreateInstanceProfile>

Returns: a L<Paws::DeviceFarm::CreateInstanceProfileResult> instance

Creates a profile that can be applied to one or more private fleet
device instances.


=head2 CreateNetworkProfile

=over

=item Name => Str

=item ProjectArn => Str

=item [Description => Str]

=item [DownlinkBandwidthBits => Int]

=item [DownlinkDelayMs => Int]

=item [DownlinkJitterMs => Int]

=item [DownlinkLossPercent => Int]

=item [Type => Str]

=item [UplinkBandwidthBits => Int]

=item [UplinkDelayMs => Int]

=item [UplinkJitterMs => Int]

=item [UplinkLossPercent => Int]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::CreateNetworkProfile>

Returns: a L<Paws::DeviceFarm::CreateNetworkProfileResult> instance

Creates a network profile.


=head2 CreateProject

=over

=item Name => Str

=item [DefaultJobTimeoutMinutes => Int]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::CreateProject>

Returns: a L<Paws::DeviceFarm::CreateProjectResult> instance

Creates a new project.


=head2 CreateRemoteAccessSession

=over

=item DeviceArn => Str

=item ProjectArn => Str

=item [ClientId => Str]

=item [Configuration => L<Paws::DeviceFarm::CreateRemoteAccessSessionConfiguration>]

=item [InstanceArn => Str]

=item [InteractionMode => Str]

=item [Name => Str]

=item [RemoteDebugEnabled => Bool]

=item [RemoteRecordAppArn => Str]

=item [RemoteRecordEnabled => Bool]

=item [SkipAppResign => Bool]

=item [SshPublicKey => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::CreateRemoteAccessSession>

Returns: a L<Paws::DeviceFarm::CreateRemoteAccessSessionResult> instance

Specifies and starts a remote access session.


=head2 CreateUpload

=over

=item Name => Str

=item ProjectArn => Str

=item Type => Str

=item [ContentType => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::CreateUpload>

Returns: a L<Paws::DeviceFarm::CreateUploadResult> instance

Uploads an app or test scripts.


=head2 CreateVPCEConfiguration

=over

=item ServiceDnsName => Str

=item VpceConfigurationName => Str

=item VpceServiceName => Str

=item [VpceConfigurationDescription => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::CreateVPCEConfiguration>

Returns: a L<Paws::DeviceFarm::CreateVPCEConfigurationResult> instance

Creates a configuration record in Device Farm for your Amazon Virtual
Private Cloud (VPC) endpoint.


=head2 DeleteDevicePool

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::DeleteDevicePool>

Returns: a L<Paws::DeviceFarm::DeleteDevicePoolResult> instance

Deletes a device pool given the pool ARN. Does not allow deletion of
curated pools owned by the system.


=head2 DeleteInstanceProfile

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::DeleteInstanceProfile>

Returns: a L<Paws::DeviceFarm::DeleteInstanceProfileResult> instance

Deletes a profile that can be applied to one or more private device
instances.


=head2 DeleteNetworkProfile

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::DeleteNetworkProfile>

Returns: a L<Paws::DeviceFarm::DeleteNetworkProfileResult> instance

Deletes a network profile.


=head2 DeleteProject

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::DeleteProject>

Returns: a L<Paws::DeviceFarm::DeleteProjectResult> instance

Deletes an AWS Device Farm project, given the project ARN.

B<Note> Deleting this resource does not stop an in-progress run.


=head2 DeleteRemoteAccessSession

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::DeleteRemoteAccessSession>

Returns: a L<Paws::DeviceFarm::DeleteRemoteAccessSessionResult> instance

Deletes a completed remote access session and its results.


=head2 DeleteRun

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::DeleteRun>

Returns: a L<Paws::DeviceFarm::DeleteRunResult> instance

Deletes the run, given the run ARN.

B<Note> Deleting this resource does not stop an in-progress run.


=head2 DeleteUpload

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::DeleteUpload>

Returns: a L<Paws::DeviceFarm::DeleteUploadResult> instance

Deletes an upload given the upload ARN.


=head2 DeleteVPCEConfiguration

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::DeleteVPCEConfiguration>

Returns: a L<Paws::DeviceFarm::DeleteVPCEConfigurationResult> instance

Deletes a configuration for your Amazon Virtual Private Cloud (VPC)
endpoint.


=head2 GetAccountSettings






Each argument is described in detail in: L<Paws::DeviceFarm::GetAccountSettings>

Returns: a L<Paws::DeviceFarm::GetAccountSettingsResult> instance

Returns the number of unmetered iOS and/or unmetered Android devices
that have been purchased by the account.


=head2 GetDevice

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::GetDevice>

Returns: a L<Paws::DeviceFarm::GetDeviceResult> instance

Gets information about a unique device type.


=head2 GetDeviceInstance

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::GetDeviceInstance>

Returns: a L<Paws::DeviceFarm::GetDeviceInstanceResult> instance

Returns information about a device instance belonging to a private
device fleet.


=head2 GetDevicePool

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::GetDevicePool>

Returns: a L<Paws::DeviceFarm::GetDevicePoolResult> instance

Gets information about a device pool.


=head2 GetDevicePoolCompatibility

=over

=item DevicePoolArn => Str

=item [AppArn => Str]

=item [Configuration => L<Paws::DeviceFarm::ScheduleRunConfiguration>]

=item [Test => L<Paws::DeviceFarm::ScheduleRunTest>]

=item [TestType => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::GetDevicePoolCompatibility>

Returns: a L<Paws::DeviceFarm::GetDevicePoolCompatibilityResult> instance

Gets information about compatibility with a device pool.


=head2 GetInstanceProfile

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::GetInstanceProfile>

Returns: a L<Paws::DeviceFarm::GetInstanceProfileResult> instance

Returns information about the specified instance profile.


=head2 GetJob

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::GetJob>

Returns: a L<Paws::DeviceFarm::GetJobResult> instance

Gets information about a job.


=head2 GetNetworkProfile

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::GetNetworkProfile>

Returns: a L<Paws::DeviceFarm::GetNetworkProfileResult> instance

Returns information about a network profile.


=head2 GetOfferingStatus

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::GetOfferingStatus>

Returns: a L<Paws::DeviceFarm::GetOfferingStatusResult> instance

Gets the current status and future status of all offerings purchased by
an AWS account. The response indicates how many offerings are currently
available and the offerings that will be available in the next period.
The API returns a C<NotEligible> error if the user is not permitted to
invoke the operation. Please contact aws-devicefarm-support@amazon.com
(mailto:aws-devicefarm-support@amazon.com) if you believe that you
should be able to invoke this operation.


=head2 GetProject

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::GetProject>

Returns: a L<Paws::DeviceFarm::GetProjectResult> instance

Gets information about a project.


=head2 GetRemoteAccessSession

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::GetRemoteAccessSession>

Returns: a L<Paws::DeviceFarm::GetRemoteAccessSessionResult> instance

Returns a link to a currently running remote access session.


=head2 GetRun

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::GetRun>

Returns: a L<Paws::DeviceFarm::GetRunResult> instance

Gets information about a run.


=head2 GetSuite

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::GetSuite>

Returns: a L<Paws::DeviceFarm::GetSuiteResult> instance

Gets information about a suite.


=head2 GetTest

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::GetTest>

Returns: a L<Paws::DeviceFarm::GetTestResult> instance

Gets information about a test.


=head2 GetUpload

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::GetUpload>

Returns: a L<Paws::DeviceFarm::GetUploadResult> instance

Gets information about an upload.


=head2 GetVPCEConfiguration

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::GetVPCEConfiguration>

Returns: a L<Paws::DeviceFarm::GetVPCEConfigurationResult> instance

Returns information about the configuration settings for your Amazon
Virtual Private Cloud (VPC) endpoint.


=head2 InstallToRemoteAccessSession

=over

=item AppArn => Str

=item RemoteAccessSessionArn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::InstallToRemoteAccessSession>

Returns: a L<Paws::DeviceFarm::InstallToRemoteAccessSessionResult> instance

Installs an application to the device in a remote access session. For
Android applications, the file must be in .apk format. For iOS
applications, the file must be in .ipa format.


=head2 ListArtifacts

=over

=item Arn => Str

=item Type => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListArtifacts>

Returns: a L<Paws::DeviceFarm::ListArtifactsResult> instance

Gets information about artifacts.


=head2 ListDeviceInstances

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListDeviceInstances>

Returns: a L<Paws::DeviceFarm::ListDeviceInstancesResult> instance

Returns information about the private device instances associated with
one or more AWS accounts.


=head2 ListDevicePools

=over

=item Arn => Str

=item [NextToken => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListDevicePools>

Returns: a L<Paws::DeviceFarm::ListDevicePoolsResult> instance

Gets information about device pools.


=head2 ListDevices

=over

=item [Arn => Str]

=item [Filters => ArrayRef[L<Paws::DeviceFarm::DeviceFilter>]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListDevices>

Returns: a L<Paws::DeviceFarm::ListDevicesResult> instance

Gets information about unique device types.


=head2 ListInstanceProfiles

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListInstanceProfiles>

Returns: a L<Paws::DeviceFarm::ListInstanceProfilesResult> instance

Returns information about all the instance profiles in an AWS account.


=head2 ListJobs

=over

=item Arn => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListJobs>

Returns: a L<Paws::DeviceFarm::ListJobsResult> instance

Gets information about jobs for a given test run.


=head2 ListNetworkProfiles

=over

=item Arn => Str

=item [NextToken => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListNetworkProfiles>

Returns: a L<Paws::DeviceFarm::ListNetworkProfilesResult> instance

Returns the list of available network profiles.


=head2 ListOfferingPromotions

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListOfferingPromotions>

Returns: a L<Paws::DeviceFarm::ListOfferingPromotionsResult> instance

Returns a list of offering promotions. Each offering promotion record
contains the ID and description of the promotion. The API returns a
C<NotEligible> error if the caller is not permitted to invoke the
operation. Contact aws-devicefarm-support@amazon.com
(mailto:aws-devicefarm-support@amazon.com) if you believe that you
should be able to invoke this operation.


=head2 ListOfferings

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListOfferings>

Returns: a L<Paws::DeviceFarm::ListOfferingsResult> instance

Returns a list of products or offerings that the user can manage
through the API. Each offering record indicates the recurring price per
unit and the frequency for that offering. The API returns a
C<NotEligible> error if the user is not permitted to invoke the
operation. Please contact aws-devicefarm-support@amazon.com
(mailto:aws-devicefarm-support@amazon.com) if you believe that you
should be able to invoke this operation.


=head2 ListOfferingTransactions

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListOfferingTransactions>

Returns: a L<Paws::DeviceFarm::ListOfferingTransactionsResult> instance

Returns a list of all historical purchases, renewals, and system
renewal transactions for an AWS account. The list is paginated and
ordered by a descending timestamp (most recent transactions are first).
The API returns a C<NotEligible> error if the user is not permitted to
invoke the operation. Please contact aws-devicefarm-support@amazon.com
(mailto:aws-devicefarm-support@amazon.com) if you believe that you
should be able to invoke this operation.


=head2 ListProjects

=over

=item [Arn => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListProjects>

Returns: a L<Paws::DeviceFarm::ListProjectsResult> instance

Gets information about projects.


=head2 ListRemoteAccessSessions

=over

=item Arn => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListRemoteAccessSessions>

Returns: a L<Paws::DeviceFarm::ListRemoteAccessSessionsResult> instance

Returns a list of all currently running remote access sessions.


=head2 ListRuns

=over

=item Arn => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListRuns>

Returns: a L<Paws::DeviceFarm::ListRunsResult> instance

Gets information about runs, given an AWS Device Farm project ARN.


=head2 ListSamples

=over

=item Arn => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListSamples>

Returns: a L<Paws::DeviceFarm::ListSamplesResult> instance

Gets information about samples, given an AWS Device Farm job ARN.


=head2 ListSuites

=over

=item Arn => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListSuites>

Returns: a L<Paws::DeviceFarm::ListSuitesResult> instance

Gets information about test suites for a given job.


=head2 ListTests

=over

=item Arn => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListTests>

Returns: a L<Paws::DeviceFarm::ListTestsResult> instance

Gets information about tests in a given test suite.


=head2 ListUniqueProblems

=over

=item Arn => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListUniqueProblems>

Returns: a L<Paws::DeviceFarm::ListUniqueProblemsResult> instance

Gets information about unique problems.


=head2 ListUploads

=over

=item Arn => Str

=item [NextToken => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListUploads>

Returns: a L<Paws::DeviceFarm::ListUploadsResult> instance

Gets information about uploads, given an AWS Device Farm project ARN.


=head2 ListVPCEConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ListVPCEConfigurations>

Returns: a L<Paws::DeviceFarm::ListVPCEConfigurationsResult> instance

Returns information about all Amazon Virtual Private Cloud (VPC)
endpoint configurations in the AWS account.


=head2 PurchaseOffering

=over

=item [OfferingId => Str]

=item [OfferingPromotionId => Str]

=item [Quantity => Int]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::PurchaseOffering>

Returns: a L<Paws::DeviceFarm::PurchaseOfferingResult> instance

Immediately purchases offerings for an AWS account. Offerings renew
with the latest total purchased quantity for an offering, unless the
renewal was overridden. The API returns a C<NotEligible> error if the
user is not permitted to invoke the operation. Please contact
aws-devicefarm-support@amazon.com
(mailto:aws-devicefarm-support@amazon.com) if you believe that you
should be able to invoke this operation.


=head2 RenewOffering

=over

=item [OfferingId => Str]

=item [Quantity => Int]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::RenewOffering>

Returns: a L<Paws::DeviceFarm::RenewOfferingResult> instance

Explicitly sets the quantity of devices to renew for an offering,
starting from the C<effectiveDate> of the next period. The API returns
a C<NotEligible> error if the user is not permitted to invoke the
operation. Please contact aws-devicefarm-support@amazon.com
(mailto:aws-devicefarm-support@amazon.com) if you believe that you
should be able to invoke this operation.


=head2 ScheduleRun

=over

=item ProjectArn => Str

=item Test => L<Paws::DeviceFarm::ScheduleRunTest>

=item [AppArn => Str]

=item [Configuration => L<Paws::DeviceFarm::ScheduleRunConfiguration>]

=item [DevicePoolArn => Str]

=item [DeviceSelectionConfiguration => L<Paws::DeviceFarm::DeviceSelectionConfiguration>]

=item [ExecutionConfiguration => L<Paws::DeviceFarm::ExecutionConfiguration>]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::ScheduleRun>

Returns: a L<Paws::DeviceFarm::ScheduleRunResult> instance

Schedules a run.


=head2 StopJob

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::StopJob>

Returns: a L<Paws::DeviceFarm::StopJobResult> instance

Initiates a stop request for the current job. AWS Device Farm will
immediately stop the job on the device where tests have not started
executing, and you will not be billed for this device. On the device
where tests have started executing, Setup Suite and Teardown Suite
tests will run to completion before stopping execution on the device.
You will be billed for Setup, Teardown, and any tests that were in
progress or already completed.


=head2 StopRemoteAccessSession

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::StopRemoteAccessSession>

Returns: a L<Paws::DeviceFarm::StopRemoteAccessSessionResult> instance

Ends a specified remote access session.


=head2 StopRun

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::DeviceFarm::StopRun>

Returns: a L<Paws::DeviceFarm::StopRunResult> instance

Initiates a stop request for the current test run. AWS Device Farm will
immediately stop the run on devices where tests have not started
executing, and you will not be billed for these devices. On devices
where tests have started executing, Setup Suite and Teardown Suite
tests will run to completion before stopping execution on those
devices. You will be billed for Setup, Teardown, and any tests that
were in progress or already completed.


=head2 UpdateDeviceInstance

=over

=item Arn => Str

=item [Labels => ArrayRef[Str|Undef]]

=item [ProfileArn => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::UpdateDeviceInstance>

Returns: a L<Paws::DeviceFarm::UpdateDeviceInstanceResult> instance

Updates information about an existing private device instance.


=head2 UpdateDevicePool

=over

=item Arn => Str

=item [ClearMaxDevices => Bool]

=item [Description => Str]

=item [MaxDevices => Int]

=item [Name => Str]

=item [Rules => ArrayRef[L<Paws::DeviceFarm::Rule>]]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::UpdateDevicePool>

Returns: a L<Paws::DeviceFarm::UpdateDevicePoolResult> instance

Modifies the name, description, and rules in a device pool given the
attributes and the pool ARN. Rule updates are all-or-nothing, meaning
they can only be updated as a whole (or not at all).


=head2 UpdateInstanceProfile

=over

=item Arn => Str

=item [Description => Str]

=item [ExcludeAppPackagesFromCleanup => ArrayRef[Str|Undef]]

=item [Name => Str]

=item [PackageCleanup => Bool]

=item [RebootAfterUse => Bool]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::UpdateInstanceProfile>

Returns: a L<Paws::DeviceFarm::UpdateInstanceProfileResult> instance

Updates information about an existing private device instance profile.


=head2 UpdateNetworkProfile

=over

=item Arn => Str

=item [Description => Str]

=item [DownlinkBandwidthBits => Int]

=item [DownlinkDelayMs => Int]

=item [DownlinkJitterMs => Int]

=item [DownlinkLossPercent => Int]

=item [Name => Str]

=item [Type => Str]

=item [UplinkBandwidthBits => Int]

=item [UplinkDelayMs => Int]

=item [UplinkJitterMs => Int]

=item [UplinkLossPercent => Int]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::UpdateNetworkProfile>

Returns: a L<Paws::DeviceFarm::UpdateNetworkProfileResult> instance

Updates the network profile with specific settings.


=head2 UpdateProject

=over

=item Arn => Str

=item [DefaultJobTimeoutMinutes => Int]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::UpdateProject>

Returns: a L<Paws::DeviceFarm::UpdateProjectResult> instance

Modifies the specified project name, given the project ARN and a new
name.


=head2 UpdateUpload

=over

=item Arn => Str

=item [ContentType => Str]

=item [EditContent => Bool]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::UpdateUpload>

Returns: a L<Paws::DeviceFarm::UpdateUploadResult> instance

Update an uploaded test specification (test spec).


=head2 UpdateVPCEConfiguration

=over

=item Arn => Str

=item [ServiceDnsName => Str]

=item [VpceConfigurationDescription => Str]

=item [VpceConfigurationName => Str]

=item [VpceServiceName => Str]


=back

Each argument is described in detail in: L<Paws::DeviceFarm::UpdateVPCEConfiguration>

Returns: a L<Paws::DeviceFarm::UpdateVPCEConfigurationResult> instance

Updates information about an existing Amazon Virtual Private Cloud
(VPC) endpoint configuration.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllOfferingStatus(sub { },[NextToken => Str])

=head2 GetAllOfferingStatus([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - current, passing the object as the first parameter, and the string 'current' as the second parameter 

 - nextPeriod, passing the object as the first parameter, and the string 'nextPeriod' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::GetOfferingStatusResult> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllArtifacts(sub { },Arn => Str, Type => Str, [NextToken => Str])

=head2 ListAllArtifacts(Arn => Str, Type => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - artifacts, passing the object as the first parameter, and the string 'artifacts' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListArtifactsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDeviceInstances(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDeviceInstances([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - deviceInstances, passing the object as the first parameter, and the string 'deviceInstances' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListDeviceInstancesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDevicePools(sub { },Arn => Str, [NextToken => Str, Type => Str])

=head2 ListAllDevicePools(Arn => Str, [NextToken => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - devicePools, passing the object as the first parameter, and the string 'devicePools' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListDevicePoolsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDevices(sub { },[Arn => Str, Filters => ArrayRef[L<Paws::DeviceFarm::DeviceFilter>], NextToken => Str])

=head2 ListAllDevices([Arn => Str, Filters => ArrayRef[L<Paws::DeviceFarm::DeviceFilter>], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - devices, passing the object as the first parameter, and the string 'devices' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListDevicesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInstanceProfiles(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllInstanceProfiles([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - instanceProfiles, passing the object as the first parameter, and the string 'instanceProfiles' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListInstanceProfilesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobs(sub { },Arn => Str, [NextToken => Str])

=head2 ListAllJobs(Arn => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobs, passing the object as the first parameter, and the string 'jobs' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListJobsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNetworkProfiles(sub { },Arn => Str, [NextToken => Str, Type => Str])

=head2 ListAllNetworkProfiles(Arn => Str, [NextToken => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - networkProfiles, passing the object as the first parameter, and the string 'networkProfiles' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListNetworkProfilesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOfferingPromotions(sub { },[NextToken => Str])

=head2 ListAllOfferingPromotions([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - offeringPromotions, passing the object as the first parameter, and the string 'offeringPromotions' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListOfferingPromotionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOfferings(sub { },[NextToken => Str])

=head2 ListAllOfferings([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - offerings, passing the object as the first parameter, and the string 'offerings' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListOfferingsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOfferingTransactions(sub { },[NextToken => Str])

=head2 ListAllOfferingTransactions([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - offeringTransactions, passing the object as the first parameter, and the string 'offeringTransactions' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListOfferingTransactionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProjects(sub { },[Arn => Str, NextToken => Str])

=head2 ListAllProjects([Arn => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - projects, passing the object as the first parameter, and the string 'projects' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListProjectsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRemoteAccessSessions(sub { },Arn => Str, [NextToken => Str])

=head2 ListAllRemoteAccessSessions(Arn => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - remoteAccessSessions, passing the object as the first parameter, and the string 'remoteAccessSessions' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListRemoteAccessSessionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRuns(sub { },Arn => Str, [NextToken => Str])

=head2 ListAllRuns(Arn => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - runs, passing the object as the first parameter, and the string 'runs' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListRunsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSamples(sub { },Arn => Str, [NextToken => Str])

=head2 ListAllSamples(Arn => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - samples, passing the object as the first parameter, and the string 'samples' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListSamplesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSuites(sub { },Arn => Str, [NextToken => Str])

=head2 ListAllSuites(Arn => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - suites, passing the object as the first parameter, and the string 'suites' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListSuitesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTests(sub { },Arn => Str, [NextToken => Str])

=head2 ListAllTests(Arn => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tests, passing the object as the first parameter, and the string 'tests' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListTestsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUniqueProblems(sub { },Arn => Str, [NextToken => Str])

=head2 ListAllUniqueProblems(Arn => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - uniqueProblems, passing the object as the first parameter, and the string 'uniqueProblems' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListUniqueProblemsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUploads(sub { },Arn => Str, [NextToken => Str, Type => Str])

=head2 ListAllUploads(Arn => Str, [NextToken => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - uploads, passing the object as the first parameter, and the string 'uploads' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListUploadsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVPCEConfigurations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllVPCEConfigurations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - vpceConfigurations, passing the object as the first parameter, and the string 'vpceConfigurations' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListVPCEConfigurationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

