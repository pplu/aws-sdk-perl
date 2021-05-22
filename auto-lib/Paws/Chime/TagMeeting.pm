
package Paws::Chime::TagMeeting;
  use Moose;
  has MeetingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meetingId', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Chime::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagMeeting');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meetings/{meetingId}/tags?operation=add');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::TagMeeting - Arguments for method TagMeeting on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagMeeting on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method TagMeeting.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagMeeting.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    $chime->TagMeeting(
      MeetingId => 'MyGuidString',
      Tags      => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/TagMeeting>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeetingId => Str

The Amazon Chime SDK meeting ID.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::Chime::Tag>]

The tag key-value pairs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagMeeting in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

