
package Paws::OpsWorks::DescribeServiceErrorsResult;
  use Moose;
  has ServiceErrors => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::ServiceError]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeServiceErrorsResult

=head1 ATTRIBUTES


=head2 ServiceErrors => ArrayRef[L<Paws::OpsWorks::ServiceError>]

An array of C<ServiceError> objects that describe the specified service
errors.


=head2 _request_id => Str


=cut

1;