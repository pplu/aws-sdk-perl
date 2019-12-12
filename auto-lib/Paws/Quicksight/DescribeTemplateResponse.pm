
package Paws::Quicksight::DescribeTemplateResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Int');
  has Template => (is => 'ro', isa => 'Paws::Quicksight::Template');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeTemplateResponse

=head1 ATTRIBUTES


=head2 Status => Int

The HTTP status of the request.


=head2 Template => L<Paws::Quicksight::Template>

The template structure for the object you want to describe.


=head2 _request_id => Str


=cut

