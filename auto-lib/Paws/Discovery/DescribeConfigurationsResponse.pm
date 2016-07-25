
package Paws::Discovery::DescribeConfigurationsResponse;
  use Moose;
  has Configurations => (is => 'ro', isa => 'ArrayRef[HashRef[Str]]', traits => ['Unwrapped'], xmlname => 'configurations' );


### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeConfigurationsResponse

=head1 ATTRIBUTES


=head2 Configurations => ArrayRef[HashRef[Str]]

A key in the response map. The value is an array of data.




=cut

1;