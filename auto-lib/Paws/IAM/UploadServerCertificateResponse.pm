# Generated from callresult_class.tt

package Paws::IAM::UploadServerCertificateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_ServerCertificateMetadata/;
  has ServerCertificateMetadata => (is => 'ro', isa => IAM_ServerCertificateMetadata);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ServerCertificateMetadata' => {
                                                'class' => 'Paws::IAM::ServerCertificateMetadata',
                                                'type' => 'IAM_ServerCertificateMetadata'
                                              }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UploadServerCertificateResponse

=head1 ATTRIBUTES


=head2 ServerCertificateMetadata => IAM_ServerCertificateMetadata

The meta information of the uploaded server certificate without its
certificate body, certificate chain, and private key.


=head2 _request_id => Str


=cut

