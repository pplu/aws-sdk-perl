
package Paws::Support::ResolveCaseResponse;
  use Moose;
  has FinalCaseStatus => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'finalCaseStatus' );
  has InitialCaseStatus => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'initialCaseStatus' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Support::ResolveCaseResponse

=head1 ATTRIBUTES


=head2 FinalCaseStatus => Str

The status of the case after the ResolveCase request was processed.



=head2 InitialCaseStatus => Str

The status of the case when the ResolveCase request was sent.




=cut

1;