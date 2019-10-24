# Generated from json/callresult_class.tt

package Paws::GameLift::ListBuildsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_Build/;
  has Builds => (is => 'ro', isa => ArrayRef[GameLift_Build]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Builds' => {
                             'class' => 'Paws::GameLift::Build',
                             'type' => 'ArrayRef[GameLift_Build]'
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

Paws::GameLift::ListBuildsOutput

=head1 ATTRIBUTES


=head2 Builds => ArrayRef[GameLift_Build]

Collection of build records that match the request.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;