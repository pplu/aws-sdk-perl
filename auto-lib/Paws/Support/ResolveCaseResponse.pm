
package Paws::Support::ResolveCaseResponse;
  use Moose;
  has FinalCaseStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'finalCaseStatus' );
  has InitialCaseStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'initialCaseStatus' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Support::ResolveCaseResponse

=head1 ATTRIBUTES


=head2 FinalCaseStatus => Str

The status of the case after the ResolveCase request was processed.


=head2 InitialCaseStatus => Str

The status of the case when the ResolveCase request was sent.


=head2 _request_id => Str


=cut

1;