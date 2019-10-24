
package Paws::SecurityHub::GetEnabledStandardsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SecurityHub::Types qw/SecurityHub_StandardsSubscription/;
  has NextToken => (is => 'ro', isa => Str);
  has StandardsSubscriptions => (is => 'ro', isa => ArrayRef[SecurityHub_StandardsSubscription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
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

Paws::SecurityHub::GetEnabledStandardsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that is required for pagination.


=head2 StandardsSubscriptions => ArrayRef[SecurityHub_StandardsSubscription]

A list of C<StandardsSubscriptions> objects that include information
about the enabled standards.


=head2 _request_id => Str


=cut

