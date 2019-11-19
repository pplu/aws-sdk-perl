# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::TestEventPatternResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CloudWatchEvents::Types qw//;
  has Result => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Result' => {
                             'type' => 'Bool'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::TestEventPatternResponse

=head1 ATTRIBUTES


=head2 Result => Bool

Indicates whether the event matches the event pattern.


=head2 _request_id => Str


=cut

1;