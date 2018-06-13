
package Paws::SES::ListVerifiedEmailAddresses;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVerifiedEmailAddresses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::ListVerifiedEmailAddressesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListVerifiedEmailAddressesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ListVerifiedEmailAddresses - Arguments for method ListVerifiedEmailAddresses on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVerifiedEmailAddresses on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method ListVerifiedEmailAddresses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVerifiedEmailAddresses.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # ListVerifiedEmailAddresses
    # The following example lists all email addresses that have been submitted
    # for verification with Amazon SES:
    my $ListVerifiedEmailAddressesResponse =
      $email->ListVerifiedEmailAddresses();

    # Results:
    my $VerifiedEmailAddresses =
      $ListVerifiedEmailAddressesResponse->VerifiedEmailAddresses;

    # Returns a L<Paws::SES::ListVerifiedEmailAddressesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/ListVerifiedEmailAddresses>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVerifiedEmailAddresses in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

