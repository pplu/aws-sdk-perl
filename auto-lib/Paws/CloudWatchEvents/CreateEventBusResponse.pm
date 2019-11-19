# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::CreateEventBusResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchEvents::Types qw//;
  has EventBusArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EventBusArn' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::CreateEventBusResponse

=head1 ATTRIBUTES


=head2 EventBusArn => Str

The ARN of the new event bus.


=head2 _request_id => Str


=cut

1;