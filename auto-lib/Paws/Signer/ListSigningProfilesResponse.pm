
package Paws::Signer::ListSigningProfilesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Signer::Types qw/Signer_SigningProfile/;
  has NextToken => (is => 'ro', isa => Str);
  has Profiles => (is => 'ro', isa => ArrayRef[Signer_SigningProfile]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Profiles' => {
                               'type' => 'ArrayRef[Signer_SigningProfile]',
                               'class' => 'Paws::Signer::SigningProfile'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Profiles' => 'profiles'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::ListSigningProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Value for specifying the next set of paginated results to return.


=head2 Profiles => ArrayRef[Signer_SigningProfile]

A list of profiles that are available in the AWS account. This includes
profiles with the status of C<CANCELED> if the C<includeCanceled>
parameter is set to C<true>.


=head2 _request_id => Str


=cut

