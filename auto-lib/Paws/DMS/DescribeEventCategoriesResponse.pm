# Generated from json/callresult_class.tt

package Paws::DMS::DescribeEventCategoriesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DMS::Types qw/DMS_EventCategoryGroup/;
  has EventCategoryGroupList => (is => 'ro', isa => ArrayRef[DMS_EventCategoryGroup]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventCategoryGroupList' => {
                                             'class' => 'Paws::DMS::EventCategoryGroup',
                                             'type' => 'ArrayRef[DMS_EventCategoryGroup]'
                                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeEventCategoriesResponse

=head1 ATTRIBUTES


=head2 EventCategoryGroupList => ArrayRef[DMS_EventCategoryGroup]

A list of event categories.


=head2 _request_id => Str


=cut

1;