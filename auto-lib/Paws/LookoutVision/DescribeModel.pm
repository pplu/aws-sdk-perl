
package Paws::LookoutVision::DescribeModel;
  use Moose;
  has ModelVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'modelVersion', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-11-20/projects/{projectName}/models/{modelVersion}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutVision::DescribeModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::DescribeModel - Arguments for method DescribeModel on L<Paws::LookoutVision>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeModel on the
L<Amazon Lookout for Vision|Paws::LookoutVision> service. Use the attributes of this class
as arguments to method DescribeModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeModel.

=head1 SYNOPSIS

    my $lookoutvision = Paws->service('LookoutVision');
    my $DescribeModelResponse = $lookoutvision->DescribeModel(
      ModelVersion => 'MyModelVersion',
      ProjectName  => 'MyProjectName',

    );

    # Results:
    my $ModelDescription = $DescribeModelResponse->ModelDescription;

    # Returns a L<Paws::LookoutVision::DescribeModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutvision/DescribeModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelVersion => Str

The version of the model that you want to describe.



=head2 B<REQUIRED> ProjectName => Str

The project that contains the version of a model that you want to
describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeModel in L<Paws::LookoutVision>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

