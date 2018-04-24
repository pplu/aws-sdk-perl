
package Paws::SES::DeleteConfigurationSetTrackingOptions;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConfigurationSetTrackingOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::DeleteConfigurationSetTrackingOptionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteConfigurationSetTrackingOptionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DeleteConfigurationSetTrackingOptions - Arguments for method DeleteConfigurationSetTrackingOptions on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConfigurationSetTrackingOptions on the 
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method DeleteConfigurationSetTrackingOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConfigurationSetTrackingOptions.

As an example:

  $service_obj->DeleteConfigurationSetTrackingOptions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set from which you want to delete the
tracking options.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConfigurationSetTrackingOptions in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

