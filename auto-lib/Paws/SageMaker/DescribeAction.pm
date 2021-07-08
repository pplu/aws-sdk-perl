
package Paws::SageMaker::DescribeAction;
  use Moose;
  has ActionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeActionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeAction - Arguments for method DescribeAction on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAction on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAction.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeActionResponse = $api . sagemaker->DescribeAction(
      ActionName => 'MyExperimentEntityName',

    );

    # Results:
    my $ActionArn          = $DescribeActionResponse->ActionArn;
    my $ActionName         = $DescribeActionResponse->ActionName;
    my $ActionType         = $DescribeActionResponse->ActionType;
    my $CreatedBy          = $DescribeActionResponse->CreatedBy;
    my $CreationTime       = $DescribeActionResponse->CreationTime;
    my $Description        = $DescribeActionResponse->Description;
    my $LastModifiedBy     = $DescribeActionResponse->LastModifiedBy;
    my $LastModifiedTime   = $DescribeActionResponse->LastModifiedTime;
    my $MetadataProperties = $DescribeActionResponse->MetadataProperties;
    my $Properties         = $DescribeActionResponse->Properties;
    my $Source             = $DescribeActionResponse->Source;
    my $Status             = $DescribeActionResponse->Status;

    # Returns a L<Paws::SageMaker::DescribeActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionName => Str

The name of the action to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAction in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

