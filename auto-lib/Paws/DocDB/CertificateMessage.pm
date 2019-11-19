# Generated from callresult_class.tt

package Paws::DocDB::CertificateMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DocDB::Types qw/DocDB_Certificate/;
  has Certificates => (is => 'ro', isa => ArrayRef[DocDB_Certificate]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               'Certificates' => {
                                   'class' => 'Paws::DocDB::Certificate',
                                   'type' => 'ArrayRef[DocDB_Certificate]'
                                 },
               '_request_id' => {
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

Paws::DocDB::CertificateMessage

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[DocDB_Certificate]

A list of certificates for this AWS account.


=head2 Marker => Str

An optional pagination token provided if the number of records
retrieved is greater than C<MaxRecords>. If this parameter is
specified, the marker specifies the next record in the list. Including
the value of C<Marker> in the next call to C<DescribeCertificates>
results in the next page of certificates.


=head2 _request_id => Str


=cut

