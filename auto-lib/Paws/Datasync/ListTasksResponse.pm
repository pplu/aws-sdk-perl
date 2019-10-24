# Generated from json/callresult_class.tt

package Paws::Datasync::ListTasksResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Datasync::Types qw/Datasync_TaskListEntry/;
  has NextToken => (is => 'ro', isa => Str);
  has Tasks => (is => 'ro', isa => ArrayRef[Datasync_TaskListEntry]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tasks' => {
                            'class' => 'Paws::Datasync::TaskListEntry',
                            'type' => 'ArrayRef[Datasync_TaskListEntry]'
                          },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::Datasync::ListTasksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An opaque string that indicates the position at which to begin
returning the next list of tasks.


=head2 Tasks => ArrayRef[Datasync_TaskListEntry]

A list of all the tasks that are returned.


=head2 _request_id => Str


=cut

1;