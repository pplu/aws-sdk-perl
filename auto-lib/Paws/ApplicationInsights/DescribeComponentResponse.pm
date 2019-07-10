
package Paws::ApplicationInsights::DescribeComponentResponse;
  use Moose;
  has ApplicationComponent => (is => 'ro', isa => 'Paws::ApplicationInsights::ApplicationComponent');
  has ResourceList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeComponentResponse

=head1 ATTRIBUTES


=head2 ApplicationComponent => L<Paws::ApplicationInsights::ApplicationComponent>




=head2 ResourceList => ArrayRef[Str|Undef]

The list of resource ARNs that belong to the component.


=head2 _request_id => Str


=cut

1;