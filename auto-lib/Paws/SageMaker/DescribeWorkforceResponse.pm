
package Paws::SageMaker::DescribeWorkforceResponse;
  use Moose;
  has Workforce => (is => 'ro', isa => 'Paws::SageMaker::Workforce', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeWorkforceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Workforce => L<Paws::SageMaker::Workforce>

A single private workforce, which is automatically created when you
create your first private work team. You can create one private work
force in each Amazon Web Services Region. By default, any
workforce-related API operation used in a specific region will apply to
the workforce created in that region. To learn how to create a private
workforce, see Create a Private Workforce
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private.html).


=head2 _request_id => Str


=cut

1;