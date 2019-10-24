# Generated from json/callargs_class.tt

package Paws::AlexaForBusiness::CreateRoom;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_Tag/;
  has ClientRequestToken => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has ProfileArn => (is => 'ro', isa => Str, predicate => 1);
  has ProviderCalendarId => (is => 'ro', isa => Str, predicate => 1);
  has RoomName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[AlexaForBusiness_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateRoom');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AlexaForBusiness::CreateRoomResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'RoomName' => {
                               'type' => 'Str'
                             },
               'ProfileArn' => {
                                 'type' => 'Str'
                               },
               'ProviderCalendarId' => {
                                         'type' => 'Str'
                                       },
               'Tags' => {
                           'class' => 'Paws::AlexaForBusiness::Tag',
                           'type' => 'ArrayRef[AlexaForBusiness_Tag]'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'RoomName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateRoom - Arguments for method CreateRoom on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRoom on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method CreateRoom.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRoom.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $CreateRoomResponse = $a4b->CreateRoom(
      RoomName           => 'MyRoomName',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Description        => 'MyRoomDescription',       # OPTIONAL
      ProfileArn         => 'MyArn',                   # OPTIONAL
      ProviderCalendarId => 'MyProviderCalendarId',    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',                         # min: 1, max: 128
          Value => 'MyTagValue',                       # max: 256

        },
        ...
      ],                                               # OPTIONAL
    );

    # Results:
    my $RoomArn = $CreateRoomResponse->RoomArn;

    # Returns a L<Paws::AlexaForBusiness::CreateRoomResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/CreateRoom>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, user-specified identifier for this request that ensures
idempotency.



=head2 Description => Str

The description for the room.



=head2 ProfileArn => Str

The profile ARN for the room.



=head2 ProviderCalendarId => Str

The calendar ARN for the room.



=head2 B<REQUIRED> RoomName => Str

The name for the room.



=head2 Tags => ArrayRef[AlexaForBusiness_Tag]

The tags for the room.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRoom in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

