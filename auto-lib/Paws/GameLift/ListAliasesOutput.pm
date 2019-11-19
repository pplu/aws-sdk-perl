# Generated from json/callresult_class.tt

package Paws::GameLift::ListAliasesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_Alias/;
  has Aliases => (is => 'ro', isa => ArrayRef[GameLift_Alias]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Aliases' => {
                              'type' => 'ArrayRef[GameLift_Alias]',
                              'class' => 'Paws::GameLift::Alias'
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

Paws::GameLift::ListAliasesOutput

=head1 ATTRIBUTES


=head2 Aliases => ArrayRef[GameLift_Alias]

Collection of alias records that match the list request.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;