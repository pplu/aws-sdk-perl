# Generated from default/object.tt
package Paws::AppStream::Stack;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppStream::Types qw/AppStream_UserSetting AppStream_StorageConnector AppStream_ApplicationSettingsResponse AppStream_StackError/;
  has ApplicationSettings => (is => 'ro', isa => AppStream_ApplicationSettingsResponse);
  has Arn => (is => 'ro', isa => Str);
  has CreatedTime => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has DisplayName => (is => 'ro', isa => Str);
  has FeedbackURL => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str, required => 1);
  has RedirectURL => (is => 'ro', isa => Str);
  has StackErrors => (is => 'ro', isa => ArrayRef[AppStream_StackError]);
  has StorageConnectors => (is => 'ro', isa => ArrayRef[AppStream_StorageConnector]);
  has UserSettings => (is => 'ro', isa => ArrayRef[AppStream_UserSetting]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreatedTime' => {
                                  'type' => 'Str'
                                },
               'FeedbackURL' => {
                                  'type' => 'Str'
                                },
               'ApplicationSettings' => {
                                          'class' => 'Paws::AppStream::ApplicationSettingsResponse',
                                          'type' => 'AppStream_ApplicationSettingsResponse'
                                        },
               'UserSettings' => {
                                   'class' => 'Paws::AppStream::UserSetting',
                                   'type' => 'ArrayRef[AppStream_UserSetting]'
                                 },
               'StackErrors' => {
                                  'class' => 'Paws::AppStream::StackError',
                                  'type' => 'ArrayRef[AppStream_StackError]'
                                },
               'RedirectURL' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
                          'type' => 'Str'
                        },
               'DisplayName' => {
                                  'type' => 'Str'
                                },
               'StorageConnectors' => {
                                        'class' => 'Paws::AppStream::StorageConnector',
                                        'type' => 'ArrayRef[AppStream_StorageConnector]'
                                      },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::Stack

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::Stack object:

  $service_obj->Method(Att1 => { ApplicationSettings => $value, ..., UserSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::Stack object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationSettings

=head1 DESCRIPTION

Describes a stack.

=head1 ATTRIBUTES


=head2 ApplicationSettings => AppStream_ApplicationSettingsResponse

  The persistent application settings for users of the stack.


=head2 Arn => Str

  The ARN of the stack.


=head2 CreatedTime => Str

  The time the stack was created.


=head2 Description => Str

  The description to display.


=head2 DisplayName => Str

  The stack name to display.


=head2 FeedbackURL => Str

  The URL that users are redirected to after they click the Send Feedback
link. If no URL is specified, no Send Feedback link is displayed.


=head2 B<REQUIRED> Name => Str

  The name of the stack.


=head2 RedirectURL => Str

  The URL that users are redirected to after their streaming session
ends.


=head2 StackErrors => ArrayRef[AppStream_StackError]

  The errors for the stack.


=head2 StorageConnectors => ArrayRef[AppStream_StorageConnector]

  The storage connectors to enable.


=head2 UserSettings => ArrayRef[AppStream_UserSetting]

  The actions that are enabled or disabled for users during their
streaming sessions. By default these actions are enabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

