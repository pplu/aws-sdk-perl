
package Paws::IAM::GetServerCertificateResponse;
  use Moo;
  use JSON::MaybeXS;
  use URL::Encode;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_ServerCertificate/;
  has ServerCertificate => (is => 'ro', isa => IAM_ServerCertificate, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ServerCertificate' => {
                                        'class' => 'Paws::IAM::ServerCertificate',
                                        'type' => 'IAM_ServerCertificate'
                                      }
             },
  'IsRequired' => {
                    'ServerCertificate' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetServerCertificateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerCertificate => IAM_ServerCertificate

A structure containing details about the server certificate.


=head2 _request_id => Str


=cut

