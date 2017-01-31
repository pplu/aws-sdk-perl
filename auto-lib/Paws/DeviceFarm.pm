package Paws::DeviceFarm;
  use Moose;
  sub service { 'devicefarm' }
  sub version { '2015-06-23' }
  sub target_prefix { 'DeviceFarm_20150623' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub CreateDevicePool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::CreateDevicePool', @_);
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
  sub DeleteDevicePool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::DeleteDevicePool', @_);
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
  sub GetJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::GetJob', @_);
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
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::ListJobs', @_);
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
  sub UpdateDevicePool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::UpdateDevicePool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DeviceFarm::UpdateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllOfferingStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetOfferingStatus(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->GetOfferingStatus(@_, nextToken => $result->nextToken);
        push @{ $result->current }, @{ $result->current };
        push @{ $result->nextPeriod }, @{ $result->nextPeriod };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->GetOfferingStatus(@_, nextToken => $result->nextToken);
        $callback->($_ => 'current') foreach (@{ $result->current });
        $callback->($_ => 'nextPeriod') foreach (@{ $result->nextPeriod });
      }
    }

    return undef
  }
  sub ListAllArtifacts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListArtifacts(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListArtifacts(@_, nextToken => $result->nextToken);
        push @{ $result->artifacts }, @{ $result->artifacts };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListArtifacts(@_, nextToken => $result->nextToken);
        $callback->($_ => 'artifacts') foreach (@{ $result->artifacts });
      }
    }

    return undef
  }
  sub ListAllDevicePools {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDevicePools(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListDevicePools(@_, nextToken => $result->nextToken);
        push @{ $result->devicePools }, @{ $result->devicePools };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListDevicePools(@_, nextToken => $result->nextToken);
        $callback->($_ => 'devicePools') foreach (@{ $result->devicePools });
      }
    }

    return undef
  }
  sub ListAllDevices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDevices(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListDevices(@_, nextToken => $result->nextToken);
        push @{ $result->devices }, @{ $result->devices };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListDevices(@_, nextToken => $result->nextToken);
        $callback->($_ => 'devices') foreach (@{ $result->devices });
      }
    }

    return undef
  }
  sub ListAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobs(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListJobs(@_, nextToken => $result->nextToken);
        push @{ $result->jobs }, @{ $result->jobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListJobs(@_, nextToken => $result->nextToken);
        $callback->($_ => 'jobs') foreach (@{ $result->jobs });
      }
    }

    return undef
  }
  sub ListAllOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOfferings(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListOfferings(@_, nextToken => $result->nextToken);
        push @{ $result->offerings }, @{ $result->offerings };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListOfferings(@_, nextToken => $result->nextToken);
        $callback->($_ => 'offerings') foreach (@{ $result->offerings });
      }
    }

    return undef
  }
  sub ListAllOfferingTransactions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOfferingTransactions(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListOfferingTransactions(@_, nextToken => $result->nextToken);
        push @{ $result->offeringTransactions }, @{ $result->offeringTransactions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListOfferingTransactions(@_, nextToken => $result->nextToken);
        $callback->($_ => 'offeringTransactions') foreach (@{ $result->offeringTransactions });
      }
    }

    return undef
  }
  sub ListAllProjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProjects(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListProjects(@_, nextToken => $result->nextToken);
        push @{ $result->projects }, @{ $result->projects };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListProjects(@_, nextToken => $result->nextToken);
        $callback->($_ => 'projects') foreach (@{ $result->projects });
      }
    }

    return undef
  }
  sub ListAllRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRuns(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListRuns(@_, nextToken => $result->nextToken);
        push @{ $result->runs }, @{ $result->runs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListRuns(@_, nextToken => $result->nextToken);
        $callback->($_ => 'runs') foreach (@{ $result->runs });
      }
    }

    return undef
  }
  sub ListAllSamples {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSamples(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListSamples(@_, nextToken => $result->nextToken);
        push @{ $result->samples }, @{ $result->samples };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListSamples(@_, nextToken => $result->nextToken);
        $callback->($_ => 'samples') foreach (@{ $result->samples });
      }
    }

    return undef
  }
  sub ListAllSuites {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSuites(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListSuites(@_, nextToken => $result->nextToken);
        push @{ $result->suites }, @{ $result->suites };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListSuites(@_, nextToken => $result->nextToken);
        $callback->($_ => 'suites') foreach (@{ $result->suites });
      }
    }

    return undef
  }
  sub ListAllTests {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTests(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListTests(@_, nextToken => $result->nextToken);
        push @{ $result->tests }, @{ $result->tests };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListTests(@_, nextToken => $result->nextToken);
        $callback->($_ => 'tests') foreach (@{ $result->tests });
      }
    }

    return undef
  }
  sub ListAllUniqueProblems {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUniqueProblems(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListUniqueProblems(@_, nextToken => $result->nextToken);
        push @{ $result->uniqueProblems }, @{ $result->uniqueProblems };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListUniqueProblems(@_, nextToken => $result->nextToken);
        $callback->($_ => 'uniqueProblems') foreach (@{ $result->uniqueProblems });
      }
    }

    return undef
  }
  sub ListAllUploads {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUploads(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListUploads(@_, nextToken => $result->nextToken);
        push @{ $result->uploads }, @{ $result->uploads };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListUploads(@_, nextToken => $result->nextToken);
        $callback->($_ => 'uploads') foreach (@{ $result->uploads });
      }
    }

    return undef
  }


  sub operations { qw/CreateDevicePool CreateProject CreateRemoteAccessSession CreateUpload DeleteDevicePool DeleteProject DeleteRemoteAccessSession DeleteRun DeleteUpload GetAccountSettings GetDevice GetDevicePool GetDevicePoolCompatibility GetJob GetOfferingStatus GetProject GetRemoteAccessSession GetRun GetSuite GetTest GetUpload InstallToRemoteAccessSession ListArtifacts ListDevicePools ListDevices ListJobs ListOfferings ListOfferingTransactions ListProjects ListRemoteAccessSessions ListRuns ListSamples ListSuites ListTests ListUniqueProblems ListUploads PurchaseOffering RenewOffering ScheduleRun StopRemoteAccessSession StopRun UpdateDevicePool UpdateProject / }

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

