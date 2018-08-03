
package Paws::MQ::UpdateConfigurationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Created => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'created');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has LatestRevision => (is => 'ro', isa => 'Paws::MQ::ConfigurationRevision', traits => ['NameInRequest'], request_name => 'latestRevision');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Warnings => (is => 'ro', isa => 'ArrayRef[Paws::MQ::SanitizationWarning]', traits => ['NameInRequest'], request_name => 'warnings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::UpdateConfigurationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Required. The Amazon Resource Name (ARN) of the configuration.


=head2 Created => Str

Required. The date and time of the configuration.


=head2 Id => Str

Required. The unique ID that Amazon MQ generates for the configuration.


=head2 LatestRevision => L<Paws::MQ::ConfigurationRevision>

The latest revision of the configuration.


=head2 Name => Str

Required. The name of the configuration. This value can contain only
alphanumeric characters, dashes, periods, underscores, and tildes (- .
_ ~). This value must be 1-150 characters long.


=head2 Warnings => ArrayRef[L<Paws::MQ::SanitizationWarning>]

The list of the first 20 warnings about the configuration XML elements
or attributes that were sanitized.


=head2 _request_id => Str


=cut

