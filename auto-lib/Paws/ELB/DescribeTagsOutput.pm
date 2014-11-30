
package Paws::ELB::DescribeTagsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has TagDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::ELB::TagDescription]');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeTagsOutput

=head1 ATTRIBUTES

=head2 TagDescriptions => ArrayRef[Paws::ELB::TagDescription]

  

A list of tag description structures.











=cut

