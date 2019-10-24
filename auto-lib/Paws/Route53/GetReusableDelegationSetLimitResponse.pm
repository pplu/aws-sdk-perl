
package Paws::Route53::GetReusableDelegationSetLimitResponse;
  use Moo;

  use Types::Standard qw/Str Int/;
  use Paws::Route53::Types qw/Route53_ReusableDelegationSetLimit/;
  has Count => (is => 'ro', isa => Int, required => 1);
  has Limit => (is => 'ro', isa => Route53_ReusableDelegationSetLimit, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Limit' => {
                            'class' => 'Paws::Route53::ReusableDelegationSetLimit',
                            'type' => 'Route53_ReusableDelegationSetLimit'
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

Paws::Route53::GetReusableDelegationSetLimitResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Count => Int

The current number of hosted zones that you can associate with the
specified reusable delegation set.



=head2 B<REQUIRED> Limit => Route53_ReusableDelegationSetLimit

The current setting for the limit on hosted zones that you can
associate with the specified reusable delegation set.




=cut

