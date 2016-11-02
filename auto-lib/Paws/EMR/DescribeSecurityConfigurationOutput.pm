
package Paws::EMR::DescribeSecurityConfigurationOutput;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SecurityConfiguration => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::DescribeSecurityConfigurationOutput

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

The date and time the security configuration was created


=head2 Name => Str

The name of the security configuration.


=head2 SecurityConfiguration => Str

The security configuration details in JSON format.


=head2 _request_id => Str


=cut

1;