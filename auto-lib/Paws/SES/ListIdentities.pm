
package Paws::SES::ListIdentities;
  use Moose;
  has IdentityType => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIdentities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::ListIdentitiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListIdentitiesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ListIdentities - Arguments for method ListIdentities on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIdentities on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method ListIdentities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIdentities.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # ListIdentities
    # The following example lists the email address identities that have been
    # submitted for verification with Amazon SES:
    my $ListIdentitiesResponse = $email->ListIdentities(
      {
        'IdentityType' => 'EmailAddress',
        'MaxItems'     => 123,
        'NextToken'    => ''
      }
    );

    # Results:
    my $Identities = $ListIdentitiesResponse->Identities;
    my $NextToken  = $ListIdentitiesResponse->NextToken;

    # Returns a L<Paws::SES::ListIdentitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/ListIdentities>

=head1 ATTRIBUTES


=head2 IdentityType => Str

The type of the identities to list. Possible values are "EmailAddress"
and "Domain". If this parameter is omitted, then all identities will be
listed.

Valid values are: C<"EmailAddress">, C<"Domain">

=head2 MaxItems => Int

The maximum number of identities per page. Possible values are 1-1000
inclusive.



=head2 NextToken => Str

The token to use for pagination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIdentities in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

