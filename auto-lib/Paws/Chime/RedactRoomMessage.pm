
package Paws::Chime::RedactRoomMessage;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has MessageId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'messageId', required => 1);
  has RoomId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'roomId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RedactRoomMessage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{accountId}/rooms/{roomId}/messages/{messageId}?operation=redact');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::RedactRoomMessageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::RedactRoomMessage - Arguments for method RedactRoomMessage on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RedactRoomMessage on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method RedactRoomMessage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RedactRoomMessage.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $RedactRoomMessageResponse = $chime->RedactRoomMessage(
      AccountId => 'MyNonEmptyString',
      MessageId => 'MyNonEmptyString',
      RoomId    => 'MyNonEmptyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/RedactRoomMessage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 B<REQUIRED> MessageId => Str

The message ID.



=head2 B<REQUIRED> RoomId => Str

The room ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RedactRoomMessage in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

