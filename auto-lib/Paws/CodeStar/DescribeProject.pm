
package Paws::CodeStar::DescribeProject;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStar::DescribeProjectResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::DescribeProject - Arguments for method DescribeProject on L<Paws::CodeStar>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProject on the
L<AWS CodeStar|Paws::CodeStar> service. Use the attributes of this class
as arguments to method DescribeProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProject.

=head1 SYNOPSIS

    my $codestar = Paws->service('CodeStar');
    my $DescribeProjectResult = $codestar->DescribeProject(
      Id => 'MyProjectId',

    );

    # Results:
    my $Arn                = $DescribeProjectResult->Arn;
    my $ClientRequestToken = $DescribeProjectResult->ClientRequestToken;
    my $CreatedTimeStamp   = $DescribeProjectResult->CreatedTimeStamp;
    my $Description        = $DescribeProjectResult->Description;
    my $Id                 = $DescribeProjectResult->Id;
    my $Name               = $DescribeProjectResult->Name;
    my $ProjectTemplateId  = $DescribeProjectResult->ProjectTemplateId;
    my $StackId            = $DescribeProjectResult->StackId;
    my $Status             = $DescribeProjectResult->Status;

    # Returns a L<Paws::CodeStar::DescribeProjectResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar/DescribeProject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProject in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

