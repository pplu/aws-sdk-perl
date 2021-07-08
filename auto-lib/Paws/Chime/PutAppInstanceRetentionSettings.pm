
package Paws::Chime::PutAppInstanceRetentionSettings;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appInstanceArn', required => 1);
  has AppInstanceRetentionSettings => (is => 'ro', isa => 'Paws::Chime::AppInstanceRetentionSettings', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAppInstanceRetentionSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instances/{appInstanceArn}/retention-settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::PutAppInstanceRetentionSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PutAppInstanceRetentionSettings - Arguments for method PutAppInstanceRetentionSettings on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAppInstanceRetentionSettings on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method PutAppInstanceRetentionSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAppInstanceRetentionSettings.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $PutAppInstanceRetentionSettingsResponse =
      $chime->PutAppInstanceRetentionSettings(
      AppInstanceArn               => 'MyChimeArn',
      AppInstanceRetentionSettings => {
        ChannelRetentionSettings => {
          RetentionDays => 1,    # min: 1, max: 5475; OPTIONAL
        },    # OPTIONAL
      },

      );

    # Results:
    my $AppInstanceRetentionSettings =
      $PutAppInstanceRetentionSettingsResponse->AppInstanceRetentionSettings;
    my $InitiateDeletionTimestamp =
      $PutAppInstanceRetentionSettingsResponse->InitiateDeletionTimestamp;

    # Returns a L<Paws::Chime::PutAppInstanceRetentionSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/PutAppInstanceRetentionSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceArn => Str

The ARN of the C<AppInstance>.



=head2 B<REQUIRED> AppInstanceRetentionSettings => L<Paws::Chime::AppInstanceRetentionSettings>

The time in days to retain data. Data type: number.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAppInstanceRetentionSettings in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

