
package Aws::RedShift::HsmClientCertificateMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has HsmClientCertificates => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::HsmClientCertificate]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;