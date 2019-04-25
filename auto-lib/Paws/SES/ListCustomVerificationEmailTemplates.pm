
package Paws::SES::ListCustomVerificationEmailTemplates;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCustomVerificationEmailTemplates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::ListCustomVerificationEmailTemplatesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListCustomVerificationEmailTemplatesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ListCustomVerificationEmailTemplates - Arguments for method ListCustomVerificationEmailTemplates on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCustomVerificationEmailTemplates on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method ListCustomVerificationEmailTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCustomVerificationEmailTemplates.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    my $ListCustomVerificationEmailTemplatesResponse =
      $email->ListCustomVerificationEmailTemplates(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $CustomVerificationEmailTemplates =
      $ListCustomVerificationEmailTemplatesResponse
      ->CustomVerificationEmailTemplates;
    my $NextToken = $ListCustomVerificationEmailTemplatesResponse->NextToken;

  # Returns a L<Paws::SES::ListCustomVerificationEmailTemplatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/ListCustomVerificationEmailTemplates>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of custom verification email templates to return.
This value must be at least 1 and less than or equal to 50. If you do
not specify a value, or if you specify a value less than 1 or greater
than 50, the operation will return up to 50 results.



=head2 NextToken => Str

An array the contains the name and creation time stamp for each
template in your Amazon SES account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCustomVerificationEmailTemplates in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

