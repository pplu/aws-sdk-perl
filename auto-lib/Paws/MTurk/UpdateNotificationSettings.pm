
package Paws::MTurk::UpdateNotificationSettings;
  use Moose;
  has Active => (is => 'ro', isa => 'Bool');
  has HITTypeId => (is => 'ro', isa => 'Str', required => 1);
  has Notification => (is => 'ro', isa => 'Paws::MTurk::NotificationSpecification');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNotificationSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::UpdateNotificationSettingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::UpdateNotificationSettings - Arguments for method UpdateNotificationSettings on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNotificationSettings on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method UpdateNotificationSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNotificationSettings.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $UpdateNotificationSettingsResponse =
      $mturk -requester->UpdateNotificationSettings(
      HITTypeId    => 'MyEntityId',
      Active       => 1,              # OPTIONAL
      Notification => {
        Destination => 'MyString',
        EventTypes  => [
          'AssignmentAccepted',
          ... # values: AssignmentAccepted, AssignmentAbandoned, AssignmentReturned, AssignmentSubmitted, AssignmentRejected, AssignmentApproved, HITCreated, HITExpired, HITReviewable, HITExtended, HITDisposed, Ping
        ],
        Transport => 'Email',      # values: Email, SQS, SNS
        Version   => 'MyString',

      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/UpdateNotificationSettings>

=head1 ATTRIBUTES


=head2 Active => Bool

Specifies whether notifications are sent for HITs of this HIT type,
according to the notification specification. You must specify either
the Notification parameter or the Active parameter for the call to
UpdateNotificationSettings to succeed.



=head2 B<REQUIRED> HITTypeId => Str

The ID of the HIT type whose notification specification is being
updated.



=head2 Notification => L<Paws::MTurk::NotificationSpecification>

The notification specification for the HIT type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNotificationSettings in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

