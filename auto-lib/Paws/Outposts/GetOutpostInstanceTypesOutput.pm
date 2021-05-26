
package Paws::Outposts::GetOutpostInstanceTypesOutput;
  use Moose;
  has InstanceTypes => (is => 'ro', isa => 'ArrayRef[Paws::Outposts::InstanceTypeItem]');
  has NextToken => (is => 'ro', isa => 'Str');
  has OutpostArn => (is => 'ro', isa => 'Str');
  has OutpostId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::GetOutpostInstanceTypesOutput

=head1 ATTRIBUTES


=head2 InstanceTypes => ArrayRef[L<Paws::Outposts::InstanceTypeItem>]




=head2 NextToken => Str




=head2 OutpostArn => Str




=head2 OutpostId => Str




=head2 _request_id => Str


=cut

