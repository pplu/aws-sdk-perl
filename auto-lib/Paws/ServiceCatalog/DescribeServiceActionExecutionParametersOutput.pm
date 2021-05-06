
package Paws::ServiceCatalog::DescribeServiceActionExecutionParametersOutput;
  use Moose;
  has ServiceActionParameters => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ExecutionParameter]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeServiceActionExecutionParametersOutput

=head1 ATTRIBUTES


=head2 ServiceActionParameters => ArrayRef[L<Paws::ServiceCatalog::ExecutionParameter>]

The parameters of the self-service action.


=head2 _request_id => Str


=cut

1;