# Generated from callresult_class.tt

package Paws::IAM::CreateOpenIDConnectProviderResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw//;
  has OpenIDConnectProviderArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OpenIDConnectProviderArn' => {
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
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateOpenIDConnectProviderResponse

=head1 ATTRIBUTES


=head2 OpenIDConnectProviderArn => Str

The Amazon Resource Name (ARN) of the new IAM OpenID Connect provider
that is created. For more information, see
OpenIDConnectProviderListEntry.


=head2 _request_id => Str


=cut

