
package Paws::Lightsail::SendContactMethodVerification;
  use Moose;
  has Protocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocol' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendContactMethodVerification');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::SendContactMethodVerificationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::SendContactMethodVerification - Arguments for method SendContactMethodVerification on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendContactMethodVerification on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method SendContactMethodVerification.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendContactMethodVerification.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $SendContactMethodVerificationResult =
      $lightsail->SendContactMethodVerification(
      Protocol => 'Email',

      );

    # Results:
    my $Operations = $SendContactMethodVerificationResult->Operations;

    # Returns a L<Paws::Lightsail::SendContactMethodVerificationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/SendContactMethodVerification>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Protocol => Str

The protocol to verify, such as C<Email> or C<SMS> (text messaging).

Valid values are: C<"Email">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendContactMethodVerification in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

