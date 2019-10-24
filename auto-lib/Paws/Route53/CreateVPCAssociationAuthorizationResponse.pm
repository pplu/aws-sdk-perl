
package Paws::Route53::CreateVPCAssociationAuthorizationResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_VPC/;
  has HostedZoneId => (is => 'ro', isa => Str, required => 1);
  has VPC => (is => 'ro', isa => Route53_VPC, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VPC' => {
                          'class' => 'Paws::Route53::VPC',
                          'type' => 'Route53_VPC'
                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'HostedZoneId' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'VPC' => 1,
                    'HostedZoneId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateVPCAssociationAuthorizationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneId => Str

The ID of the hosted zone that you authorized associating a VPC with.



=head2 B<REQUIRED> VPC => Route53_VPC

The VPC that you authorized associating with a hosted zone.




=cut

