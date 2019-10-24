
package Paws::Greengrass::ListGroupCertificateAuthoritiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_GroupCertificateAuthorityProperties/;
  has GroupCertificateAuthorities => (is => 'ro', isa => ArrayRef[Greengrass_GroupCertificateAuthorityProperties]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GroupCertificateAuthorities' => {
                                                  'class' => 'Paws::Greengrass::GroupCertificateAuthorityProperties',
                                                  'type' => 'ArrayRef[Greengrass_GroupCertificateAuthorityProperties]'
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

Paws::Greengrass::ListGroupCertificateAuthoritiesResponse

=head1 ATTRIBUTES


=head2 GroupCertificateAuthorities => ArrayRef[Greengrass_GroupCertificateAuthorityProperties]

A list of certificate authorities associated with the group.


=head2 _request_id => Str


=cut

