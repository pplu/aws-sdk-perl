
package Paws::PinpointEmail::DeleteEmailIdentity;
  use Moose;
  has EmailIdentity => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EmailIdentity', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEmailIdentity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/email/identities/{EmailIdentity}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointEmail::DeleteEmailIdentityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::DeleteEmailIdentity - Arguments for method DeleteEmailIdentity on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEmailIdentity on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method DeleteEmailIdentity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEmailIdentity.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $DeleteEmailIdentityResponse = $email->DeleteEmailIdentity(
      EmailIdentity => 'MyIdentity',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/DeleteEmailIdentity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EmailIdentity => Str

The identity (that is, the email address or domain) that you want to
delete from your Amazon Pinpoint account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEmailIdentity in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

