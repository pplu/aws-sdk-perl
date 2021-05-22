
package Paws::ResourceGroups::GetGroupConfiguration;
  use Moose;
  has Group => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroupConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-group-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::GetGroupConfigurationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::GetGroupConfiguration - Arguments for method GetGroupConfiguration on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGroupConfiguration on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method GetGroupConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGroupConfiguration.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $GetGroupConfigurationOutput = $resource -groups->GetGroupConfiguration(
      Group => 'MyGroupString',    # OPTIONAL
    );

    # Results:
    my $GroupConfiguration = $GetGroupConfigurationOutput->GroupConfiguration;

    # Returns a L<Paws::ResourceGroups::GetGroupConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/GetGroupConfiguration>

=head1 ATTRIBUTES


=head2 Group => Str

The name or the ARN of the resource group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGroupConfiguration in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

