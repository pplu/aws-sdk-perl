
package Paws::IoTDeviceAdvisor::CreateSuiteDefinitionResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has SuiteDefinitionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteDefinitionArn');
  has SuiteDefinitionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteDefinitionId');
  has SuiteDefinitionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteDefinitionName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::CreateSuiteDefinitionResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

Creates a Device Advisor test suite with TimeStamp of when it was
created.


=head2 SuiteDefinitionArn => Str

Creates a Device Advisor test suite with Amazon Resource name.


=head2 SuiteDefinitionId => Str

Creates a Device Advisor test suite with suite UUID.


=head2 SuiteDefinitionName => Str

Creates a Device Advisor test suite with suite definition name.


=head2 _request_id => Str


=cut

