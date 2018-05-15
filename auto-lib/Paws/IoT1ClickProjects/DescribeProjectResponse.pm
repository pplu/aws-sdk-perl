
package Paws::IoT1ClickProjects::DescribeProjectResponse;
  use Moose;
  has Project => (is => 'ro', isa => 'Paws::IoT1ClickProjects::ProjectDescription', traits => ['NameInRequest'], request_name => 'project', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::DescribeProjectResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Project => L<Paws::IoT1ClickProjects::ProjectDescription>

An object describing the project.


=head2 _request_id => Str


=cut

