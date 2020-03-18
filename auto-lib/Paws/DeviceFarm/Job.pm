package Paws::DeviceFarm::Job;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Counters => (is => 'ro', isa => 'Paws::DeviceFarm::Counters', request_name => 'counters', traits => ['NameInRequest']);
  has Created => (is => 'ro', isa => 'Str', request_name => 'created', traits => ['NameInRequest']);
  has Device => (is => 'ro', isa => 'Paws::DeviceFarm::Device', request_name => 'device', traits => ['NameInRequest']);
  has DeviceMinutes => (is => 'ro', isa => 'Paws::DeviceFarm::DeviceMinutes', request_name => 'deviceMinutes', traits => ['NameInRequest']);
  has InstanceArn => (is => 'ro', isa => 'Str', request_name => 'instanceArn', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Result => (is => 'ro', isa => 'Str', request_name => 'result', traits => ['NameInRequest']);
  has Started => (is => 'ro', isa => 'Str', request_name => 'started', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Stopped => (is => 'ro', isa => 'Str', request_name => 'stopped', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has VideoCapture => (is => 'ro', isa => 'Bool', request_name => 'videoCapture', traits => ['NameInRequest']);
  has VideoEndpoint => (is => 'ro', isa => 'Str', request_name => 'videoEndpoint', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Job

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Job object:

  $service_obj->Method(Att1 => { Arn => $value, ..., VideoEndpoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Job object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents a device.

=head1 ATTRIBUTES


=head2 Arn => Str

  The job's ARN.


=head2 Counters => L<Paws::DeviceFarm::Counters>

  The job's result counters.


=head2 Created => Str

  When the job was created.


=head2 Device => L<Paws::DeviceFarm::Device>

  The device (phone or tablet).


=head2 DeviceMinutes => L<Paws::DeviceFarm::DeviceMinutes>

  Represents the total (metered or unmetered) minutes used by the job.


=head2 InstanceArn => Str

  The ARN of the instance.


=head2 Message => Str

  A message about the job's result.


=head2 Name => Str

  The job's name.


=head2 Result => Str

  The job's result.

Allowed values include:

=over

=item *

PENDING

=item *

PASSED

=item *

WARNED

=item *

FAILED

=item *

SKIPPED

=item *

ERRORED

=item *

STOPPED

=back



=head2 Started => Str

  The job's start time.


=head2 Status => Str

  The job's status.

Allowed values include:

=over

=item *

PENDING

=item *

PENDING_CONCURRENCY

=item *

PENDING_DEVICE

=item *

PROCESSING

=item *

SCHEDULING

=item *

PREPARING

=item *

RUNNING

=item *

COMPLETED

=item *

STOPPING

=back



=head2 Stopped => Str

  The job's stop time.


=head2 Type => Str

  The job's type.

Allowed values include the following:

=over

=item *

BUILTIN_FUZZ

=item *

BUILTIN_EXPLORER. For Android, an app explorer that traverses an
Android app, interacting with it and capturing screenshots at the same
time.

=item *

APPIUM_JAVA_JUNIT

=item *

APPIUM_JAVA_TESTNG

=item *

APPIUM_PYTHON

=item *

APPIUM_NODE

=item *

APPIUM_RUBY

=item *

APPIUM_WEB_JAVA_JUNIT

=item *

APPIUM_WEB_JAVA_TESTNG

=item *

APPIUM_WEB_PYTHON

=item *

APPIUM_WEB_NODE

=item *

APPIUM_WEB_RUBY

=item *

CALABASH

=item *

INSTRUMENTATION

=item *

UIAUTOMATION

=item *

UIAUTOMATOR

=item *

XCTEST

=item *

XCTEST_UI

=back



=head2 VideoCapture => Bool

  This value is set to true if video capture is enabled. Otherwise, it is
set to false.


=head2 VideoEndpoint => Str

  The endpoint for streaming device video.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

