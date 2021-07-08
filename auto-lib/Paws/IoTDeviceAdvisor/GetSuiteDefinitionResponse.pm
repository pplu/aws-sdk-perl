
package Paws::IoTDeviceAdvisor::GetSuiteDefinitionResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has LastModifiedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedAt');
  has LatestVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'latestVersion');
  has SuiteDefinitionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteDefinitionArn');
  has SuiteDefinitionConfiguration => (is => 'ro', isa => 'Paws::IoTDeviceAdvisor::SuiteDefinitionConfiguration', traits => ['NameInRequest'], request_name => 'suiteDefinitionConfiguration');
  has SuiteDefinitionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteDefinitionId');
  has SuiteDefinitionVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteDefinitionVersion');
  has Tags => (is => 'ro', isa => 'Paws::IoTDeviceAdvisor::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::GetSuiteDefinitionResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

Date (in Unix epoch time) when the suite definition was created.


=head2 LastModifiedAt => Str

Date (in Unix epoch time) when the suite definition was last modified.


=head2 LatestVersion => Str

Latest suite definition version of the suite definition.


=head2 SuiteDefinitionArn => Str

The ARN of the suite definition.


=head2 SuiteDefinitionConfiguration => L<Paws::IoTDeviceAdvisor::SuiteDefinitionConfiguration>

Suite configuration of the suite definition.


=head2 SuiteDefinitionId => Str

Suite definition Id of the suite definition.


=head2 SuiteDefinitionVersion => Str

Suite definition version of the suite definition.


=head2 Tags => L<Paws::IoTDeviceAdvisor::TagMap>

Tags attached to the suite definition.


=head2 _request_id => Str


=cut

