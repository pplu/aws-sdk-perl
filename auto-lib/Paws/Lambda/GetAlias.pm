
package Paws::Lambda::GetAlias;
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}/aliases/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::AliasConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetAlias - Arguments for method GetAlias on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAlias on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method GetAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAlias.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To retrieve a Lambda function alias
    # This operation retrieves a Lambda function alias
    my $AliasConfiguration = $lambda->GetAlias(
      {
        'FunctionName' => 'myFunction',
        'Name'         => 'myFunctionAlias'
      }
    );

    # Results:
    my $AliasArn        = $AliasConfiguration->AliasArn;
    my $Description     = $AliasConfiguration->Description;
    my $FunctionVersion = $AliasConfiguration->FunctionVersion;
    my $Name            = $AliasConfiguration->Name;

    # Returns a L<Paws::Lambda::AliasConfiguration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/GetAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionName => Str

The name of the lambda function.

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



=head2 B<REQUIRED> Name => Str

The name of the alias.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAlias in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

