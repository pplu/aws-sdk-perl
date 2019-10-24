
package Paws::IoTAnalytics::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[IoTAnalytics_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::IoTAnalytics::Tag',
                           'type' => 'ArrayRef[IoTAnalytics_Tag]'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[IoTAnalytics_Tag]

The tags (metadata) which you have assigned to the resource.


=head2 _request_id => Str


=cut

