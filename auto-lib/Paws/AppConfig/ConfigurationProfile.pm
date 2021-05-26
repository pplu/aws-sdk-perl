
package Paws::AppConfig::ConfigurationProfile;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RetrievalRoleArn => (is => 'ro', isa => 'Str');
  has Validators => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::Validator]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::ConfigurationProfile

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The application ID.


=head2 Description => Str

The configuration profile description.


=head2 Id => Str

The configuration profile ID.


=head2 LocationUri => Str

The URI location of the configuration.


=head2 Name => Str

The name of the configuration profile.


=head2 RetrievalRoleArn => Str

The ARN of an IAM role with permission to access the configuration at
the specified LocationUri.


=head2 Validators => ArrayRef[L<Paws::AppConfig::Validator>]

A list of methods for validating the configuration.


=head2 _request_id => Str


=cut

