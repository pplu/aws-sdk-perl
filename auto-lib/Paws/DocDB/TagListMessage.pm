# Generated from callresult_class.tt

package Paws::DocDB::TagListMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DocDB::Types qw/DocDB_Tag/;
  has TagList => (is => 'ro', isa => ArrayRef[DocDB_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'TagList' => 'Tag'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TagList' => {
                              'type' => 'ArrayRef[DocDB_Tag]',
                              'class' => 'Paws::DocDB::Tag'
                            }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::TagListMessage

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[DocDB_Tag]

A list of one or more tags.


=head2 _request_id => Str


=cut

