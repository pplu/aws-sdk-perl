
package Paws::SageMaker::CreateProject;
  use Moose;
  has ProjectDescription => (is => 'ro', isa => 'Str');
  has ProjectName => (is => 'ro', isa => 'Str', required => 1);
  has ServiceCatalogProvisioningDetails => (is => 'ro', isa => 'Paws::SageMaker::ServiceCatalogProvisioningDetails', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateProjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateProject - Arguments for method CreateProject on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProject on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProject.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateProjectOutput = $api . sagemaker->CreateProject(
      ProjectName                       => 'MyProjectEntityName',
      ServiceCatalogProvisioningDetails => {
        ProductId              => 'MyServiceCatalogEntityId', # min: 1, max: 100
        ProvisioningArtifactId => 'MyServiceCatalogEntityId', # min: 1, max: 100
        PathId                 => 'MyServiceCatalogEntityId', # min: 1, max: 100
        ProvisioningParameters => [
          {
            Key => 'MyProvisioningParameterKey',   # min: 1, max: 1000; OPTIONAL
            Value => 'MyProvisioningParameterValue',    # max: 4096; OPTIONAL
          },
          ...
        ],                                              # OPTIONAL
      },
      ProjectDescription => 'MyEntityDescription',      # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',                          # min: 1, max: 128
          Value => 'MyTagValue',                        # max: 256

        },
        ...
      ],                                                # OPTIONAL
    );

    # Results:
    my $ProjectArn = $CreateProjectOutput->ProjectArn;
    my $ProjectId  = $CreateProjectOutput->ProjectId;

    # Returns a L<Paws::SageMaker::CreateProjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateProject>

=head1 ATTRIBUTES


=head2 ProjectDescription => Str

A description for the project.



=head2 B<REQUIRED> ProjectName => Str

The name of the project.



=head2 B<REQUIRED> ServiceCatalogProvisioningDetails => L<Paws::SageMaker::ServiceCatalogProvisioningDetails>

The product ID and provisioning artifact ID to provision a service
catalog. For information, see What is AWS Service Catalog
(https://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html).



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs that you want to use to organize and track
your AWS resource costs. For more information, see Tagging AWS
resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<AWS General Reference Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProject in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

