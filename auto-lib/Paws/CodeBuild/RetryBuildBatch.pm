
package Paws::CodeBuild::RetryBuildBatch;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' );
  has IdempotencyToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'idempotencyToken' );
  has RetryType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'retryType' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RetryBuildBatch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::RetryBuildBatchOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::RetryBuildBatch - Arguments for method RetryBuildBatch on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RetryBuildBatch on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method RetryBuildBatch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RetryBuildBatch.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $RetryBuildBatchOutput = $codebuild->RetryBuildBatch(
      Id               => 'MyNonEmptyString',    # OPTIONAL
      IdempotencyToken => 'MyString',            # OPTIONAL
      RetryType        => 'RETRY_ALL_BUILDS',    # OPTIONAL
    );

    # Results:
    my $BuildBatch = $RetryBuildBatchOutput->BuildBatch;

    # Returns a L<Paws::CodeBuild::RetryBuildBatchOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/RetryBuildBatch>

=head1 ATTRIBUTES


=head2 Id => Str

Specifies the identifier of the batch build to restart.



=head2 IdempotencyToken => Str

A unique, case sensitive identifier you provide to ensure the
idempotency of the C<RetryBuildBatch> request. The token is included in
the C<RetryBuildBatch> request and is valid for five minutes. If you
repeat the C<RetryBuildBatch> request with the same token, but change a
parameter, CodeBuild returns a parameter mismatch error.



=head2 RetryType => Str

Specifies the type of retry to perform.

Valid values are: C<"RETRY_ALL_BUILDS">, C<"RETRY_FAILED_BUILDS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RetryBuildBatch in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

