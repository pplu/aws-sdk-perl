
package Paws::IoT::UpdateBillingGroupResponse;
  use Moose;
  has Version => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'version');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateBillingGroupResponse

=head1 ATTRIBUTES


=head2 Version => Int

The latest version of the billing group.


=head2 _request_id => Str


=cut

