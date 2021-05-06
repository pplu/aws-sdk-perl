
package Paws::EMR::CreateSecurityConfigurationOutput;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::CreateSecurityConfigurationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationDateTime => Str

The date and time the security configuration was created.


=head2 B<REQUIRED> Name => Str

The name of the security configuration.


=head2 _request_id => Str


=cut

1;