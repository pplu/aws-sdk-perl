
package Paws::DocDB::CertificateMessage;
  use Moose;
  has Certificates => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Certificate]', request_name => 'Certificate', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::CertificateMessage

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[L<Paws::DocDB::Certificate>]

A list of certificates for this AWS account.


=head2 Marker => Str

An optional pagination token provided if the number of records
retrieved is greater than C<MaxRecords>. If this parameter is
specified, the marker specifies the next record in the list. Including
the value of C<Marker> in the next call to C<DescribeCertificates>
results in the next page of certificates.


=head2 _request_id => Str


=cut

