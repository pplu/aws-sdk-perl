
package Paws::SES::UpdateConfigurationSetReputationMetricsEnabled;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationSetReputationMetricsEnabled');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::UpdateConfigurationSetReputationMetricsEnabled - Arguments for method UpdateConfigurationSetReputationMetricsEnabled on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConfigurationSetReputationMetricsEnabled on the 
Amazon Simple Email Service service. Use the attributes of this class
as arguments to method UpdateConfigurationSetReputationMetricsEnabled.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConfigurationSetReputationMetricsEnabled.

As an example:

  $service_obj->UpdateConfigurationSetReputationMetricsEnabled(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set that you want to update.



=head2 B<REQUIRED> Enabled => Bool

Describes whether or not Amazon SES will publish reputation metrics for
the configuration set, such as bounce and complaint rates, to Amazon
CloudWatch.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConfigurationSetReputationMetricsEnabled in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
