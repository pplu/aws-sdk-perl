
package Aws::ELB::SetLoadBalancerListenerSSLCertificate {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerPort => (is => 'ro', isa => 'Int', required => 1);
  has SSLCertificateId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerListenerSSLCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::SetLoadBalancerListenerSSLCertificateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerListenerSSLCertificateResult');
}
1;