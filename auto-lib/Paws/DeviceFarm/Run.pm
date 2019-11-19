# Generated from default/object.tt
package Paws::DeviceFarm::Run;
  use Moo;
  use Types::Standard qw/Str Int Bool/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Counters DeviceFarm_DeviceMinutes DeviceFarm_Radios DeviceFarm_NetworkProfile DeviceFarm_DeviceSelectionResult DeviceFarm_CustomerArtifactPaths DeviceFarm_Location/;
  has AppUpload => (is => 'ro', isa => Str);
  has Arn => (is => 'ro', isa => Str);
  has BillingMethod => (is => 'ro', isa => Str);
  has CompletedJobs => (is => 'ro', isa => Int);
  has Counters => (is => 'ro', isa => DeviceFarm_Counters);
  has Created => (is => 'ro', isa => Str);
  has CustomerArtifactPaths => (is => 'ro', isa => DeviceFarm_CustomerArtifactPaths);
  has DeviceMinutes => (is => 'ro', isa => DeviceFarm_DeviceMinutes);
  has DevicePoolArn => (is => 'ro', isa => Str);
  has DeviceSelectionResult => (is => 'ro', isa => DeviceFarm_DeviceSelectionResult);
  has EventCount => (is => 'ro', isa => Int);
  has JobTimeoutMinutes => (is => 'ro', isa => Int);
  has Locale => (is => 'ro', isa => Str);
  has Location => (is => 'ro', isa => DeviceFarm_Location);
  has Message => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has NetworkProfile => (is => 'ro', isa => DeviceFarm_NetworkProfile);
  has ParsingResultUrl => (is => 'ro', isa => Str);
  has Platform => (is => 'ro', isa => Str);
  has Radios => (is => 'ro', isa => DeviceFarm_Radios);
  has Result => (is => 'ro', isa => Str);
  has ResultCode => (is => 'ro', isa => Str);
  has Seed => (is => 'ro', isa => Int);
  has SkipAppResign => (is => 'ro', isa => Bool);
  has Started => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Stopped => (is => 'ro', isa => Str);
  has TestSpecArn => (is => 'ro', isa => Str);
  has TotalJobs => (is => 'ro', isa => Int);
  has Type => (is => 'ro', isa => Str);
  has WebUrl => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Started' => 'started',
                       'Counters' => 'counters',
                       'SkipAppResign' => 'skipAppResign',
                       'JobTimeoutMinutes' => 'jobTimeoutMinutes',
                       'CompletedJobs' => 'completedJobs',
                       'Platform' => 'platform',
                       'Locale' => 'locale',
                       'Status' => 'status',
                       'TestSpecArn' => 'testSpecArn',
                       'Type' => 'type',
                       'ResultCode' => 'resultCode',
                       'WebUrl' => 'webUrl',
                       'DevicePoolArn' => 'devicePoolArn',
                       'AppUpload' => 'appUpload',
                       'CustomerArtifactPaths' => 'customerArtifactPaths',
                       'NetworkProfile' => 'networkProfile',
                       'DeviceMinutes' => 'deviceMinutes',
                       'DeviceSelectionResult' => 'deviceSelectionResult',
                       'Radios' => 'radios',
                       'TotalJobs' => 'totalJobs',
                       'Stopped' => 'stopped',
                       'EventCount' => 'eventCount',
                       'BillingMethod' => 'billingMethod',
                       'Name' => 'name',
                       'Message' => 'message',
                       'Created' => 'created',
                       'ParsingResultUrl' => 'parsingResultUrl',
                       'Location' => 'location',
                       'Result' => 'result',
                       'Arn' => 'arn',
                       'Seed' => 'seed'
                     },
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'TestSpecArn' => {
                                  'type' => 'Str'
                                },
               'Locale' => {
                             'type' => 'Str'
                           },
               'Platform' => {
                               'type' => 'Str'
                             },
               'Counters' => {
                               'class' => 'Paws::DeviceFarm::Counters',
                               'type' => 'DeviceFarm_Counters'
                             },
               'SkipAppResign' => {
                                    'type' => 'Bool'
                                  },
               'JobTimeoutMinutes' => {
                                        'type' => 'Int'
                                      },
               'CompletedJobs' => {
                                    'type' => 'Int'
                                  },
               'Started' => {
                              'type' => 'Str'
                            },
               'CustomerArtifactPaths' => {
                                            'class' => 'Paws::DeviceFarm::CustomerArtifactPaths',
                                            'type' => 'DeviceFarm_CustomerArtifactPaths'
                                          },
               'AppUpload' => {
                                'type' => 'Str'
                              },
               'DevicePoolArn' => {
                                    'type' => 'Str'
                                  },
               'DeviceMinutes' => {
                                    'type' => 'DeviceFarm_DeviceMinutes',
                                    'class' => 'Paws::DeviceFarm::DeviceMinutes'
                                  },
               'DeviceSelectionResult' => {
                                            'type' => 'DeviceFarm_DeviceSelectionResult',
                                            'class' => 'Paws::DeviceFarm::DeviceSelectionResult'
                                          },
               'NetworkProfile' => {
                                     'type' => 'DeviceFarm_NetworkProfile',
                                     'class' => 'Paws::DeviceFarm::NetworkProfile'
                                   },
               'ResultCode' => {
                                 'type' => 'Str'
                               },
               'WebUrl' => {
                             'type' => 'Str'
                           },
               'Type' => {
                           'type' => 'Str'
                         },
               'Message' => {
                              'type' => 'Str'
                            },
               'BillingMethod' => {
                                    'type' => 'Str'
                                  },
               'Name' => {
                           'type' => 'Str'
                         },
               'EventCount' => {
                                 'type' => 'Int'
                               },
               'Radios' => {
                             'type' => 'DeviceFarm_Radios',
                             'class' => 'Paws::DeviceFarm::Radios'
                           },
               'Stopped' => {
                              'type' => 'Str'
                            },
               'TotalJobs' => {
                                'type' => 'Int'
                              },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Seed' => {
                           'type' => 'Int'
                         },
               'Location' => {
                               'type' => 'DeviceFarm_Location',
                               'class' => 'Paws::DeviceFarm::Location'
                             },
               'Result' => {
                             'type' => 'Str'
                           },
               'Created' => {
                              'type' => 'Str'
                            },
               'ParsingResultUrl' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }


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

  $service_obj->Method(Att1 => { AppUpload => $value, ..., WebUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Run object:

  $result = $service_obj->Method(...);
  $result->Att1->AppUpload

=head1 DESCRIPTION

Represents a test run on a set of devices with a given app package,
test parameters, etc.

=head1 ATTRIBUTES


=head2 AppUpload => Str

  An app to upload or that has been uploaded.


=head2 Arn => Str

  The run's ARN.


=head2 BillingMethod => Str

  Specifies the billing method for a test run: C<metered> or
C<unmetered>. If the parameter is not specified, the default value is
C<metered>.


=head2 CompletedJobs => Int

  The total number of completed jobs.


=head2 Counters => DeviceFarm_Counters

  The run's result counters.


=head2 Created => Str

  When the run was created.


=head2 CustomerArtifactPaths => DeviceFarm_CustomerArtifactPaths

  Output C<CustomerArtifactPaths> object for the test run.


=head2 DeviceMinutes => DeviceFarm_DeviceMinutes

  Represents the total (metered or unmetered) minutes used by the test
run.


=head2 DevicePoolArn => Str

  The ARN of the device pool for the run.


=head2 DeviceSelectionResult => DeviceFarm_DeviceSelectionResult

  The results of a device filter used to select the devices for a test
run.


=head2 EventCount => Int

  For fuzz tests, this is the number of events, between 1 and 10000, that
the UI fuzz test should perform.


=head2 JobTimeoutMinutes => Int

  The number of minutes the job will execute before it times out.


=head2 Locale => Str

  Information about the locale that is used for the run.


=head2 Location => DeviceFarm_Location

  Information about the location that is used for the run.


=head2 Message => Str

  A message about the run's result.


=head2 Name => Str

  The run's name.


=head2 NetworkProfile => DeviceFarm_NetworkProfile

  The network profile being used for a test run.


=head2 ParsingResultUrl => Str

  Read-only URL for an object in S3 bucket where you can get the parsing
results of the test package. If the test package doesn't parse, the
reason why it doesn't parse appears in the file that this URL points
to.


=head2 Platform => Str

  The run's platform.

Allowed values include:

=over

=item *

ANDROID: The Android platform.

=item *

IOS: The iOS platform.

=back



=head2 Radios => DeviceFarm_Radios

  Information about the radio states for the run.


=head2 Result => Str

  The run's result.

Allowed values include:

=over

=item *

PENDING: A pending condition.

=item *

PASSED: A passing condition.

=item *

WARNED: A warning condition.

=item *

FAILED: A failed condition.

=item *

SKIPPED: A skipped condition.

=item *

ERRORED: An error condition.

=item *

STOPPED: A stopped condition.

=back



=head2 ResultCode => Str

  Supporting field for the result field. Set only if C<result> is
C<SKIPPED>. C<PARSING_FAILED> if the result is skipped because of test
package parsing failure.


=head2 Seed => Int

  For fuzz tests, this is a seed to use for randomizing the UI fuzz test.
Using the same seed value between tests ensures identical event
sequences.


=head2 SkipAppResign => Bool

  When set to C<true>, for private devices, Device Farm will not sign
your app again. For public devices, Device Farm always signs your apps
again and this parameter has no effect.

For more information about how Device Farm re-signs your app(s), see Do
you modify my app? (https://aws.amazon.com/device-farm/faq/) in the
I<AWS Device Farm FAQs>.


=head2 Started => Str

  The run's start time.


=head2 Status => Str

  The run's status.

Allowed values include:

=over

=item *

PENDING: A pending status.

=item *

PENDING_CONCURRENCY: A pending concurrency status.

=item *

PENDING_DEVICE: A pending device status.

=item *

PROCESSING: A processing status.

=item *

SCHEDULING: A scheduling status.

=item *

PREPARING: A preparing status.

=item *

RUNNING: A running status.

=item *

COMPLETED: A completed status.

=item *

STOPPING: A stopping status.

=back



=head2 Stopped => Str

  The run's stop time.


=head2 TestSpecArn => Str

  The ARN of the YAML-formatted test specification for the run.


=head2 TotalJobs => Int

  The total number of jobs for the run.


=head2 Type => Str

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

APPIUM_PYTHON: The Appium Python type.

=item *

APPIUM_NODE: The Appium Node.js type.

=item *

APPIUM_RUBY: The Appium Ruby type.

=item *

APPIUM_WEB_JAVA_JUNIT: The Appium Java JUnit type for web apps.

=item *

APPIUM_WEB_JAVA_TESTNG: The Appium Java TestNG type for web apps.

=item *

APPIUM_WEB_PYTHON: The Appium Python type for web apps.

=item *

APPIUM_WEB_NODE: The Appium Node.js type for web apps.

=item *

APPIUM_WEB_RUBY: The Appium Ruby type for web apps.

=item *

CALABASH: The Calabash type.

=item *

INSTRUMENTATION: The Instrumentation type.

=item *

UIAUTOMATION: The uiautomation type.

=item *

UIAUTOMATOR: The uiautomator type.

=item *

XCTEST: The Xcode test type.

=item *

XCTEST_UI: The Xcode UI test type.

=back



=head2 WebUrl => Str

  The Device Farm console URL for the recording of the run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

