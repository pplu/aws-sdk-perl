
package Paws::SESv2::PutSuppressedDestination;
  use Moose;
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);
  has Reason => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSuppressedDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/suppression/addresses');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::PutSuppressedDestinationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::PutSuppressedDestination - Arguments for method PutSuppressedDestination on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSuppressedDestination on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method PutSuppressedDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSuppressedDestination.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $PutSuppressedDestinationResponse = $email->PutSuppressedDestination(
      EmailAddress => 'MyEmailAddress',
      Reason       => 'BOUNCE',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutSuppressedDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EmailAddress => Str

The email address that should be added to the suppression list for your
account.



=head2 B<REQUIRED> Reason => Str

The factors that should cause the email address to be added to the
suppression list for your account.

Valid values are: C<"BOUNCE">, C<"COMPLAINT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSuppressedDestination in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

