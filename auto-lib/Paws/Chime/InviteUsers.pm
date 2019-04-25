
package Paws::Chime::InviteUsers;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has UserEmailList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InviteUsers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/console/accounts/{accountId}/users?operation=add');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::InviteUsersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::InviteUsers - Arguments for method InviteUsers on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InviteUsers on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method InviteUsers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InviteUsers.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $InviteUsersResponse = $chime->InviteUsers(
      AccountId     => 'MyNonEmptyString',
      UserEmailList => [ 'MyEmailAddress', ... ],

    );

    # Results:
    my $Invites = $InviteUsersResponse->Invites;

    # Returns a L<Paws::Chime::InviteUsersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/InviteUsers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 B<REQUIRED> UserEmailList => ArrayRef[Str|Undef]

The user email addresses to which to send the invite.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InviteUsers in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

