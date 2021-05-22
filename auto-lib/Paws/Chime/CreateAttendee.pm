
package Paws::Chime::CreateAttendee;
  use Moose;
  has ExternalUserId => (is => 'ro', isa => 'Str', required => 1);
  has MeetingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meetingId', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Chime::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAttendee');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meetings/{meetingId}/attendees');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::CreateAttendeeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateAttendee - Arguments for method CreateAttendee on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAttendee on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method CreateAttendee.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAttendee.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $CreateAttendeeResponse = $chime->CreateAttendee(
      ExternalUserId => 'MyExternalUserIdType',
      MeetingId      => 'MyGuidString',
      Tags           => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $Attendee = $CreateAttendeeResponse->Attendee;

    # Returns a L<Paws::Chime::CreateAttendeeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/CreateAttendee>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExternalUserId => Str

The Amazon Chime SDK external user ID. An idempotency token. Links the
attendee to an identity managed by a builder application.



=head2 B<REQUIRED> MeetingId => Str

The Amazon Chime SDK meeting ID.



=head2 Tags => ArrayRef[L<Paws::Chime::Tag>]

The tag key-value pairs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAttendee in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

