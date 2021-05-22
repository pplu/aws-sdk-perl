
package Paws::Lambda::PutFunctionCodeSigningConfig;
  use Moose;
  has CodeSigningConfigArn => (is => 'ro', isa => 'Str', required => 1);
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutFunctionCodeSigningConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-06-30/functions/{FunctionName}/code-signing-config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::PutFunctionCodeSigningConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::PutFunctionCodeSigningConfig - Arguments for method PutFunctionCodeSigningConfig on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutFunctionCodeSigningConfig on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method PutFunctionCodeSigningConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutFunctionCodeSigningConfig.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    my $PutFunctionCodeSigningConfigResponse =
      $lambda->PutFunctionCodeSigningConfig(
      CodeSigningConfigArn => 'MyCodeSigningConfigArn',
      FunctionName         => 'MyFunctionName',

      );

    # Results:
    my $CodeSigningConfigArn =
      $PutFunctionCodeSigningConfigResponse->CodeSigningConfigArn;
    my $FunctionName = $PutFunctionCodeSigningConfigResponse->FunctionName;

    # Returns a L<Paws::Lambda::PutFunctionCodeSigningConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/PutFunctionCodeSigningConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeSigningConfigArn => Str

The The Amazon Resource Name (ARN) of the code signing configuration.



=head2 B<REQUIRED> FunctionName => Str

The name of the Lambda function.

B<Name formats>

=over

=item *

B<Function name> - C<MyFunction>.

=item *

B<Function ARN> -
C<arn:aws:lambda:us-west-2:123456789012:function:MyFunction>.

=item *

B<Partial ARN> - C<123456789012:function:MyFunction>.

=back

The length constraint applies only to the full ARN. If you specify only
the function name, it is limited to 64 characters in length.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutFunctionCodeSigningConfig in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

