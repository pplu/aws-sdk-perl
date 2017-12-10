
package Paws::IoT::ListThingRegistrationTaskReportsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ReportType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportType');
  has ResourceLinks => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceLinks');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingRegistrationTaskReportsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results.


=head2 ReportType => Str

The type of task report.

Valid values are: C<"ERRORS">, C<"RESULTS">
=head2 ResourceLinks => ArrayRef[Str|Undef]

Links to the task resources.


=head2 _request_id => Str


=cut

