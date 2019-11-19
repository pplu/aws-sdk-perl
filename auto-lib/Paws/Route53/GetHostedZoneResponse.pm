
package Paws::Route53::GetHostedZoneResponse;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::Route53::Types qw/Route53_DelegationSet Route53_HostedZone Route53_VPC/;
  has DelegationSet => (is => 'ro', isa => Route53_DelegationSet);
  has HostedZone => (is => 'ro', isa => Route53_HostedZone, required => 1);
  has VPCs => (is => 'ro', isa => ArrayRef[Route53_VPC]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HostedZone' => {
                                 'class' => 'Paws::Route53::HostedZone',
                                 'type' => 'Route53_HostedZone'
                               },
               'DelegationSet' => {
                                    'type' => 'Route53_DelegationSet',
                                    'class' => 'Paws::Route53::DelegationSet'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VPCs' => {
                           'type' => 'ArrayRef[Route53_VPC]',
                           'class' => 'Paws::Route53::VPC'
                         }
             },
  'IsRequired' => {
                    'HostedZone' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetHostedZoneResponse

=head1 ATTRIBUTES


=head2 DelegationSet => Route53_DelegationSet

A complex type that lists the Amazon Route 53 name servers for the
specified hosted zone.



=head2 B<REQUIRED> HostedZone => Route53_HostedZone

A complex type that contains general information about the specified
hosted zone.



=head2 VPCs => ArrayRef[Route53_VPC]

A complex type that contains information about the VPCs that are
associated with the specified hosted zone.




=cut

