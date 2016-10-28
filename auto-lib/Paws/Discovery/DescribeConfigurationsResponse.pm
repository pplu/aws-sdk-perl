
package Paws::Discovery::DescribeConfigurationsResponse;
  use Moose;
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::DescribeConfigurationsAttribute]', traits => ['Unwrapped'], xmlname => 'configurations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeConfigurationsResponse

=head1 ATTRIBUTES


=head2 Configurations => ArrayRef[L<Paws::Discovery::DescribeConfigurationsAttribute>]

A key in the response map. The value is an array of data.




=cut

1;