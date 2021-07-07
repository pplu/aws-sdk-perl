
package Paws::SNS::ListSMSSandboxPhoneNumbers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSMSSandboxPhoneNumbers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::ListSMSSandboxPhoneNumbersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListSMSSandboxPhoneNumbersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ListSMSSandboxPhoneNumbers - Arguments for method ListSMSSandboxPhoneNumbers on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSMSSandboxPhoneNumbers on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method ListSMSSandboxPhoneNumbers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSMSSandboxPhoneNumbers.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $ListSMSSandboxPhoneNumbersResult = $sns->ListSMSSandboxPhoneNumbers(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MynextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListSMSSandboxPhoneNumbersResult->NextToken;
    my $PhoneNumbers = $ListSMSSandboxPhoneNumbersResult->PhoneNumbers;

    # Returns a L<Paws::SNS::ListSMSSandboxPhoneNumbersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/ListSMSSandboxPhoneNumbers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of phone numbers to return.



=head2 NextToken => Str

Token that the previous C<ListSMSSandboxPhoneNumbersInput> request
returns.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSMSSandboxPhoneNumbers in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

