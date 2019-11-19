# Generated from json/callresult_class.tt

package Paws::CognitoIdp::ListResourceServersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_ResourceServerType/;
  has NextToken => (is => 'ro', isa => Str);
  has ResourceServers => (is => 'ro', isa => ArrayRef[CognitoIdp_ResourceServerType], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceServers' => 1
                  },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ResourceServers' => {
                                      'class' => 'Paws::CognitoIdp::ResourceServerType',
                                      'type' => 'ArrayRef[CognitoIdp_ResourceServerType]'
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

Paws::CognitoIdp::ListResourceServersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token.


=head2 B<REQUIRED> ResourceServers => ArrayRef[CognitoIdp_ResourceServerType]

The resource servers.


=head2 _request_id => Str


=cut

1;