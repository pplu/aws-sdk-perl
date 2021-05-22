
package Paws::SSM::UnlabelParameterVersionResult;
  use Moose;
  has InvalidLabels => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RemovedLabels => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UnlabelParameterVersionResult

=head1 ATTRIBUTES


=head2 InvalidLabels => ArrayRef[Str|Undef]

The labels that are not attached to the given parameter version.


=head2 RemovedLabels => ArrayRef[Str|Undef]

A list of all labels deleted from the parameter.


=head2 _request_id => Str


=cut

1;