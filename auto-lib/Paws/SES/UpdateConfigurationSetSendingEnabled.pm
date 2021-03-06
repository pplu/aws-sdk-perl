
package Paws::SES::UpdateConfigurationSetSendingEnabled;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationSetSendingEnabled');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::UpdateConfigurationSetSendingEnabled - Arguments for method UpdateConfigurationSetSendingEnabled on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConfigurationSetSendingEnabled on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method UpdateConfigurationSetSendingEnabled.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConfigurationSetSendingEnabled.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # UpdateConfigurationSetReputationMetricsEnabled
    # Set the sending enabled flag for a specific configuration set.
    $email->UpdateConfigurationSetSendingEnabled(
      'ConfigurationSetName' => 'foo',
      'Enabled'              => 1
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/UpdateConfigurationSetSendingEnabled>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set that you want to update.



=head2 B<REQUIRED> Enabled => Bool

Describes whether email sending is enabled or disabled for the
configuration set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConfigurationSetSendingEnabled in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

