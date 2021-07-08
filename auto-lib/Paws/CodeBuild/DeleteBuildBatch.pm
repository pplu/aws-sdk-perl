
package Paws::CodeBuild::DeleteBuildBatch;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBuildBatch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::DeleteBuildBatchOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::DeleteBuildBatch - Arguments for method DeleteBuildBatch on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBuildBatch on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method DeleteBuildBatch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBuildBatch.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $DeleteBuildBatchOutput = $codebuild->DeleteBuildBatch(
      Id => 'MyNonEmptyString',

    );

    # Results:
    my $BuildsDeleted    = $DeleteBuildBatchOutput->BuildsDeleted;
    my $BuildsNotDeleted = $DeleteBuildBatchOutput->BuildsNotDeleted;
    my $StatusCode       = $DeleteBuildBatchOutput->StatusCode;

    # Returns a L<Paws::CodeBuild::DeleteBuildBatchOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/DeleteBuildBatch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of the batch build to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBuildBatch in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

