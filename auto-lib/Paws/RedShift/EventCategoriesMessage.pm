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
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EventCategoriesMapList' => {
                                             'type' => 'ArrayRef[RedShift_EventCategoriesMap]',
                                             'class' => 'Paws::RedShift::EventCategoriesMap'
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

