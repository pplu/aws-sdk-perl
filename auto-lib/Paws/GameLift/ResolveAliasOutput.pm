# Generated from json/callresult_class.tt

package Paws::GameLift::ResolveAliasOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw//;
  has FleetId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FleetId' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ResolveAliasOutput

=head1 ATTRIBUTES


=head2 FleetId => Str

Fleet identifier that is associated with the requested alias.


=head2 _request_id => Str


=cut

1;