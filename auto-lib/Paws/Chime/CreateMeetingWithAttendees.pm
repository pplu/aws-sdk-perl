
package Paws::Chime::CreateMeetingWithAttendees;
  use Moose;
  has Attendees => (is => 'ro', isa => 'ArrayRef[Paws::Chime::CreateAttendeeRequestItem]');
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has ExternalMeetingId => (is => 'ro', isa => 'Str');
  has MediaRegion => (is => 'ro', isa => 'Str');
  has MeetingHostId => (is => 'ro', isa => 'Str');
  has NotificationsConfiguration => (is => 'ro', isa => 'Paws::Chime::MeetingNotificationConfiguration');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Chime::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMeetingWithAttendees');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meetings?operation=create-attendees');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::CreateMeetingWithAttendeesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateMeetingWithAttendees - Arguments for method CreateMeetingWithAttendees on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMeetingWithAttendees on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method CreateMeetingWithAttendees.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMeetingWithAttendees.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $CreateMeetingWithAttendeesResponse = $chime->CreateMeetingWithAttendees(
      ClientRequestToken => 'MyClientRequestToken',
      Attendees          => [
        {
          ExternalUserId => 'MyExternalUserIdType',    # min: 2, max: 64
          Tags           => [
            {
              Key   => 'MyTagKey',      # min: 1, max: 128
              Value => 'MyTagValue',    # min: 1, max: 256

            },
            ...
          ],    # min: 1, max: 10; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ExternalMeetingId          => 'MyExternalMeetingIdType',    # OPTIONAL
      MediaRegion                => 'MyString',                   # OPTIONAL
      MeetingHostId              => 'MyExternalUserIdType',       # OPTIONAL
      NotificationsConfiguration => {
        SnsTopicArn => 'MyArn',    # min: 1, max: 1024; OPTIONAL
        SqsQueueArn => 'MyArn',    # min: 1, max: 1024; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Attendees = $CreateMeetingWithAttendeesResponse->Attendees;
    my $Errors    = $CreateMeetingWithAttendeesResponse->Errors;
    my $Meeting   = $CreateMeetingWithAttendeesResponse->Meeting;

    # Returns a L<Paws::Chime::CreateMeetingWithAttendeesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/CreateMeetingWithAttendees>

=head1 ATTRIBUTES


=head2 Attendees => ArrayRef[L<Paws::Chime::CreateAttendeeRequestItem>]

The request containing the attendees to create.



=head2 B<REQUIRED> ClientRequestToken => Str

The unique identifier for the client request. Use a different token for
different meetings.



=head2 ExternalMeetingId => Str

The external meeting ID.



=head2 MediaRegion => Str

The Region in which to create the meeting. Default: C<us-east-1> .

Available values: C<af-south-1> , C<ap-northeast-1> , C<ap-northeast-2>
, C<ap-south-1> , C<ap-southeast-1> , C<ap-southeast-2> ,
C<ca-central-1> , C<eu-central-1> , C<eu-north-1> , C<eu-south-1> ,
C<eu-west-1> , C<eu-west-2> , C<eu-west-3> , C<sa-east-1> ,
C<us-east-1> , C<us-east-2> , C<us-west-1> , C<us-west-2> .



=head2 MeetingHostId => Str

Reserved.



=head2 NotificationsConfiguration => L<Paws::Chime::MeetingNotificationConfiguration>





=head2 Tags => ArrayRef[L<Paws::Chime::Tag>]

The tag key-value pairs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMeetingWithAttendees in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

