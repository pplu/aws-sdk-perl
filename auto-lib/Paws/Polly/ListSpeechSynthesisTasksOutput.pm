
package Paws::Polly::ListSpeechSynthesisTasksOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Polly::Types qw/Polly_SynthesisTask/;
  has NextToken => (is => 'ro', isa => Str);
  has SynthesisTasks => (is => 'ro', isa => ArrayRef[Polly_SynthesisTask]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SynthesisTasks' => {
                                     'class' => 'Paws::Polly::SynthesisTask',
                                     'type' => 'ArrayRef[Polly_SynthesisTask]'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::ListSpeechSynthesisTasksOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An opaque pagination token returned from the previous List operation in
this request. If present, this indicates where to continue the listing.


=head2 SynthesisTasks => ArrayRef[Polly_SynthesisTask]

List of SynthesisTask objects that provides information from the
specified task in the list request, including output format, creation
time, task status, and so on.


=head2 _request_id => Str


=cut

