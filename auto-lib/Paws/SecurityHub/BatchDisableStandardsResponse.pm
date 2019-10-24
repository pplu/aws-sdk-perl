
package Paws::SecurityHub::BatchDisableStandardsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SecurityHub::Types qw/SecurityHub_StandardsSubscription/;
  has StandardsSubscriptions => (is => 'ro', isa => ArrayRef[SecurityHub_StandardsSubscription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StandardsSubscriptions' => {
                                             'class' => 'Paws::SecurityHub::StandardsSubscription',
                                             'type' => 'ArrayRef[SecurityHub_StandardsSubscription]'
                                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchDisableStandardsResponse

=head1 ATTRIBUTES


=head2 StandardsSubscriptions => ArrayRef[SecurityHub_StandardsSubscription]

The details of the standards subscriptions that were disabled.


=head2 _request_id => Str


=cut

