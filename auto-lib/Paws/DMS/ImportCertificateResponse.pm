# Generated from json/callresult_class.tt

package Paws::DMS::ImportCertificateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DMS::Types qw/DMS_Certificate/;
  has Certificate => (is => 'ro', isa => DMS_Certificate);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Certificate' => {
                                  'type' => 'DMS_Certificate',
                                  'class' => 'Paws::DMS::Certificate'
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

Paws::DMS::ImportCertificateResponse

=head1 ATTRIBUTES


=head2 Certificate => DMS_Certificate

The certificate to be uploaded.


=head2 _request_id => Str


=cut

1;