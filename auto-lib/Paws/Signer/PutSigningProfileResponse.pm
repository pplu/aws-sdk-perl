
package Paws::Signer::PutSigningProfileResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Signer::Types qw//;
  has Arn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Arn' => {
                          'type' => 'Str'
                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Arn' => 'arn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::PutSigningProfileResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the signing profile created.


=head2 _request_id => Str


=cut

