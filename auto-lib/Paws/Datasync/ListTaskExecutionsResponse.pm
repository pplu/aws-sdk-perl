# Generated from json/callresult_class.tt

package Paws::Datasync::ListTaskExecutionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Datasync::Types qw/Datasync_TaskExecutionListEntry/;
  has NextToken => (is => 'ro', isa => Str);
  has TaskExecutions => (is => 'ro', isa => ArrayRef[Datasync_TaskExecutionListEntry]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'TaskExecutions' => {
                                     'class' => 'Paws::Datasync::TaskExecutionListEntry',
                                     'type' => 'ArrayRef[Datasync_TaskExecutionListEntry]'
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

Paws::Datasync::ListTaskExecutionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An opaque string that indicates the position at which to begin
returning the next list of executed tasks.


=head2 TaskExecutions => ArrayRef[Datasync_TaskExecutionListEntry]

A list of executed tasks.


=head2 _request_id => Str


=cut

1;