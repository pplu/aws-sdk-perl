
package Paws::CodeBuild::RetryBuild;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' );
  has IdempotencyToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'idempotencyToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RetryBuild');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::RetryBuildOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::RetryBuild - Arguments for method RetryBuild on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RetryBuild on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method RetryBuild.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RetryBuild.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $RetryBuildOutput = $codebuild->RetryBuild(
      Id               => 'MyNonEmptyString',    # OPTIONAL
      IdempotencyToken => 'MyString',            # OPTIONAL
    );

    # Results:
    my $Build = $RetryBuildOutput->Build;

    # Returns a L<Paws::CodeBuild::RetryBuildOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/RetryBuild>

=head1 ATTRIBUTES


=head2 Id => Str

Specifies the identifier of the build to restart.



=head2 IdempotencyToken => Str

A unique, case sensitive identifier you provide to ensure the
idempotency of the C<RetryBuild> request. The token is included in the
C<RetryBuild> request and is valid for five minutes. If you repeat the
C<RetryBuild> request with the same token, but change a parameter,
CodeBuild returns a parameter mismatch error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RetryBuild in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

