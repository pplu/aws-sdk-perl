# Generated from callresult_class.tt

package Paws::RDS::CertificateMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_Certificate/;
  has Certificates => (is => 'ro', isa => ArrayRef[RDS_Certificate]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Certificates' => {
                                   'class' => 'Paws::RDS::Certificate',
                                   'type' => 'ArrayRef[RDS_Certificate]'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Certificates' => 'Certificate'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CertificateMessage

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[RDS_Certificate]

The list of C<Certificate> objects for the AWS account.


=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeCertificates> request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords> .


=head2 _request_id => Str


=cut

