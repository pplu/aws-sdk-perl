
package Paws::Signer::ListSigningPlatformsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Signer::Types qw/Signer_SigningPlatform/;
  has NextToken => (is => 'ro', isa => Str);
  has Platforms => (is => 'ro', isa => ArrayRef[Signer_SigningPlatform]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Platforms' => {
                                'class' => 'Paws::Signer::SigningPlatform',
                                'type' => 'ArrayRef[Signer_SigningPlatform]'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Platforms' => 'platforms'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::ListSigningPlatformsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Value for specifying the next set of paginated results to return.


=head2 Platforms => ArrayRef[Signer_SigningPlatform]

A list of all platforms that match the request parameters.


=head2 _request_id => Str


=cut

