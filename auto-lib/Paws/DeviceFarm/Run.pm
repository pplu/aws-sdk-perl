package Paws::DeviceFarm::Run;
  use Moose;
  has arn => (is => 'ro', isa => 'Str');
  has billingMethod => (is => 'ro', isa => 'Str');
  has completedJobs => (is => 'ro', isa => 'Int');
  has counters => (is => 'ro', isa => 'Paws::DeviceFarm::Counters');
  has created => (is => 'ro', isa => 'Str');
  has message => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
  has platform => (is => 'ro', isa => 'Str');
  has result => (is => 'ro', isa => 'Str');
  has started => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Str');
  has stopped => (is => 'ro', isa => 'Str');
  has totalJobs => (is => 'ro', isa => 'Int');
  has type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Run

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Run object:

  $service_obj->Method(Att1 => { arn => $value, ..., type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Run object:

  $result = $service_obj->Method(...);
  $result->Att1->arn

=head1 DESCRIPTION

Represents an app on a set of devices with a specific test and
configuration.

=head1 ATTRIBUTES

=head2 arn => Str

  The run's ARN.

=head2 billingMethod => Str

  Specifies the billing method for a test run: C<metered> or
C<unmetered>. If the parameter is not specified, the default value is
C<unmetered>.

=head2 completedJobs => Int

  The total number of completed jobs.

=head2 counters => L<Paws::DeviceFarm::Counters>

  The run's result counters.

=head2 created => Str

  When the run was created.

=head2 message => Str

  A message about the run's result.

=head2 name => Str

  The run's name.

=head2 platform => Str

  The run's platform.

Allowed values include:

=over

=item *

ANDROID: The Android platform.

=item *

IOS: The iOS platform.

=back

=head2 result => Str

  The run's result.

Allowed values include:

=over

=item *

ERRORED: An error condition.

=item *

FAILED: A failed condition.

=item *

SKIPPED: A skipped condition.

=item *

STOPPED: A stopped condition.

=item *

PASSED: A passing condition.

=item *

PENDING: A pending condition.

=item *

WARNED: A warning condition.

=back

=head2 started => Str

  The run's start time.

=head2 status => Str

  The run's status.

Allowed values include:

=over

=item *

COMPLETED: A completed status.

=item *

PENDING: A pending status.

=item *

PROCESSING: A processing status.

=item *

RUNNING: A running status.

=item *

SCHEDULING: A scheduling status.

=back

=head2 stopped => Str

  The run's stop time.

=head2 totalJobs => Int

  The total number of jobs for the run.

=head2 type => Str

  The run's type.

Must be one of the following values:

=over

=item *

BUILTIN_FUZZ: The built-in fuzz type.

=item *

BUILTIN_EXPLORER: For Android, an app explorer that will traverse an
Android app, interacting with it and capturing screenshots at the same
time.

=item *

APPIUM_JAVA_JUNIT: The Appium Java JUnit type.

=item *

APPIUM_JAVA_TESTNG: The Appium Java TestNG type.

=item *

CALABASH: The Calabash type.

=item *

INSTRUMENTATION: The Instrumentation type.

=item *

UIAUTOMATION: The uiautomation type.

=item *

UIAUTOMATOR: The uiautomator type.

=item *

XCTEST: The XCode test type.

=back



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

