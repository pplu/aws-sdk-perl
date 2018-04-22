
package Paws::DeviceFarm::ListVPCEConfigurationsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has VpceConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::VPCEConfiguration]', traits => ['NameInRequest'], request_name => 'vpceConfigurations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListVPCEConfigurationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 VpceConfigurations => ArrayRef[L<Paws::DeviceFarm::VPCEConfiguration>]

An array of C<VPCEConfiguration> objects containing information about
your VPC endpoint configuration.


=head2 _request_id => Str


=cut

1;