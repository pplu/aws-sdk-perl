
package Paws::Polly::StartSpeechSynthesisTaskOutput;
  use Moose;
  has SynthesisTask => (is => 'ro', isa => 'Paws::Polly::SynthesisTask');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::StartSpeechSynthesisTaskOutput

=head1 ATTRIBUTES


=head2 SynthesisTask => L<Paws::Polly::SynthesisTask>

SynthesisTask object that provides information and attributes about a
newly submitted speech synthesis task.


=head2 _request_id => Str


=cut

