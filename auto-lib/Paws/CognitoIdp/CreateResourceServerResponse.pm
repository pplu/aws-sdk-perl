# Generated from json/callresult_class.tt

package Paws::CognitoIdp::CreateResourceServerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_ResourceServerType/;
  has ResourceServer => (is => 'ro', isa => CognitoIdp_ResourceServerType, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceServer' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourceServer' => {
                                     'type' => 'CognitoIdp_ResourceServerType',
                                     'class' => 'Paws::CognitoIdp::ResourceServerType'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateResourceServerResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceServer => CognitoIdp_ResourceServerType

The newly created resource server.


=head2 _request_id => Str


=cut

1;