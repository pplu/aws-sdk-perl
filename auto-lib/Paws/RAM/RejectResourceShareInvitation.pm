
package Paws::RAM::RejectResourceShareInvitation;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ResourceShareInvitationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceShareInvitationArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RejectResourceShareInvitation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rejectresourceshareinvitation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::RejectResourceShareInvitationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::RejectResourceShareInvitation - Arguments for method RejectResourceShareInvitation on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RejectResourceShareInvitation on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method RejectResourceShareInvitation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RejectResourceShareInvitation.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $RejectResourceShareInvitationResponse =
      $ram->RejectResourceShareInvitation(
      ResourceShareInvitationArn => 'MyString',
      ClientToken                => 'MyString',    # OPTIONAL
      );

    # Results:
    my $ClientToken = $RejectResourceShareInvitationResponse->ClientToken;
    my $ResourceShareInvitation =
      $RejectResourceShareInvitationResponse->ResourceShareInvitation;

    # Returns a L<Paws::RAM::RejectResourceShareInvitationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/RejectResourceShareInvitation>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ResourceShareInvitationArn => Str

The Amazon Resource Name (ARN) of the invitation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RejectResourceShareInvitation in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

