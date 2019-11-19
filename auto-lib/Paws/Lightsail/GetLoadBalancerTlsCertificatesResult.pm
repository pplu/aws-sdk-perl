# Generated from json/callresult_class.tt

package Paws::Lightsail::GetLoadBalancerTlsCertificatesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_LoadBalancerTlsCertificate/;
  has TlsCertificates => (is => 'ro', isa => ArrayRef[Lightsail_LoadBalancerTlsCertificate]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TlsCertificates' => {
                                      'type' => 'ArrayRef[Lightsail_LoadBalancerTlsCertificate]',
                                      'class' => 'Paws::Lightsail::LoadBalancerTlsCertificate'
                                    }
             },
  'NameInRequest' => {
                       'TlsCertificates' => 'tlsCertificates'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetLoadBalancerTlsCertificatesResult

=head1 ATTRIBUTES


=head2 TlsCertificates => ArrayRef[Lightsail_LoadBalancerTlsCertificate]

An array of LoadBalancerTlsCertificate objects describing your SSL/TLS
certificates.


=head2 _request_id => Str


=cut

1;