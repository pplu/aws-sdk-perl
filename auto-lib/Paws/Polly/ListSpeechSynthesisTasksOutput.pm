
package Paws::Polly::ListSpeechSynthesisTasksOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SynthesisTasks => (is => 'ro', isa => 'ArrayRef[Paws::Polly::SynthesisTask]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::ListSpeechSynthesisTasksOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An opaque pagination token returned from the previous List operation in
this request. If present, this indicates where to continue the listing.


=head2 SynthesisTasks => ArrayRef[L<Paws::Polly::SynthesisTask>]

List of SynthesisTask objects that provides information from the
specified task in the list request, including output format, creation
time, task status, and so on.


=head2 _request_id => Str


=cut

