
package Paws::IoT::CreateDimensionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateDimensionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the created dimension.


=head2 Name => Str

A unique identifier for the dimension.


=head2 _request_id => Str


=cut

