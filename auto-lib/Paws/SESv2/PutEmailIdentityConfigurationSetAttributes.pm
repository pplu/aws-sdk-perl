
package Paws::SESv2::PutEmailIdentityConfigurationSetAttributes;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has EmailIdentity => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EmailIdentity', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutEmailIdentityConfigurationSetAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/identities/{EmailIdentity}/configuration-set');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::PutEmailIdentityConfigurationSetAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::PutEmailIdentityConfigurationSetAttributes - Arguments for method PutEmailIdentityConfigurationSetAttributes on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutEmailIdentityConfigurationSetAttributes on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method PutEmailIdentityConfigurationSetAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutEmailIdentityConfigurationSetAttributes.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $PutEmailIdentityConfigurationSetAttributesResponse =
      $email->PutEmailIdentityConfigurationSetAttributes(
      EmailIdentity        => 'MyIdentity',
      ConfigurationSetName => 'MyConfigurationSetName',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutEmailIdentityConfigurationSetAttributes>

=head1 ATTRIBUTES


=head2 ConfigurationSetName => Str

The configuration set that you want to associate with an email
identity.



=head2 B<REQUIRED> EmailIdentity => Str

The email address or domain that you want to associate with a
configuration set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutEmailIdentityConfigurationSetAttributes in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