=head1 METHODS

=head2 CreateDevicePool(Name => Str, ProjectArn => Str, Rules => ArrayRef[L<Paws::DeviceFarm::Rule>], [Description => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::CreateDevicePool>

Returns: a L<Paws::DeviceFarm::CreateDevicePoolResult> instance

  Creates a device pool.


=head2 CreateProject(Name => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::CreateProject>

Returns: a L<Paws::DeviceFarm::CreateProjectResult> instance

  Creates a new project.


=head2 CreateRemoteAccessSession(DeviceArn => Str, ProjectArn => Str, [Configuration => L<Paws::DeviceFarm::CreateRemoteAccessSessionConfiguration>, Name => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::CreateRemoteAccessSession>

Returns: a L<Paws::DeviceFarm::CreateRemoteAccessSessionResult> instance

  Specifies and starts a remote access session.


=head2 CreateUpload(Name => Str, ProjectArn => Str, Type => Str, [ContentType => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::CreateUpload>

Returns: a L<Paws::DeviceFarm::CreateUploadResult> instance

  Uploads an app or test scripts.


=head2 DeleteDevicePool(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::DeleteDevicePool>

Returns: a L<Paws::DeviceFarm::DeleteDevicePoolResult> instance

  Deletes a device pool given the pool ARN. Does not allow deletion of
curated pools owned by the system.


=head2 DeleteProject(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::DeleteProject>

Returns: a L<Paws::DeviceFarm::DeleteProjectResult> instance

  Deletes an AWS Device Farm project, given the project ARN.

B<Note> Deleting this resource does not stop an in-progress run.


=head2 DeleteRemoteAccessSession(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::DeleteRemoteAccessSession>

Returns: a L<Paws::DeviceFarm::DeleteRemoteAccessSessionResult> instance

  Deletes a completed remote access session and its results.


=head2 DeleteRun(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::DeleteRun>

Returns: a L<Paws::DeviceFarm::DeleteRunResult> instance

  Deletes the run, given the run ARN.

B<Note> Deleting this resource does not stop an in-progress run.


=head2 DeleteUpload(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::DeleteUpload>

Returns: a L<Paws::DeviceFarm::DeleteUploadResult> instance

  Deletes an upload given the upload ARN.


=head2 GetAccountSettings()

Each argument is described in detail in: L<Paws::DeviceFarm::GetAccountSettings>

Returns: a L<Paws::DeviceFarm::GetAccountSettingsResult> instance

  Returns the number of unmetered iOS and/or unmetered Android devices
that have been purchased by the account.


=head2 GetDevice(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::GetDevice>

Returns: a L<Paws::DeviceFarm::GetDeviceResult> instance

  Gets information about a unique device type.


=head2 GetDevicePool(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::GetDevicePool>

Returns: a L<Paws::DeviceFarm::GetDevicePoolResult> instance

  Gets information about a device pool.


=head2 GetDevicePoolCompatibility(DevicePoolArn => Str, [AppArn => Str, TestType => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::GetDevicePoolCompatibility>

Returns: a L<Paws::DeviceFarm::GetDevicePoolCompatibilityResult> instance

  Gets information about compatibility with a device pool.


=head2 GetJob(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::GetJob>

Returns: a L<Paws::DeviceFarm::GetJobResult> instance

  Gets information about a job.


=head2 GetOfferingStatus([NextToken => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::GetOfferingStatus>

Returns: a L<Paws::DeviceFarm::GetOfferingStatusResult> instance

  Gets the current status and future status of all offerings purchased by
an AWS account. The response indicates how many offerings are currently
available and the offerings that will be available in the next period.
The API returns a C<NotEligible> error if the user is not permitted to
invoke the operation. Please contact aws-devicefarm-support@amazon.com
if you believe that you should be able to invoke this operation.


=head2 GetProject(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::GetProject>

Returns: a L<Paws::DeviceFarm::GetProjectResult> instance

  Gets information about a project.


=head2 GetRemoteAccessSession(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::GetRemoteAccessSession>

Returns: a L<Paws::DeviceFarm::GetRemoteAccessSessionResult> instance

  Returns a link to a currently running remote access session.


=head2 GetRun(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::GetRun>

Returns: a L<Paws::DeviceFarm::GetRunResult> instance

  Gets information about a run.


=head2 GetSuite(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::GetSuite>

Returns: a L<Paws::DeviceFarm::GetSuiteResult> instance

  Gets information about a suite.


=head2 GetTest(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::GetTest>

Returns: a L<Paws::DeviceFarm::GetTestResult> instance

  Gets information about a test.


=head2 GetUpload(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::GetUpload>

Returns: a L<Paws::DeviceFarm::GetUploadResult> instance

  Gets information about an upload.


=head2 InstallToRemoteAccessSession(AppArn => Str, RemoteAccessSessionArn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::InstallToRemoteAccessSession>

Returns: a L<Paws::DeviceFarm::InstallToRemoteAccessSessionResult> instance

  Installs an application to the device in a remote access session. For
Android applications, the file must be in .apk format. For iOS
applications, the file must be in .ipa format.


=head2 ListArtifacts(Arn => Str, Type => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ListArtifacts>

Returns: a L<Paws::DeviceFarm::ListArtifactsResult> instance

  Gets information about artifacts.


=head2 ListDevicePools(Arn => Str, [NextToken => Str, Type => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ListDevicePools>

Returns: a L<Paws::DeviceFarm::ListDevicePoolsResult> instance

  Gets information about device pools.


=head2 ListDevices([Arn => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ListDevices>

Returns: a L<Paws::DeviceFarm::ListDevicesResult> instance

  Gets information about unique device types.


=head2 ListJobs(Arn => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ListJobs>

Returns: a L<Paws::DeviceFarm::ListJobsResult> instance

  Gets information about jobs.


=head2 ListOfferings([NextToken => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ListOfferings>

Returns: a L<Paws::DeviceFarm::ListOfferingsResult> instance

  Returns a list of products or offerings that the user can manage
through the API. Each offering record indicates the recurring price per
unit and the frequency for that offering. The API returns a
C<NotEligible> error if the user is not permitted to invoke the
operation. Please contact aws-devicefarm-support@amazon.com if you
believe that you should be able to invoke this operation.


=head2 ListOfferingTransactions([NextToken => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ListOfferingTransactions>

Returns: a L<Paws::DeviceFarm::ListOfferingTransactionsResult> instance

  Returns a list of all historical purchases, renewals, and system
renewal transactions for an AWS account. The list is paginated and
ordered by a descending timestamp (most recent transactions are first).
The API returns a C<NotEligible> error if the user is not permitted to
invoke the operation. Please contact aws-devicefarm-support@amazon.com
if you believe that you should be able to invoke this operation.


=head2 ListProjects([Arn => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ListProjects>

Returns: a L<Paws::DeviceFarm::ListProjectsResult> instance

  Gets information about projects.


=head2 ListRemoteAccessSessions(Arn => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ListRemoteAccessSessions>

Returns: a L<Paws::DeviceFarm::ListRemoteAccessSessionsResult> instance

  Returns a list of all currently running remote access sessions.


=head2 ListRuns(Arn => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ListRuns>

Returns: a L<Paws::DeviceFarm::ListRunsResult> instance

  Gets information about runs, given an AWS Device Farm project ARN.


=head2 ListSamples(Arn => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ListSamples>

Returns: a L<Paws::DeviceFarm::ListSamplesResult> instance

  Gets information about samples, given an AWS Device Farm project ARN


=head2 ListSuites(Arn => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ListSuites>

Returns: a L<Paws::DeviceFarm::ListSuitesResult> instance

  Gets information about suites.


=head2 ListTests(Arn => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ListTests>

Returns: a L<Paws::DeviceFarm::ListTestsResult> instance

  Gets information about tests.


=head2 ListUniqueProblems(Arn => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ListUniqueProblems>

Returns: a L<Paws::DeviceFarm::ListUniqueProblemsResult> instance

  Gets information about unique problems.


=head2 ListUploads(Arn => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ListUploads>

Returns: a L<Paws::DeviceFarm::ListUploadsResult> instance

  Gets information about uploads, given an AWS Device Farm project ARN.


=head2 PurchaseOffering([OfferingId => Str, Quantity => Int])

Each argument is described in detail in: L<Paws::DeviceFarm::PurchaseOffering>

Returns: a L<Paws::DeviceFarm::PurchaseOfferingResult> instance

  Immediately purchases offerings for an AWS account. Offerings renew
with the latest total purchased quantity for an offering, unless the
renewal was overridden. The API returns a C<NotEligible> error if the
user is not permitted to invoke the operation. Please contact
aws-devicefarm-support@amazon.com if you believe that you should be
able to invoke this operation.


=head2 RenewOffering([OfferingId => Str, Quantity => Int])

Each argument is described in detail in: L<Paws::DeviceFarm::RenewOffering>

Returns: a L<Paws::DeviceFarm::RenewOfferingResult> instance

  Explicitly sets the quantity of devices to renew for an offering,
starting from the C<effectiveDate> of the next period. The API returns
a C<NotEligible> error if the user is not permitted to invoke the
operation. Please contact aws-devicefarm-support@amazon.com if you
believe that you should be able to invoke this operation.


=head2 ScheduleRun(DevicePoolArn => Str, ProjectArn => Str, Test => L<Paws::DeviceFarm::ScheduleRunTest>, [AppArn => Str, Configuration => L<Paws::DeviceFarm::ScheduleRunConfiguration>, Name => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ScheduleRun>

Returns: a L<Paws::DeviceFarm::ScheduleRunResult> instance

  Schedules a run.


=head2 StopRemoteAccessSession(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::StopRemoteAccessSession>

Returns: a L<Paws::DeviceFarm::StopRemoteAccessSessionResult> instance

  Ends a specified remote access session.


=head2 StopRun(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::StopRun>

Returns: a L<Paws::DeviceFarm::StopRunResult> instance

  Initiates a stop request for the current test run. AWS Device Farm will
immediately stop the run on devices where tests have not started
executing, and you will not be billed for these devices. On devices
where tests have started executing, Setup Suite and Teardown Suite
tests will run to completion before stopping execution on those
devices. You will be billed for Setup, Teardown, and any tests that
were in progress or already completed.


=head2 UpdateDevicePool(Arn => Str, [Description => Str, Name => Str, Rules => ArrayRef[L<Paws::DeviceFarm::Rule>]])

Each argument is described in detail in: L<Paws::DeviceFarm::UpdateDevicePool>

Returns: a L<Paws::DeviceFarm::UpdateDevicePoolResult> instance

  Modifies the name, description, and rules in a device pool given the
attributes and the pool ARN. Rule updates are all-or-nothing, meaning
they can only be updated as a whole (or not at all).


=head2 UpdateProject(Arn => Str, [Name => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::UpdateProject>

Returns: a L<Paws::DeviceFarm::UpdateProjectResult> instance

  Modifies the specified project name, given the project ARN and a new
name.




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


=head2 ListAllDevicePools(sub { },Arn => Str, [NextToken => Str, Type => Str])

=head2 ListAllDevicePools(Arn => Str, [NextToken => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - devicePools, passing the object as the first parameter, and the string 'devicePools' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListDevicePoolsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDevices(sub { },[Arn => Str, NextToken => Str])

=head2 ListAllDevices([Arn => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - devices, passing the object as the first parameter, and the string 'devices' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListDevicesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobs(sub { },Arn => Str, [NextToken => Str])

=head2 ListAllJobs(Arn => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobs, passing the object as the first parameter, and the string 'jobs' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListJobsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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


=head2 ListAllUploads(sub { },Arn => Str, [NextToken => Str])

=head2 ListAllUploads(Arn => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - uploads, passing the object as the first parameter, and the string 'uploads' as the second parameter 

If not, it will return a a L<Paws::DeviceFarm::ListUploadsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

