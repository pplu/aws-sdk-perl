
package Paws::Route53::GetAccountLimitResponse;
  use Moo;

  use Types::Standard qw/Str Int/;
  use Paws::Route53::Types qw/Route53_AccountLimit/;
  has Count => (is => 'ro', isa => Int, required => 1);
  has Limit => (is => 'ro', isa => Route53_AccountLimit, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Count' => 1,
                    'Limit' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Limit' => {
                            'class' => 'Paws::Route53::AccountLimit',
                            'type' => 'Route53_AccountLimit'
                          },
               'Count' => {
                            'type' => 'Int'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetAccountLimitResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Count => Int

The current number of entities that you have created of the specified
type. For example, if you specified C<MAX_HEALTH_CHECKS_BY_OWNER> for
the value of C<Type> in the request, the value of C<Count> is the
current number of health checks that you have created using the current
account.



=head2 B<REQUIRED> Limit => Route53_AccountLimit

The current setting for the specified limit. For example, if you
specified C<MAX_HEALTH_CHECKS_BY_OWNER> for the value of C<Type> in the
request, the value of C<Limit> is the maximum number of health checks
that you can create using the current account.




=cut

