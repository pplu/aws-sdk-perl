
package Paws::SecurityHub::BatchEnableStandardsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SecurityHub::Types qw/SecurityHub_StandardsSubscription/;
  has StandardsSubscriptions => (is => 'ro', isa => ArrayRef[SecurityHub_StandardsSubscription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StandardsSubscriptions' => {
                                             'type' => 'ArrayRef[SecurityHub_StandardsSubscription]',
                                             'class' => 'Paws::SecurityHub::StandardsSubscription'
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

Paws::SecurityHub::BatchEnableStandardsResponse

=head1 ATTRIBUTES


=head2 StandardsSubscriptions => ArrayRef[SecurityHub_StandardsSubscription]

The details of the standards subscriptions that were enabled.


=head2 _request_id => Str


=cut

