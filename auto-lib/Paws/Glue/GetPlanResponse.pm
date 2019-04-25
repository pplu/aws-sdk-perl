
package Paws::Glue::GetPlanResponse;
  use Moose;
  has PythonScript => (is => 'ro', isa => 'Str');
  has ScalaCode => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetPlanResponse

=head1 ATTRIBUTES


=head2 PythonScript => Str

A Python script to perform the mapping.


=head2 ScalaCode => Str

Scala code to perform the mapping.


=head2 _request_id => Str


=cut

1;