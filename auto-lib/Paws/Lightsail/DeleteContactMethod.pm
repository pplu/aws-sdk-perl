
package Paws::Lightsail::DeleteContactMethod;
  use Moose;
  has Protocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocol' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteContactMethod');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::DeleteContactMethodResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DeleteContactMethod - Arguments for method DeleteContactMethod on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteContactMethod on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method DeleteContactMethod.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteContactMethod.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $DeleteContactMethodResult = $lightsail->DeleteContactMethod(
      Protocol => 'Email',

    );

    # Results:
    my $Operations = $DeleteContactMethodResult->Operations;

    # Returns a L<Paws::Lightsail::DeleteContactMethodResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/DeleteContactMethod>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Protocol => Str

The protocol that will be deleted, such as C<Email> or C<SMS> (text
messaging).

To delete an C<Email> and an C<SMS> contact method if you added both,
you must run separate C<DeleteContactMethod> actions to delete each
protocol.

Valid values are: C<"Email">, C<"SMS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteContactMethod in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

