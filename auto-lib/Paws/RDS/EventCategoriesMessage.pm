# Generated from callresult_class.tt

package Paws::RDS::EventCategoriesMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_EventCategoriesMap/;
  has EventCategoriesMapList => (is => 'ro', isa => ArrayRef[RDS_EventCategoriesMap]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'EventCategoriesMapList' => 'EventCategoriesMap'
                     },
  'types' => {
               'EventCategoriesMapList' => {
                                             'class' => 'Paws::RDS::EventCategoriesMap',
                                             'type' => 'ArrayRef[RDS_EventCategoriesMap]'
                                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::EventCategoriesMessage

=head1 ATTRIBUTES


=head2 EventCategoriesMapList => ArrayRef[RDS_EventCategoriesMap]

A list of EventCategoriesMap data types.


=head2 _request_id => Str


=cut

