
package Paws::Greengrass::CreateGroupCertificateAuthorityResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw//;
  has GroupCertificateAuthorityArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GroupCertificateAuthorityArn' => {
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

Paws::Greengrass::CreateGroupCertificateAuthorityResponse

=head1 ATTRIBUTES


=head2 GroupCertificateAuthorityArn => Str

The ARN of the group certificate authority.


=head2 _request_id => Str


=cut

