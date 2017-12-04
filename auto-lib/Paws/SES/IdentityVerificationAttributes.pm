package Paws::SES::IdentityVerificationAttributes;
  use Moose;
  has VerificationStatus => (is => 'ro', isa => 'Str', required => 1);
  has VerificationToken => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::IdentityVerificationAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::IdentityVerificationAttributes object:

  $service_obj->Method(Att1 => { VerificationStatus => $value, ..., VerificationToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::IdentityVerificationAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->VerificationStatus

=head1 DESCRIPTION

Represents the verification attributes of a single identity.

=head1 ATTRIBUTES


=head2 B<REQUIRED> VerificationStatus => Str

  The verification status of the identity: "Pending", "Success",
"Failed", or "TemporaryFailure".


=head2 VerificationToken => Str

  The verification token for a domain identity. Null for email address
identities.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

