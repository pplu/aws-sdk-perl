
package Paws::ImageBuilder::DeleteDistributionConfiguration;
  use Moose;
  has DistributionConfigurationArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'distributionConfigurationArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDistributionConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteDistributionConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::DeleteDistributionConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::DeleteDistributionConfiguration - Arguments for method DeleteDistributionConfiguration on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDistributionConfiguration on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method DeleteDistributionConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDistributionConfiguration.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $DeleteDistributionConfigurationResponse =
      $imagebuilder->DeleteDistributionConfiguration(
      DistributionConfigurationArn => 'MyDistributionConfigurationArn',

      );

    # Results:
    my $DistributionConfigurationArn =
      $DeleteDistributionConfigurationResponse->DistributionConfigurationArn;
    my $RequestId = $DeleteDistributionConfigurationResponse->RequestId;

# Returns a L<Paws::ImageBuilder::DeleteDistributionConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/DeleteDistributionConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DistributionConfigurationArn => Str

The Amazon Resource Name (ARN) of the distribution configuration to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDistributionConfiguration in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

