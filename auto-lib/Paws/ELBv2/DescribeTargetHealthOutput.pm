
package Paws::ELBv2::DescribeTargetHealthOutput;
  use Moose;
  has TargetHealthDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::TargetHealthDescription]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeTargetHealthOutput

=head1 ATTRIBUTES


=head2 TargetHealthDescriptions => ArrayRef[L<Paws::ELBv2::TargetHealthDescription>]

Information about the health of the targets.


=head2 _request_id => Str


=cut

