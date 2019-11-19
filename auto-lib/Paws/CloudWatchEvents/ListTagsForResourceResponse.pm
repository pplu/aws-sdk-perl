# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchEvents::Types qw/CloudWatchEvents_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[CloudWatchEvents_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'ArrayRef[CloudWatchEvents_Tag]',
                           'class' => 'Paws::CloudWatchEvents::Tag'
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

Paws::CloudWatchEvents::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[CloudWatchEvents_Tag]

The list of tag keys and values associated with the rule that you
specified.


=head2 _request_id => Str


=cut

1;