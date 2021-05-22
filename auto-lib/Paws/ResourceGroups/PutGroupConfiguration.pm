
package Paws::ResourceGroups::PutGroupConfiguration;
  use Moose;
  has Configuration => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::GroupConfigurationItem]');
  has Group => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutGroupConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/put-group-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::PutGroupConfigurationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::PutGroupConfiguration - Arguments for method PutGroupConfiguration on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutGroupConfiguration on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method PutGroupConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutGroupConfiguration.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $PutGroupConfigurationOutput = $resource -groups->PutGroupConfiguration(
      Configuration => [
        {
          Type       => 'MyGroupConfigurationType',    # max: 40
          Parameters => [
            {
              Name   => 'MyGroupConfigurationParameterName',   # min: 1, max: 80
              Values => [
                'MyGroupConfigurationParameterValue', ...    # min: 1, max: 256
              ],                                             # OPTIONAL
            },
            ...
          ],                                                 # OPTIONAL
        },
        ...
      ],                                                     # OPTIONAL
      Group => 'MyGroupString',                              # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/PutGroupConfiguration>

=head1 ATTRIBUTES


=head2 Configuration => ArrayRef[L<Paws::ResourceGroups::GroupConfigurationItem>]

The new configuration to associate with the specified group. A
configuration associates the resource group with an AWS service and
specifies how the service can interact with the resources in the group.
A configuration is an array of GroupConfigurationItem elements.

For information about the syntax of a service configuration, see
Service configurations for resource groups
(https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html).

A resource group can contain either a C<Configuration> or a
C<ResourceQuery>, but not both.



=head2 Group => Str

The name or ARN of the resource group with the configuration that you
want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutGroupConfiguration in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

