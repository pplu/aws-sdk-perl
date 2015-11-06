package Paws::DeviceFarm;
  use Moose;
  sub service { 'devicefarm' }
  sub version { '2015-06-23' }
  sub target_prefix { 'DeviceFarm_20150623' }
  sub json_version { "1.1" }

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';


  our $AUTOLOAD;
  sub AUTOLOAD {
    my $method = $AUTOLOAD;
    my $self = shift;
    my $call_object = $self->new_with_coercions($method, @_);
    return $self->caller->do_call($self, $call_object);
  }


  sub operations { qw/CreateDevicePool CreateProject CreateUpload DeleteDevicePool DeleteProject DeleteRun DeleteUpload GetAccountSettings GetDevice GetDevicePool GetDevicePoolCompatibility GetJob GetProject GetRun GetSuite GetTest GetUpload ListArtifacts ListDevicePools ListDevices ListJobs ListProjects ListRuns ListSamples ListSuites ListTests ListUniqueProblems ListUploads ScheduleRun UpdateDevicePool UpdateProject / }

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


=head2 GetDevicePoolCompatibility(AppArn => Str, DevicePoolArn => Str, [TestType => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::GetDevicePoolCompatibility>

Returns: a L<Paws::DeviceFarm::GetDevicePoolCompatibilityResult> instance

  Gets information about compatibility with a device pool.


=head2 GetJob(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::GetJob>

Returns: a L<Paws::DeviceFarm::GetJobResult> instance

  Gets information about a job.


=head2 GetProject(Arn => Str)

Each argument is described in detail in: L<Paws::DeviceFarm::GetProject>

Returns: a L<Paws::DeviceFarm::GetProjectResult> instance

  Gets information about a project.


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


=head2 ListProjects([Arn => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ListProjects>

Returns: a L<Paws::DeviceFarm::ListProjectsResult> instance

  Gets information about projects.


=head2 ListRuns(Arn => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ListRuns>

Returns: a L<Paws::DeviceFarm::ListRunsResult> instance

  Gets information about runs.


=head2 ListSamples(Arn => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ListSamples>

Returns: a L<Paws::DeviceFarm::ListSamplesResult> instance

  Gets information about samples.


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

  Gets information about uploads.


=head2 ScheduleRun(AppArn => Str, DevicePoolArn => Str, ProjectArn => Str, Test => L<Paws::DeviceFarm::ScheduleRunTest>, [Configuration => L<Paws::DeviceFarm::ScheduleRunConfiguration>, Name => Str])

Each argument is described in detail in: L<Paws::DeviceFarm::ScheduleRun>

Returns: a L<Paws::DeviceFarm::ScheduleRunResult> instance

  Schedules a run.


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


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

