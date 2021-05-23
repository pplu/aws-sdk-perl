
package Paws::IoTDeviceAdvisor::GetSuiteRunResponse;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has ErrorReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorReason');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has SuiteDefinitionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteDefinitionId');
  has SuiteDefinitionVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteDefinitionVersion');
  has SuiteRunArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteRunArn');
  has SuiteRunConfiguration => (is => 'ro', isa => 'Paws::IoTDeviceAdvisor::SuiteRunConfiguration', traits => ['NameInRequest'], request_name => 'suiteRunConfiguration');
  has SuiteRunId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteRunId');
  has Tags => (is => 'ro', isa => 'Paws::IoTDeviceAdvisor::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TestResult => (is => 'ro', isa => 'Paws::IoTDeviceAdvisor::TestResult', traits => ['NameInRequest'], request_name => 'testResult');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::GetSuiteRunResponse

=head1 ATTRIBUTES


=head2 EndTime => Str

Date (in Unix epoch time) when the test suite run ended.


=head2 ErrorReason => Str

Error reason for any test suite run failure.


=head2 StartTime => Str

Date (in Unix epoch time) when the test suite run was started.


=head2 Status => Str

Status for the test suite run.

Valid values are: C<"PASS">, C<"FAIL">, C<"CANCELED">, C<"PENDING">, C<"RUNNING">, C<"STOPPING">, C<"STOPPED">, C<"PASS_WITH_WARNINGS">, C<"ERROR">
=head2 SuiteDefinitionId => Str

Suite definition Id for the test suite run.


=head2 SuiteDefinitionVersion => Str

Suite definition version for the test suite run.


=head2 SuiteRunArn => Str

The ARN of the suite run.


=head2 SuiteRunConfiguration => L<Paws::IoTDeviceAdvisor::SuiteRunConfiguration>

Suite run configuration for the test suite run.


=head2 SuiteRunId => Str

Suite run Id for the test suite run.


=head2 Tags => L<Paws::IoTDeviceAdvisor::TagMap>

The tags attached to the suite run.


=head2 TestResult => L<Paws::IoTDeviceAdvisor::TestResult>

Test results for the test suite run.


=head2 _request_id => Str


=cut

