
package Paws::IoT::DeleteAccountAuditConfiguration;
  use Moose;
  has DeleteScheduledAudits => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'deleteScheduledAudits');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccountAuditConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DeleteAccountAuditConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteAccountAuditConfiguration - Arguments for method DeleteAccountAuditConfiguration on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAccountAuditConfiguration on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteAccountAuditConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAccountAuditConfiguration.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DeleteAccountAuditConfigurationResponse =
      $iot->DeleteAccountAuditConfiguration(
      DeleteScheduledAudits => 1,    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteAccountAuditConfiguration>

=head1 ATTRIBUTES


=head2 DeleteScheduledAudits => Bool

If true, all scheduled audits are deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAccountAuditConfiguration in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

