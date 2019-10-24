
package Paws::Pinpoint::ListTagsForResourceResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'TagsModel');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_TagsModel/;
  has TagsModel => (is => 'ro', isa => Pinpoint_TagsModel, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagsModel' => {
                                'class' => 'Paws::Pinpoint::TagsModel',
                                'type' => 'Pinpoint_TagsModel'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'TagsModel' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TagsModel => Pinpoint_TagsModel




=head2 _request_id => Str


=cut

