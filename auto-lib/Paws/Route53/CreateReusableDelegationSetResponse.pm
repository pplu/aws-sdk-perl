
package Paws::Route53::CreateReusableDelegationSetResponse;
  use Moose;
  has DelegationSet => (is => 'ro', isa => 'Paws::Route53::DelegationSet', required => 1);
  has Location => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Location', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateReusableDelegationSetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DelegationSet => L<Paws::Route53::DelegationSet>

A complex type that contains name server information.



=head2 B<REQUIRED> Location => Str

The unique URL representing the new reusable delegation set.




=cut

