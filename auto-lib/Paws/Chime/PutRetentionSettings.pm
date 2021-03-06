
package Paws::Chime::PutRetentionSettings;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has RetentionSettings => (is => 'ro', isa => 'Paws::Chime::RetentionSettings', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRetentionSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{accountId}/retention-settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::PutRetentionSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PutRetentionSettings - Arguments for method PutRetentionSettings on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRetentionSettings on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method PutRetentionSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRetentionSettings.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $PutRetentionSettingsResponse = $chime->PutRetentionSettings(
      AccountId         => 'MyNonEmptyString',
      RetentionSettings => {
        ConversationRetentionSettings => {
          RetentionDays => 1,    # min: 1, max: 5475; OPTIONAL
        },    # OPTIONAL
        RoomRetentionSettings => {
          RetentionDays => 1,    # min: 1, max: 5475; OPTIONAL
        },    # OPTIONAL
      },

    );

    # Results:
    my $InitiateDeletionTimestamp =
      $PutRetentionSettingsResponse->InitiateDeletionTimestamp;
    my $RetentionSettings = $PutRetentionSettingsResponse->RetentionSettings;

    # Returns a L<Paws::Chime::PutRetentionSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/PutRetentionSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 B<REQUIRED> RetentionSettings => L<Paws::Chime::RetentionSettings>

The retention settings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRetentionSettings in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

