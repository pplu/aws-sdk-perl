
package Paws::Route53::GetHostedZoneCountResponse;
  use Moo;

  use Types::Standard qw/Str Int/;
  use Paws::Route53::Types qw//;
  has HostedZoneCount => (is => 'ro', isa => Int, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'HostedZoneCount' => 1
                  },
  'types' => {
               'HostedZoneCount' => {
                                      'type' => 'Int'
                                    },
               '_request_id' => {
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

Paws::Route53::GetHostedZoneCountResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneCount => Int

The total number of public and private hosted zones that are associated
with the current AWS account.




=cut

