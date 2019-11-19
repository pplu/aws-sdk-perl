
package Paws::Polly::StartSpeechSynthesisTaskOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Polly::Types qw/Polly_SynthesisTask/;
  has SynthesisTask => (is => 'ro', isa => Polly_SynthesisTask);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SynthesisTask' => {
                                    'type' => 'Polly_SynthesisTask',
                                    'class' => 'Paws::Polly::SynthesisTask'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::StartSpeechSynthesisTaskOutput

=head1 ATTRIBUTES


=head2 SynthesisTask => Polly_SynthesisTask

SynthesisTask object that provides information and attributes about a
newly submitted speech synthesis task.


=head2 _request_id => Str


=cut

