
package Paws::IoTDeviceAdvisor::StartSuiteRunResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has SuiteRunArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteRunArn');
  has SuiteRunId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteRunId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::StartSuiteRunResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

Date (in Unix epoch time) when the suite run was created.


=head2 SuiteRunArn => Str

Amazon resource name of the started suite run.


=head2 SuiteRunId => Str

Suite Run Id of the started suite run.


=head2 _request_id => Str


=cut

