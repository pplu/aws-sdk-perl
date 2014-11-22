
package Paws::RedShift::HsmClientCertificateMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has HsmClientCertificates => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::HsmClientCertificate]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;