
package Paws::Chime::DeleteRoom;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has AccountId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RoomId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteRoom');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/accounts/{accountId}/rooms/{roomId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'RoomId' => 1,
                    'AccountId' => 1
                  },
  'types' => {
               'AccountId' => {
                                'type' => 'Str'
                              },
               'RoomId' => {
                             'type' => 'Str'
                           }
             },
  'ParamInURI' => {
                    'AccountId' => 'accountId',
                    'RoomId' => 'roomId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::DeleteRoom - Arguments for method DeleteRoom on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRoom on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method DeleteRoom.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRoom.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    $chime->DeleteRoom(
      AccountId => 'MyNonEmptyString',
      RoomId    => 'MyNonEmptyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/DeleteRoom>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 B<REQUIRED> RoomId => Str

The chat room ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRoom in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

