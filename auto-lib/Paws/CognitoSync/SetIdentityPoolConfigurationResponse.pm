
package Paws::CognitoSync::SetIdentityPoolConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoSync::Types qw/CognitoSync_PushSync CognitoSync_CognitoStreams/;
  has CognitoStreams => (is => 'ro', isa => CognitoSync_CognitoStreams);
  has IdentityPoolId => (is => 'ro', isa => Str);
  has PushSync => (is => 'ro', isa => CognitoSync_PushSync);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PushSync' => {
                               'class' => 'Paws::CognitoSync::PushSync',
                               'type' => 'CognitoSync_PushSync'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IdentityPoolId' => {
                                     'type' => 'Str'
                                   },
               'CognitoStreams' => {
                                     'class' => 'Paws::CognitoSync::CognitoStreams',
                                     'type' => 'CognitoSync_CognitoStreams'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::SetIdentityPoolConfigurationResponse

=head1 ATTRIBUTES


=head2 CognitoStreams => CognitoSync_CognitoStreams

Options to apply to this identity pool for Amazon Cognito streams.


=head2 IdentityPoolId => Str

A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito.


=head2 PushSync => CognitoSync_PushSync

Options to apply to this identity pool for push synchronization.


=head2 _request_id => Str


=cut

