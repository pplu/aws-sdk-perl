
package Paws::Discovery::ExportConfigurations;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::ExportConfigurationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ExportConfigurations - Arguments for method ExportConfigurations on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportConfigurations on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method ExportConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportConfigurations.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $ExportConfigurationsResponse = $discovery->ExportConfigurations();

    # Results:
    my $ExportId = $ExportConfigurationsResponse->ExportId;

    # Returns a L<Paws::Discovery::ExportConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/ExportConfigurations>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportConfigurations in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

