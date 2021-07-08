
package Paws::IoTDeviceAdvisor::ListSuiteDefinitionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SuiteDefinitionInformationList => (is => 'ro', isa => 'ArrayRef[Paws::IoTDeviceAdvisor::SuiteDefinitionInformation]', traits => ['NameInRequest'], request_name => 'suiteDefinitionInformationList');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::ListSuiteDefinitionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token used to get the next set of results.


=head2 SuiteDefinitionInformationList => ArrayRef[L<Paws::IoTDeviceAdvisor::SuiteDefinitionInformation>]

An array of objects that provide summaries of information about the
suite definitions in the list.


=head2 _request_id => Str


=cut

