
package Paws::XRay::BatchGetTracesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Traces => (is => 'ro', isa => 'ArrayRef[Paws::XRay::Trace]');
  has UnprocessedTraceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::BatchGetTracesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token. Not used.


=head2 Traces => ArrayRef[L<Paws::XRay::Trace>]

Full traces for the specified requests.


=head2 UnprocessedTraceIds => ArrayRef[Str|Undef]

Trace IDs of requests that haven't been processed.


=head2 _request_id => Str


=cut

