
package Paws::OpsWorks::CreateStackResult;
  use Moose;
  has StackId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateStackResult

=head1 ATTRIBUTES


=head2 StackId => Str

The stack ID, which is an opaque string that you use to identify the
stack when performing actions such as C<DescribeStacks>.


=head2 _request_id => Str


=cut

1;