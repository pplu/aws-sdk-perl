
package Paws::Discovery::DescribeConfigurationsResponse;
  use Moose;
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::DescribeConfigurationsAttribute]', traits => ['NameInRequest'], request_name => 'configurations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeConfigurationsResponse

=head1 ATTRIBUTES


=head2 Configurations => ArrayRef[L<Paws::Discovery::DescribeConfigurationsAttribute>]

A key in the response map. The value is an array of data.


=head2 _request_id => Str


=cut

1;