
package Aws::RedShift::DescribeHsmClientCertificatesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HsmClientCertificates => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::HsmClientCertificate]', traits => ['Unwrapped'], xmlname => 'HsmClientCertificate');
  has Marker => (is => 'ro', isa => 'Str');

}
1;