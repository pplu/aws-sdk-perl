
package Paws::LakeFormation::DescribeResourceResponse;
  use Moose;
  has ResourceInfo => (is => 'ro', isa => 'Paws::LakeFormation::ResourceInfo');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::DescribeResourceResponse

=head1 ATTRIBUTES


=head2 ResourceInfo => L<Paws::LakeFormation::ResourceInfo>

A structure containing information about an AWS Lake Formation
resource.


=head2 _request_id => Str


=cut

1;