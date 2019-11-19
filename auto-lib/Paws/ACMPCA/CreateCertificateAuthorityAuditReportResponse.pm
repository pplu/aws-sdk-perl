# Generated from json/callresult_class.tt

package Paws::ACMPCA::CreateCertificateAuthorityAuditReportResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ACMPCA::Types qw//;
  has AuditReportId => (is => 'ro', isa => Str);
  has S3Key => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'S3Key' => {
                            'type' => 'Str'
                          },
               'AuditReportId' => {
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

Paws::ACMPCA::CreateCertificateAuthorityAuditReportResponse

=head1 ATTRIBUTES


=head2 AuditReportId => Str

An alphanumeric string that contains a report identifier.


=head2 S3Key => Str

The B<key> that uniquely identifies the report file in your S3 bucket.


=head2 _request_id => Str


=cut

1;