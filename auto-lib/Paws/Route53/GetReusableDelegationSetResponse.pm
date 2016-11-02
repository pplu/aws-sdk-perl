
package Paws::Route53::GetReusableDelegationSetResponse;
  use Moose;
  has DelegationSet => (is => 'ro', isa => 'Paws::Route53::DelegationSet', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetReusableDelegationSetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DelegationSet => L<Paws::Route53::DelegationSet>

A complex type that contains information about the reusable delegation
set.




=cut

