# Generated from json/callresult_class.tt

package Paws::Athena::GetWorkGroupOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Athena::Types qw/Athena_WorkGroup/;
  has WorkGroup => (is => 'ro', isa => Athena_WorkGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WorkGroup' => {
                                'class' => 'Paws::Athena::WorkGroup',
                                'type' => 'Athena_WorkGroup'
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

Paws::Athena::GetWorkGroupOutput

=head1 ATTRIBUTES


=head2 WorkGroup => Athena_WorkGroup

Information about the workgroup.


=head2 _request_id => Str


=cut

1;