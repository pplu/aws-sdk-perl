
package Paws::CloudFormation::BatchDescribeTypeConfigurations;
  use Moose;
  has TypeConfigurationIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::TypeConfigurationIdentifier]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDescribeTypeConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::BatchDescribeTypeConfigurationsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'BatchDescribeTypeConfigurationsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::BatchDescribeTypeConfigurations - Arguments for method BatchDescribeTypeConfigurations on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDescribeTypeConfigurations on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method BatchDescribeTypeConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDescribeTypeConfigurations.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $BatchDescribeTypeConfigurationsOutput =
      $cloudformation->BatchDescribeTypeConfigurations(
      TypeConfigurationIdentifiers => [
        {
          Type    => 'RESOURCE',           # values: RESOURCE, MODULE; OPTIONAL
          TypeArn => 'MyTypeArn',          # max: 1024; OPTIONAL
          TypeConfigurationAlias =>
            'MyTypeConfigurationAlias',    # min: 1, max: 256; OPTIONAL
          TypeConfigurationArn =>
            'MyTypeConfigurationArn',      # max: 1024; OPTIONAL
          TypeName => 'MyTypeName',        # min: 10, max: 204; OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $Errors = $BatchDescribeTypeConfigurationsOutput->Errors;
    my $TypeConfigurations =
      $BatchDescribeTypeConfigurationsOutput->TypeConfigurations;
    my $UnprocessedTypeConfigurations =
      $BatchDescribeTypeConfigurationsOutput->UnprocessedTypeConfigurations;

# Returns a L<Paws::CloudFormation::BatchDescribeTypeConfigurationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/BatchDescribeTypeConfigurations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TypeConfigurationIdentifiers => ArrayRef[L<Paws::CloudFormation::TypeConfigurationIdentifier>]

The list of identifiers for the desired extension configurations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDescribeTypeConfigurations in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

