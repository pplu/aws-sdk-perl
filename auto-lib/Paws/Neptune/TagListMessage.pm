# Generated from callresult_class.tt

package Paws::Neptune::TagListMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Neptune::Types qw/Neptune_Tag/;
  has TagList => (is => 'ro', isa => ArrayRef[Neptune_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagList' => {
                              'class' => 'Paws::Neptune::Tag',
                              'type' => 'ArrayRef[Neptune_Tag]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TagList' => 'Tag'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::TagListMessage

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[Neptune_Tag]

List of tags returned by the ListTagsForResource operation.


=head2 _request_id => Str


=cut

