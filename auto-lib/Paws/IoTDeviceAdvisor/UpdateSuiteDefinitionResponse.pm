
package Paws::IoTDeviceAdvisor::UpdateSuiteDefinitionResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has SuiteDefinitionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteDefinitionArn');
  has SuiteDefinitionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteDefinitionId');
  has SuiteDefinitionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteDefinitionName');
  has SuiteDefinitionVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteDefinitionVersion');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::UpdateSuiteDefinitionResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

Timestamp of when the test suite was created.


=head2 LastUpdatedAt => Str

Timestamp of when the test suite was updated.


=head2 SuiteDefinitionArn => Str

Amazon Resource name of the updated test suite.


=head2 SuiteDefinitionId => Str

Suite definition Id of the updated test suite.


=head2 SuiteDefinitionName => Str

Suite definition name of the updated test suite.


=head2 SuiteDefinitionVersion => Str

Suite definition version of the updated test suite.


=head2 _request_id => Str


=cut

