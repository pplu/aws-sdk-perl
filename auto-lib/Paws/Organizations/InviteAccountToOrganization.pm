
package Paws::Organizations::InviteAccountToOrganization;
  use Moose;
  has Notes => (is => 'ro', isa => 'Str');
  has Target => (is => 'ro', isa => 'Paws::Organizations::HandshakeParty', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InviteAccountToOrganization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::InviteAccountToOrganizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::InviteAccountToOrganization - Arguments for method InviteAccountToOrganization on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InviteAccountToOrganization on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method InviteAccountToOrganization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InviteAccountToOrganization.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    my $InviteAccountToOrganizationResponse =
      $organizations->InviteAccountToOrganization(
      Target => {
        Id   => 'MyHandshakePartyId',    # min: 1, max: 64
        Type => 'ACCOUNT',               # values: ACCOUNT, ORGANIZATION, EMAIL

      },
      Notes => 'MyHandshakeNotes',       # OPTIONAL
      );

    # Results:
    my $Handshake = $InviteAccountToOrganizationResponse->Handshake;

 # Returns a L<Paws::Organizations::InviteAccountToOrganizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/InviteAccountToOrganization>

=head1 ATTRIBUTES


=head2 Notes => Str

Additional information that you want to include in the generated email
to the recipient account owner.



=head2 B<REQUIRED> Target => L<Paws::Organizations::HandshakeParty>

The identifier (ID) of the AWS account that you want to invite to join
your organization. This is a JSON object that contains the following
elements:

C<{ "Type": "ACCOUNT", "Id": "E<lt>I< B<account id number> >E<gt>" }>

If you use the AWS CLI, you can submit this as a single string, similar
to the following example:

C<--target Id=123456789012,Type=ACCOUNT>

If you specify C<"Type": "ACCOUNT">, then you must provide the AWS
account ID number as the C<Id>. If you specify C<"Type": "EMAIL">, then
you must specify the email address that is associated with the account.

C<--target Id=diego@example.com,Type=EMAIL>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InviteAccountToOrganization in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

