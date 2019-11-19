# Generated from json/callresult_class.tt

package Paws::ECR::GetAuthorizationTokenResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECR::Types qw/ECR_AuthorizationData/;
  has AuthorizationData => (is => 'ro', isa => ArrayRef[ECR_AuthorizationData]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'AuthorizationData' => 'authorizationData'
                     },
  'types' => {
               'AuthorizationData' => {
                                        'class' => 'Paws::ECR::AuthorizationData',
                                        'type' => 'ArrayRef[ECR_AuthorizationData]'
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

Paws::ECR::GetAuthorizationTokenResponse

=head1 ATTRIBUTES


=head2 AuthorizationData => ArrayRef[ECR_AuthorizationData]

A list of authorization token data objects that correspond to the
C<registryIds> values in the request.


=head2 _request_id => Str


=cut

1;