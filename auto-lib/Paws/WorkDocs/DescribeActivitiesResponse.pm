
package Paws::WorkDocs::DescribeActivitiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkDocs::Types qw/WorkDocs_Activity/;
  has Marker => (is => 'ro', isa => Str);
  has UserActivities => (is => 'ro', isa => ArrayRef[WorkDocs_Activity]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserActivities' => {
                                     'class' => 'Paws::WorkDocs::Activity',
                                     'type' => 'ArrayRef[WorkDocs_Activity]'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
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

Paws::WorkDocs::DescribeActivitiesResponse

=head1 ATTRIBUTES


=head2 Marker => Str

The marker for the next set of results.


=head2 UserActivities => ArrayRef[WorkDocs_Activity]

The list of activities for the specified user and time period.


=head2 _request_id => Str


=cut

