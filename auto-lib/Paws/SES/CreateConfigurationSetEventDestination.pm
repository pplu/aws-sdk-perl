
package Paws::SES::CreateConfigurationSetEventDestination;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);
  has EventDestination => (is => 'ro', isa => 'Paws::SES::EventDestination', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfigurationSetEventDestination');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::CreateConfigurationSetEventDestinationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateConfigurationSetEventDestinationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::CreateConfigurationSetEventDestination - Arguments for method CreateConfigurationSetEventDestination on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfigurationSetEventDestination on the 
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method CreateConfigurationSetEventDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfigurationSetEventDestination.

As an example:

  $service_obj->CreateConfigurationSetEventDestination(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set that the event destination should be
associated with.



=head2 B<REQUIRED> EventDestination => L<Paws::SES::EventDestination>

An object that describes the AWS service that email sending event
information will be published to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfigurationSetEventDestination in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

