# Generated from callresult_class.tt

package Paws::Neptune::EventCategoriesMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Neptune::Types qw/Neptune_EventCategoriesMap/;
  has EventCategoriesMapList => (is => 'ro', isa => ArrayRef[Neptune_EventCategoriesMap]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EventCategoriesMapList' => {
                                             'type' => 'ArrayRef[Neptune_EventCategoriesMap]',
                                             'class' => 'Paws::Neptune::EventCategoriesMap'
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

Paws::Neptune::EventCategoriesMessage

=head1 ATTRIBUTES


=head2 EventCategoriesMapList => ArrayRef[Neptune_EventCategoriesMap]

A list of EventCategoriesMap data types.


=head2 _request_id => Str


=cut

