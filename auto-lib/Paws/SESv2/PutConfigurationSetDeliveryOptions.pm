
package Paws::SESv2::PutConfigurationSetDeliveryOptions;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SESv2::Types qw//;
  has ConfigurationSetName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SendingPoolName => (is => 'ro', isa => Str, predicate => 1);
  has TlsPolicy => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutConfigurationSetDeliveryOptions');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/email/configuration-sets/{ConfigurationSetName}/delivery-options');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SESv2::PutConfigurationSetDeliveryOptionsResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ConfigurationSetName' => 'ConfigurationSetName'
                  },
  'IsRequired' => {
                    'ConfigurationSetName' => 1
                  },
  'types' => {
               'ConfigurationSetName' => {
                                           'type' => 'Str'
                                         },
               'TlsPolicy' => {
                                'type' => 'Str'
                              },
               'SendingPoolName' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::PutConfigurationSetDeliveryOptions - Arguments for method PutConfigurationSetDeliveryOptions on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutConfigurationSetDeliveryOptions on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method PutConfigurationSetDeliveryOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutConfigurationSetDeliveryOptions.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $PutConfigurationSetDeliveryOptionsResponse =
      $email->PutConfigurationSetDeliveryOptions(
      ConfigurationSetName => 'MyConfigurationSetName',
      SendingPoolName      => 'MySendingPoolName',        # OPTIONAL
      TlsPolicy            => 'REQUIRE',                  # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutConfigurationSetDeliveryOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set that you want to associate with a
dedicated IP pool.



=head2 SendingPoolName => Str

The name of the dedicated IP pool that you want to associate with the
configuration set.



=head2 TlsPolicy => Str

Specifies whether messages that use the configuration set are required
to use Transport Layer Security (TLS). If the value is C<Require>,
messages are only delivered if a TLS connection can be established. If
the value is C<Optional>, messages can be delivered in plain text if a
TLS connection can't be established.

Valid values are: C<"REQUIRE">, C<"OPTIONAL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutConfigurationSetDeliveryOptions in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

