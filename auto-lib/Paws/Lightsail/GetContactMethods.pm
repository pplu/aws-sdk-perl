
package Paws::Lightsail::GetContactMethods;
  use Moose;
  has Protocols => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'protocols' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetContactMethods');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetContactMethodsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetContactMethods - Arguments for method GetContactMethods on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetContactMethods on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetContactMethods.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetContactMethods.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetContactMethodsResult = $lightsail->GetContactMethods(
      Protocols => [
        'Email', ...    # values: Email, SMS
      ],                # OPTIONAL
    );

    # Results:
    my $ContactMethods = $GetContactMethodsResult->ContactMethods;

    # Returns a L<Paws::Lightsail::GetContactMethodsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetContactMethods>

=head1 ATTRIBUTES


=head2 Protocols => ArrayRef[Str|Undef]

The protocols used to send notifications, such as C<Email>, or C<SMS>
(text messaging).

Specify a protocol in your request to return information about a
specific contact method protocol.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetContactMethods in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

