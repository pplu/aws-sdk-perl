
package Paws::ApiGateway::SdkType;
  use Moose;
  has ConfigurationProperties => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::SdkConfigurationProperty]', traits => ['Unwrapped'], xmlname => 'configurationProperties');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has FriendlyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'friendlyName');
  has Id => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::SdkType

=head1 ATTRIBUTES


=head2 ConfigurationProperties => ArrayRef[L<Paws::ApiGateway::SdkConfigurationProperty>]

A list of configuration properties of an SdkType.


=head2 Description => Str

The description of an SdkType.


=head2 FriendlyName => Str

The user-friendly name of an SdkType instance.


=head2 Id => Str

The identifier of an SdkType instance.


=head2 _request_id => Str


=cut

