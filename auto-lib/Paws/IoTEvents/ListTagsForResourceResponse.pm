
package Paws::IoTEvents::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTEvents::Types qw/IoTEvents_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[IoTEvents_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::IoTEvents::Tag',
                           'type' => 'ArrayRef[IoTEvents_Tag]'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[IoTEvents_Tag]

The list of tags assigned to the resource.


=head2 _request_id => Str


=cut

