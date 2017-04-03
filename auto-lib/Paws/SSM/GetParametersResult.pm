
package Paws::SSM::GetParametersResult;
  use Moose;
  has InvalidParameters => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Parameter]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetParametersResult

=head1 ATTRIBUTES


=head2 InvalidParameters => ArrayRef[Str|Undef]

A list of parameters that are not formatted correctly or do not run
when executed.


=head2 Parameters => ArrayRef[L<Paws::SSM::Parameter>]

A list of details for a parameter.


=head2 _request_id => Str


=cut

1;