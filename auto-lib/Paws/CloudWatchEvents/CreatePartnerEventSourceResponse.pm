# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::CreatePartnerEventSourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchEvents::Types qw//;
  has EventSourceArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventSourceArn' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::CreatePartnerEventSourceResponse

=head1 ATTRIBUTES


=head2 EventSourceArn => Str

The ARN of the partner event source.


=head2 _request_id => Str


=cut

1;