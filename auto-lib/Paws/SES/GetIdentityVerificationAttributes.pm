
package Paws::SES::GetIdentityVerificationAttributes;
  use Moose;
  has Identities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityVerificationAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::GetIdentityVerificationAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityVerificationAttributesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetIdentityVerificationAttributes - Arguments for method GetIdentityVerificationAttributes on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIdentityVerificationAttributes on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method GetIdentityVerificationAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIdentityVerificationAttributes.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # GetIdentityVerificationAttributes
    # The following example returns the verification status and the verification
    # token for a domain identity:
    my $GetIdentityVerificationAttributesResponse =
      $email->GetIdentityVerificationAttributes(
      {
        'Identities' => ['example.com']
      }
      );

    # Results:
    my $VerificationAttributes =
      $GetIdentityVerificationAttributesResponse->VerificationAttributes;

    # Returns a L<Paws::SES::GetIdentityVerificationAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetIdentityVerificationAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identities => ArrayRef[Str|Undef]

A list of identities.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIdentityVerificationAttributes in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

