
package Paws::LookoutVision::DescribeProjectResponse;
  use Moose;
  has ProjectDescription => (is => 'ro', isa => 'Paws::LookoutVision::ProjectDescription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::DescribeProjectResponse

=head1 ATTRIBUTES


=head2 ProjectDescription => L<Paws::LookoutVision::ProjectDescription>

The description of the project.


=head2 _request_id => Str


=cut

