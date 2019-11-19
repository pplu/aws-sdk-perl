# Generated from json/callresult_class.tt

package Paws::CodeDeploy::DeleteGitHubAccountTokenOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw//;
  has TokenName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TokenName' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TokenName' => 'tokenName'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::DeleteGitHubAccountTokenOutput

=head1 ATTRIBUTES


=head2 TokenName => Str

The name of the GitHub account connection that was deleted.


=head2 _request_id => Str


=cut

1;