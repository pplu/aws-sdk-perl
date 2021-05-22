
package Paws::SageMaker::DescribeArtifact;
  use Moose;
  has ArtifactArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeArtifact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeArtifactResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeArtifact - Arguments for method DescribeArtifact on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeArtifact on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeArtifact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeArtifact.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeArtifactResponse = $api . sagemaker->DescribeArtifact(
      ArtifactArn => 'MyArtifactArn',

    );

    # Results:
    my $ArtifactArn        = $DescribeArtifactResponse->ArtifactArn;
    my $ArtifactName       = $DescribeArtifactResponse->ArtifactName;
    my $ArtifactType       = $DescribeArtifactResponse->ArtifactType;
    my $CreatedBy          = $DescribeArtifactResponse->CreatedBy;
    my $CreationTime       = $DescribeArtifactResponse->CreationTime;
    my $LastModifiedBy     = $DescribeArtifactResponse->LastModifiedBy;
    my $LastModifiedTime   = $DescribeArtifactResponse->LastModifiedTime;
    my $MetadataProperties = $DescribeArtifactResponse->MetadataProperties;
    my $Properties         = $DescribeArtifactResponse->Properties;
    my $Source             = $DescribeArtifactResponse->Source;

    # Returns a L<Paws::SageMaker::DescribeArtifactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeArtifact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArtifactArn => Str

The Amazon Resource Name (ARN) of the artifact to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeArtifact in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

