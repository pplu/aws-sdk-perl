# Generated from json/callresult_class.tt

package Paws::Athena::ListWorkGroupsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Athena::Types qw/Athena_WorkGroupSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has WorkGroups => (is => 'ro', isa => ArrayRef[Athena_WorkGroupSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'WorkGroups' => {
                                 'class' => 'Paws::Athena::WorkGroupSummary',
                                 'type' => 'ArrayRef[Athena_WorkGroupSummary]'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Athena::ListWorkGroupsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to be used by the next request if this request is truncated.


=head2 WorkGroups => ArrayRef[Athena_WorkGroupSummary]

The list of workgroups, including their names, descriptions, creation
times, and states.


=head2 _request_id => Str


=cut

1;