
package Paws::AppStream::UpdateStack;
  use Moose;
  has ApplicationSettings => (is => 'ro', isa => 'Paws::AppStream::ApplicationSettings');
  has AttributesToDelete => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DeleteStorageConnectors => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has FeedbackURL => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RedirectURL => (is => 'ro', isa => 'Str');
  has StorageConnectors => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::StorageConnector]');
  has UserSettings => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::UserSetting]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::UpdateStackResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::UpdateStack - Arguments for method UpdateStack on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStack on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method UpdateStack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStack.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $UpdateStackResult = $appstream2->UpdateStack(
      Name                => 'MyString',
      ApplicationSettings => {
        Enabled       => 1,
        SettingsGroup => 'MySettingsGroup',    # max: 100; OPTIONAL
      },    # OPTIONAL
      AttributesToDelete => [
        'STORAGE_CONNECTORS',
        ... # values: STORAGE_CONNECTORS, STORAGE_CONNECTOR_HOMEFOLDERS, STORAGE_CONNECTOR_GOOGLE_DRIVE, STORAGE_CONNECTOR_ONE_DRIVE, REDIRECT_URL, FEEDBACK_URL, THEME_NAME, USER_SETTINGS
      ],    # OPTIONAL
      DeleteStorageConnectors => 1,                  # OPTIONAL
      Description             => 'MyDescription',    # OPTIONAL
      DisplayName             => 'MyDisplayName',    # OPTIONAL
      FeedbackURL             => 'MyFeedbackURL',    # OPTIONAL
      RedirectURL             => 'MyRedirectURL',    # OPTIONAL
      StorageConnectors       => [
        {
          ConnectorType =>
            'HOMEFOLDERS',    # values: HOMEFOLDERS, GOOGLE_DRIVE, ONE_DRIVE
          Domains => [
            'MyDomain', ...    # max: 64
          ],                   # max: 10; OPTIONAL
          ResourceIdentifier => 'MyResourceIdentifier',    # min: 1; OPTIONAL
        },
        ...
      ],                                                   # OPTIONAL
      UserSettings => [
        {
          Action => 'CLIPBOARD_COPY_FROM_LOCAL_DEVICE'
          , # values: CLIPBOARD_COPY_FROM_LOCAL_DEVICE, CLIPBOARD_COPY_TO_LOCAL_DEVICE, FILE_UPLOAD, FILE_DOWNLOAD, PRINTING_TO_LOCAL_DEVICE
          Permission => 'ENABLED',    # values: ENABLED, DISABLED

        },
        ...
      ],                              # OPTIONAL
    );

    # Results:
    my $Stack = $UpdateStackResult->Stack;

    # Returns a L<Paws::AppStream::UpdateStackResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/UpdateStack>

=head1 ATTRIBUTES


=head2 ApplicationSettings => L<Paws::AppStream::ApplicationSettings>

The persistent application settings for users of a stack. When these
settings are enabled, changes that users make to applications and
Windows settings are automatically saved after each session and applied
to the next session.



=head2 AttributesToDelete => ArrayRef[Str|Undef]

The stack attributes to delete.



=head2 DeleteStorageConnectors => Bool

Deletes the storage connectors currently enabled for the stack.



=head2 Description => Str

The description to display.



=head2 DisplayName => Str

The stack name to display.



=head2 FeedbackURL => Str

The URL that users are redirected to after they choose the Send
Feedback link. If no URL is specified, no Send Feedback link is
displayed.



=head2 B<REQUIRED> Name => Str

The name of the stack.



=head2 RedirectURL => Str

The URL that users are redirected to after their streaming session
ends.



=head2 StorageConnectors => ArrayRef[L<Paws::AppStream::StorageConnector>]

The storage connectors to enable.



=head2 UserSettings => ArrayRef[L<Paws::AppStream::UserSetting>]

The actions that are enabled or disabled for users during their
streaming sessions. By default, these actions are enabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStack in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

