# Generated from callresult_class.tt

package Paws::SES::GetIdentityVerificationAttributesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SES::Types qw/SES_VerificationAttributes/;
  has VerificationAttributes => (is => 'ro', isa => SES_VerificationAttributes, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'VerificationAttributes' => 1
                  },
  'types' => {
               'VerificationAttributes' => {
                                             'type' => 'SES_VerificationAttributes',
                                             'class' => 'Paws::SES::VerificationAttributes'
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

Paws::SES::GetIdentityVerificationAttributesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> VerificationAttributes => SES_VerificationAttributes

A map of Identities to IdentityVerificationAttributes objects.


=head2 _request_id => Str


=cut

