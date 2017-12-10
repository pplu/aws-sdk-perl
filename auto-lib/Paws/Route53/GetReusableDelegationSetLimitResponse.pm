
package Paws::Route53::GetReusableDelegationSetLimitResponse;
  use Moose;
  has Count => (is => 'ro', isa => 'Int', required => 1);
  has Limit => (is => 'ro', isa => 'Paws::Route53::ReusableDelegationSetLimit', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetReusableDelegationSetLimitResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Count => Int

The current number of hosted zones that you can associate with the
specified reusable delegation set.



=head2 B<REQUIRED> Limit => L<Paws::Route53::ReusableDelegationSetLimit>

The current setting for the limit on hosted zones that you can
associate with the specified reusable delegation set.




=cut

