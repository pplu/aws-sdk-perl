# Generated from json/callresult_class.tt

package Paws::CodeStar::AssociateTeamMemberResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeStar::Types qw//;
  has ClientRequestToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'ClientRequestToken' => 'clientRequestToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::AssociateTeamMemberResult

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The user- or system-generated token from the initial request that can
be used to repeat the request.


=head2 _request_id => Str


=cut

1;