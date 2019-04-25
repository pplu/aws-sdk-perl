
package Paws::PinpointEmail::DeleteConfigurationSet;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConfigurationSetName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConfigurationSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/email/configuration-sets/{ConfigurationSetName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointEmail::DeleteConfigurationSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::DeleteConfigurationSet - Arguments for method DeleteConfigurationSet on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConfigurationSet on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method DeleteConfigurationSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConfigurationSet.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $DeleteConfigurationSetResponse = $email->DeleteConfigurationSet(
      ConfigurationSetName => 'MyConfigurationSetName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/DeleteConfigurationSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConfigurationSet in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

