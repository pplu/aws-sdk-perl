
package Paws::Lightsail::IsVpcPeeredResult;
  use Moose;
  has IsPeered => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isPeered' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::IsVpcPeeredResult

=head1 ATTRIBUTES


=head2 IsPeered => Bool

Returns C<true> if the Lightsail VPC is peered; otherwise, C<false>.


=head2 _request_id => Str


=cut

1;