
package Paws::PinpointEmail::ListDeliverabilityTestReportsResponse;
  use Moose;
  has DeliverabilityTestReports => (is => 'ro', isa => 'ArrayRef[Paws::PinpointEmail::DeliverabilityTestReport]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::ListDeliverabilityTestReportsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliverabilityTestReports => ArrayRef[L<Paws::PinpointEmail::DeliverabilityTestReport>]

An object that contains a lists of predictive inbox placement tests
that you've performed.


=head2 NextToken => Str

A token that indicates that there are additional predictive inbox
placement tests to list. To view additional predictive inbox placement
tests, issue another request to C<ListDeliverabilityTestReports>, and
pass this token in the C<NextToken> parameter.


=head2 _request_id => Str


=cut

