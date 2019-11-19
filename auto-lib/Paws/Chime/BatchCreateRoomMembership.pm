
package Paws::Chime::BatchCreateRoomMembership;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Chime::Types qw/Chime_MembershipItem/;
  has AccountId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MembershipItemList => (is => 'ro', isa => ArrayRef[Chime_MembershipItem], required => 1, predicate => 1);
  has RoomId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'BatchCreateRoomMembership');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/accounts/{accountId}/rooms/{roomId}/memberships?operation=batch-create');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::BatchCreateRoomMembershipResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'AccountId' => 1,
                    'MembershipItemList' => 1,
                    'RoomId' => 1
                  },
  'types' => {
               'MembershipItemList' => {
                                         'class' => 'Paws::Chime::MembershipItem',
                                         'type' => 'ArrayRef[Chime_MembershipItem]'
                                       },
               'RoomId' => {
                             'type' => 'Str'
                           },
               'AccountId' => {
                                'type' => 'Str'
                              }
             },
  'ParamInURI' => {
                    'RoomId' => 'roomId',
                    'AccountId' => 'accountId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::BatchCreateRoomMembership - Arguments for method BatchCreateRoomMembership on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchCreateRoomMembership on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method BatchCreateRoomMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchCreateRoomMembership.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $BatchCreateRoomMembershipResponse = $chime->BatchCreateRoomMembership(
      AccountId          => 'MyNonEmptyString',
      MembershipItemList => [
        {
          MemberId => 'MyNonEmptyString',
          Role => 'Administrator',    # values: Administrator, Member; OPTIONAL
        },
        ...
      ],
      RoomId => 'MyNonEmptyString',

    );

    # Results:
    my $Errors = $BatchCreateRoomMembershipResponse->Errors;

    # Returns a L<Paws::Chime::BatchCreateRoomMembershipResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/BatchCreateRoomMembership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 B<REQUIRED> MembershipItemList => ArrayRef[Chime_MembershipItem]

The list of membership items.



=head2 B<REQUIRED> RoomId => Str

The room ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchCreateRoomMembership in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

