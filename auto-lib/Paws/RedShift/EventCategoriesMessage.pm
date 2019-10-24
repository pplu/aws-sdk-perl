# Generated from callresult_class.tt

package Paws::RedShift::EventCategoriesMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_EventCategoriesMap/;
  has EventCategoriesMapList => (is => 'ro', isa => ArrayRef[RedShift_EventCategoriesMap]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventCategoriesMapList' => {
                                             'class' => 'Paws::RedShift::EventCategoriesMap',
                                             'type' => 'ArrayRef[RedShift_EventCategoriesMap]'
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

Paws::RedShift::EventCategoriesMessage

=head1 ATTRIBUTES


=head2 EventCategoriesMapList => ArrayRef[RedShift_EventCategoriesMap]

A list of event categories descriptions.


=head2 _request_id => Str


=cut

