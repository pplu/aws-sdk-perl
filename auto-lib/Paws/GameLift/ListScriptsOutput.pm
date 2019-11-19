# Generated from json/callresult_class.tt

package Paws::GameLift::ListScriptsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_Script/;
  has NextToken => (is => 'ro', isa => Str);
  has Scripts => (is => 'ro', isa => ArrayRef[GameLift_Script]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Scripts' => {
                              'class' => 'Paws::GameLift::Script',
                              'type' => 'ArrayRef[GameLift_Script]'
                            },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListScriptsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 Scripts => ArrayRef[GameLift_Script]

Set of properties describing the requested script.


=head2 _request_id => Str


=cut

1;