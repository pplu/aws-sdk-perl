
package Paws::Route53::GetHostedZoneLimitResponse;
  use Moo;

  use Types::Standard qw/Str Int/;
  use Paws::Route53::Types qw/Route53_HostedZoneLimit/;
  has Count => (is => 'ro', isa => Int, required => 1);
  has Limit => (is => 'ro', isa => Route53_HostedZoneLimit, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Limit' => {
                            'class' => 'Paws::Route53::HostedZoneLimit',
                            'type' => 'Route53_HostedZoneLimit'
                          },
               'Count' => {
                            'type' => 'Int'
                          }
             },
  'IsRequired' => {
                    'Limit' => 1,
                    'Count' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetHostedZoneLimitResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Count => Int

The current number of entities that you have created of the specified
type. For example, if you specified C<MAX_RRSETS_BY_ZONE> for the value
of C<Type> in the request, the value of C<Count> is the current number
of records that you have created in the specified hosted zone.



=head2 B<REQUIRED> Limit => Route53_HostedZoneLimit

The current setting for the specified limit. For example, if you
specified C<MAX_RRSETS_BY_ZONE> for the value of C<Type> in the
request, the value of C<Limit> is the maximum number of records that
you can create in the specified hosted zone.




=cut

