# Generated from callresult_class.tt

package Paws::DocDB::EventCategoriesMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DocDB::Types qw/DocDB_EventCategoriesMap/;
  has EventCategoriesMapList => (is => 'ro', isa => ArrayRef[DocDB_EventCategoriesMap]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventCategoriesMapList' => {
                                             'class' => 'Paws::DocDB::EventCategoriesMap',
                                             'type' => 'ArrayRef[DocDB_EventCategoriesMap]'
                                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'EventCategoriesMapList' => 'EventCategoriesMap'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::EventCategoriesMessage

=head1 ATTRIBUTES


=head2 EventCategoriesMapList => ArrayRef[DocDB_EventCategoriesMap]

A list of event category maps.


=head2 _request_id => Str


=cut

