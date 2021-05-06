
package Paws::OpsWorksCM::DescribeAccountAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorksCM::AccountAttribute]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::DescribeAccountAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::OpsWorksCM::AccountAttribute>]

The attributes that are currently set for the account.


=head2 _request_id => Str


=cut

1;