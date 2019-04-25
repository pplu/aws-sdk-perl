
package Paws::AlexaForBusiness::RevokeInvitation;
  use Moose;
  has EnrollmentId => (is => 'ro', isa => 'Str');
  has UserArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeInvitation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::RevokeInvitationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::RevokeInvitation - Arguments for method RevokeInvitation on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RevokeInvitation on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method RevokeInvitation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RevokeInvitation.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $RevokeInvitationResponse = $a4b->RevokeInvitation(
      EnrollmentId => 'MyEnrollmentId',    # OPTIONAL
      UserArn      => 'MyArn',             # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/RevokeInvitation>

=head1 ATTRIBUTES


=head2 EnrollmentId => Str

The ARN of the enrollment invitation to revoke. Required.



=head2 UserArn => Str

The ARN of the user for whom to revoke an enrollment invitation.
Required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RevokeInvitation in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

