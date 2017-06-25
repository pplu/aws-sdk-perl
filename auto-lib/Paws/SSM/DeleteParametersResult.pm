
package Paws::SSM::DeleteParametersResult;
  use Moose;
  has DeletedParameters => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has InvalidParameters => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeleteParametersResult

=head1 ATTRIBUTES


=head2 DeletedParameters => ArrayRef[Str|Undef]

The names of the deleted parameters.


=head2 InvalidParameters => ArrayRef[Str|Undef]

The names of parameters that weren't deleted because the parameters are
not valid.


=head2 _request_id => Str


=cut

1;