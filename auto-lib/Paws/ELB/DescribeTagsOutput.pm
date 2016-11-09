
package Paws::ELB::DescribeTagsOutput;
  use Moose;
  has TagDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::ELB::TagDescription]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeTagsOutput

=head1 ATTRIBUTES


=head2 TagDescriptions => ArrayRef[L<Paws::ELB::TagDescription>]

Information about the tags.


=head2 _request_id => Str


=cut

