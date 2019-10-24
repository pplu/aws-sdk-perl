
package Paws::Route53::UpdateHostedZoneCommentResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_HostedZone/;
  has HostedZone => (is => 'ro', isa => Route53_HostedZone, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HostedZone' => {
                                 'class' => 'Paws::Route53::HostedZone',
                                 'type' => 'Route53_HostedZone'
                               },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::Route53::UpdateHostedZoneCommentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZone => Route53_HostedZone

A complex type that contains the response to the
C<UpdateHostedZoneComment> request.




=cut

