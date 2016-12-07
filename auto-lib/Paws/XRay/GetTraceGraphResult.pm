
package Paws::XRay::GetTraceGraphResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Services => (is => 'ro', isa => 'ArrayRef[Paws::XRay::Service]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetTraceGraphResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token. Not used.


=head2 Services => ArrayRef[L<Paws::XRay::Service>]

The services that have processed one of the specified requests.


=head2 _request_id => Str


=cut

