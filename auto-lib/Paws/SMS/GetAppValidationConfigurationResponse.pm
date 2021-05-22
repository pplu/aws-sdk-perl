
package Paws::SMS::GetAppValidationConfigurationResponse;
  use Moose;
  has AppValidationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SMS::AppValidationConfiguration]', traits => ['NameInRequest'], request_name => 'appValidationConfigurations' );
  has ServerGroupValidationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SMS::ServerGroupValidationConfiguration]', traits => ['NameInRequest'], request_name => 'serverGroupValidationConfigurations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetAppValidationConfigurationResponse

=head1 ATTRIBUTES


=head2 AppValidationConfigurations => ArrayRef[L<Paws::SMS::AppValidationConfiguration>]

The configuration for application validation.


=head2 ServerGroupValidationConfigurations => ArrayRef[L<Paws::SMS::ServerGroupValidationConfiguration>]

The configuration for instance validation.


=head2 _request_id => Str


=cut

1;