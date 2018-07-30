
package Paws::SSM::LabelParameterVersionResult;
  use Moose;
  has InvalidLabels => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::LabelParameterVersionResult

=head1 ATTRIBUTES


=head2 InvalidLabels => ArrayRef[Str|Undef]




=head2 _request_id => Str


=cut

1;