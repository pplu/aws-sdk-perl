
package Paws::Route53::CreateHostedZoneResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_DelegationSet Route53_ChangeInfo Route53_VPC Route53_HostedZone/;
  has ChangeInfo => (is => 'ro', isa => Route53_ChangeInfo, required => 1);
  has DelegationSet => (is => 'ro', isa => Route53_DelegationSet, required => 1);
  has HostedZone => (is => 'ro', isa => Route53_HostedZone, required => 1);
  has Location => (is => 'ro', isa => Str, required => 1);
  has VPC => (is => 'ro', isa => Route53_VPC);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'Location' => 'Location'
                     },
  'IsRequired' => {
                    'ChangeInfo' => 1,
                    'Location' => 1,
                    'HostedZone' => 1,
                    'DelegationSet' => 1
                  },
  'types' => {
               'DelegationSet' => {
                                    'type' => 'Route53_DelegationSet',
                                    'class' => 'Paws::Route53::DelegationSet'
                                  },
               'HostedZone' => {
                                 'class' => 'Paws::Route53::HostedZone',
                                 'type' => 'Route53_HostedZone'
                               },
               'VPC' => {
                          'class' => 'Paws::Route53::VPC',
                          'type' => 'Route53_VPC'
                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ChangeInfo' => {
                                 'type' => 'Route53_ChangeInfo',
                                 'class' => 'Paws::Route53::ChangeInfo'
                               },
               'Location' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateHostedZoneResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeInfo => Route53_ChangeInfo

A complex type that contains information about the C<CreateHostedZone>
request.



=head2 B<REQUIRED> DelegationSet => Route53_DelegationSet

A complex type that describes the name servers for this hosted zone.



=head2 B<REQUIRED> HostedZone => Route53_HostedZone

A complex type that contains general information about the hosted zone.



=head2 B<REQUIRED> Location => Str

The unique URL representing the new hosted zone.



=head2 VPC => Route53_VPC

A complex type that contains information about an Amazon VPC that you
associated with this hosted zone.




=cut

