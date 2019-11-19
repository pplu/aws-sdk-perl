# Generated from json/callresult_class.tt

package Paws::DMS::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DMS::Types qw/DMS_Tag/;
  has TagList => (is => 'ro', isa => ArrayRef[DMS_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TagList' => {
                              'type' => 'ArrayRef[DMS_Tag]',
                              'class' => 'Paws::DMS::Tag'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[DMS_Tag]

A list of tags for the resource.


=head2 _request_id => Str


=cut

1;