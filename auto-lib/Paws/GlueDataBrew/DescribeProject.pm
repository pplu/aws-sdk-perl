
package Paws::GlueDataBrew::DescribeProject;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::DescribeProjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::DescribeProject - Arguments for method DescribeProject on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProject on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method DescribeProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProject.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $DescribeProjectResponse = $databrew->DescribeProject(
      Name => 'MyProjectName',

    );

    # Results:
    my $CreateDate       = $DescribeProjectResponse->CreateDate;
    my $CreatedBy        = $DescribeProjectResponse->CreatedBy;
    my $DatasetName      = $DescribeProjectResponse->DatasetName;
    my $LastModifiedBy   = $DescribeProjectResponse->LastModifiedBy;
    my $LastModifiedDate = $DescribeProjectResponse->LastModifiedDate;
    my $Name             = $DescribeProjectResponse->Name;
    my $OpenDate         = $DescribeProjectResponse->OpenDate;
    my $OpenedBy         = $DescribeProjectResponse->OpenedBy;
    my $RecipeName       = $DescribeProjectResponse->RecipeName;
    my $ResourceArn      = $DescribeProjectResponse->ResourceArn;
    my $RoleArn          = $DescribeProjectResponse->RoleArn;
    my $Sample           = $DescribeProjectResponse->Sample;
    my $SessionStatus    = $DescribeProjectResponse->SessionStatus;
    my $Tags             = $DescribeProjectResponse->Tags;

    # Returns a L<Paws::GlueDataBrew::DescribeProjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/DescribeProject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the project to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProject in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

