
package Paws::Chime::UpdateRoomMembership;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has MemberId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'memberId', required => 1);
  has Role => (is => 'ro', isa => 'Str');
  has RoomId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'roomId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRoomMembership');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{accountId}/rooms/{roomId}/memberships/{memberId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::UpdateRoomMembershipResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdateRoomMembership - Arguments for method UpdateRoomMembership on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRoomMembership on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method UpdateRoomMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRoomMembership.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $UpdateRoomMembershipResponse = $chime->UpdateRoomMembership(
      AccountId => 'MyNonEmptyString',
      MemberId  => 'MyNonEmptyString',
      RoomId    => 'MyNonEmptyString',
      Role      => 'Administrator',      # OPTIONAL
    );

    # Results:
    my $RoomMembership = $UpdateRoomMembershipResponse->RoomMembership;

    # Returns a L<Paws::Chime::UpdateRoomMembershipResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/UpdateRoomMembership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 B<REQUIRED> MemberId => Str

The member ID.



=head2 Role => Str

The role of the member.

Valid values are: C<"Administrator">, C<"Member">

=head2 B<REQUIRED> RoomId => Str

The room ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRoomMembership in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

