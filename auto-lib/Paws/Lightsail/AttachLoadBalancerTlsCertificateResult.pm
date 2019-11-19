# Generated from json/callresult_class.tt

package Paws::Lightsail::AttachLoadBalancerTlsCertificateResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_Operation/;
  has Operations => (is => 'ro', isa => ArrayRef[Lightsail_Operation]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Operations' => 'operations'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Operations' => {
                                 'type' => 'ArrayRef[Lightsail_Operation]',
                                 'class' => 'Paws::Lightsail::Operation'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::AttachLoadBalancerTlsCertificateResult

=head1 ATTRIBUTES


=head2 Operations => ArrayRef[Lightsail_Operation]

An object representing the API operations.

These SSL/TLS certificates are only usable by Lightsail load balancers.
You can't get the certificate and use it for another purpose.


=head2 _request_id => Str


=cut

1;