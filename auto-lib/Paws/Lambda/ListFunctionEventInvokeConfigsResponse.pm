
package Paws::Lambda::ListFunctionEventInvokeConfigsResponse;
  use Moose;
  has FunctionEventInvokeConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::FunctionEventInvokeConfig]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListFunctionEventInvokeConfigsResponse

=head1 ATTRIBUTES


=head2 FunctionEventInvokeConfigs => ArrayRef[L<Paws::Lambda::FunctionEventInvokeConfig>]

A list of configurations.


=head2 NextMarker => Str

The pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

