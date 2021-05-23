
package Paws::IoTDeviceAdvisor::ListSuiteRunsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SuiteRunsList => (is => 'ro', isa => 'ArrayRef[Paws::IoTDeviceAdvisor::SuiteRunInformation]', traits => ['NameInRequest'], request_name => 'suiteRunsList');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::ListSuiteRunsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to retrieve the next set of results.


=head2 SuiteRunsList => ArrayRef[L<Paws::IoTDeviceAdvisor::SuiteRunInformation>]

An array of objects that provide summaries of information about the
suite runs in the list.


=head2 _request_id => Str


=cut

