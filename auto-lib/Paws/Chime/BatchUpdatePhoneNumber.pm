
package Paws::Chime::BatchUpdatePhoneNumber;
  use Moose;
  has UpdatePhoneNumberRequestItems => (is => 'ro', isa => 'ArrayRef[Paws::Chime::UpdatePhoneNumberRequestItem]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdatePhoneNumber');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/phone-numbers?operation=batch-update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::BatchUpdatePhoneNumberResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::BatchUpdatePhoneNumber - Arguments for method BatchUpdatePhoneNumber on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdatePhoneNumber on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method BatchUpdatePhoneNumber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdatePhoneNumber.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $BatchUpdatePhoneNumberResponse = $chime->BatchUpdatePhoneNumber(
      UpdatePhoneNumberRequestItems => [
        {
          PhoneNumberId => 'MyNonEmptyString',
          ProductType   => 'BusinessCalling'
          ,    # values: BusinessCalling, VoiceConnector; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $PhoneNumberErrors = $BatchUpdatePhoneNumberResponse->PhoneNumberErrors;

    # Returns a L<Paws::Chime::BatchUpdatePhoneNumberResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/BatchUpdatePhoneNumber>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UpdatePhoneNumberRequestItems => ArrayRef[L<Paws::Chime::UpdatePhoneNumberRequestItem>]

The request containing the phone number IDs and product types to
update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdatePhoneNumber in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

