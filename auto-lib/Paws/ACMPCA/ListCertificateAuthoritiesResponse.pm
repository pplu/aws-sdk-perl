# Generated from json/callresult_class.tt

package Paws::ACMPCA::ListCertificateAuthoritiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ACMPCA::Types qw/ACMPCA_CertificateAuthority/;
  has CertificateAuthorities => (is => 'ro', isa => ArrayRef[ACMPCA_CertificateAuthority]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CertificateAuthorities' => {
                                             'class' => 'Paws::ACMPCA::CertificateAuthority',
                                             'type' => 'ArrayRef[ACMPCA_CertificateAuthority]'
                                           },
               'NextToken' => {
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


### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::ListCertificateAuthoritiesResponse

=head1 ATTRIBUTES


=head2 CertificateAuthorities => ArrayRef[ACMPCA_CertificateAuthority]

Summary information about each certificate authority you have created.


=head2 NextToken => Str

When the list is truncated, this value is present and should be used
for the C<NextToken> parameter in a subsequent pagination request.


=head2 _request_id => Str


=cut

1;