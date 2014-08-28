
package Aws::RedShift::DescribeHsmClientCertificates {
  use Moose;
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHsmClientCertificates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::DescribeHsmClientCertificatesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeHsmClientCertificatesResult');
}
1;
