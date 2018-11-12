
package Paws::Polly::GetSpeechSynthesisTaskOutput;
  use Moose;
  has SynthesisTask => (is => 'ro', isa => 'Paws::Polly::SynthesisTask');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::GetSpeechSynthesisTaskOutput

=head1 ATTRIBUTES


=head2 SynthesisTask => L<Paws::Polly::SynthesisTask>

SynthesisTask object that provides information from the requested task,
including output format, creation time, task status, and so on.


=head2 _request_id => Str


=cut

