
package Paws::Lambda::PublishVersion;
  use Moose;
  has CodeSha256 => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has RevisionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PublishVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::FunctionConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::PublishVersion - Arguments for method PublishVersion on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PublishVersion on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method PublishVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PublishVersion.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To publish a version of a Lambda function
    # This operation publishes a version of a Lambda function
    my $FunctionConfiguration = $lambda->PublishVersion(
      {
        'CodeSha256'   => '',
        'Description'  => '',
        'FunctionName' => 'myFunction'
      }
    );

    # Results:
    my $CodeSha256   = $FunctionConfiguration->CodeSha256;
    my $CodeSize     = $FunctionConfiguration->CodeSize;
    my $Description  = $FunctionConfiguration->Description;
    my $FunctionArn  = $FunctionConfiguration->FunctionArn;
    my $FunctionName = $FunctionConfiguration->FunctionName;
    my $Handler      = $FunctionConfiguration->Handler;
    my $LastModified = $FunctionConfiguration->LastModified;
    my $MemorySize   = $FunctionConfiguration->MemorySize;
    my $Role         = $FunctionConfiguration->Role;
    my $Runtime      = $FunctionConfiguration->Runtime;
    my $Timeout      = $FunctionConfiguration->Timeout;
    my $Version      = $FunctionConfiguration->Version;
    my $VpcConfig    = $FunctionConfiguration->VpcConfig;

    # Returns a L<Paws::Lambda::FunctionConfiguration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/PublishVersion>

=head1 ATTRIBUTES


=head2 CodeSha256 => Str

Only publish a version if the hash matches the value specified. Use
this option to avoid publishing a version if the function code has
changed since you last updated it. You can get the hash for the version
you uploaded from the output of UpdateFunctionCode.



=head2 Description => Str

Specify a description for the version to override the description in
the function configuration.



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



=head2 RevisionId => Str

Only update the function if the revision ID matches the ID specified.
Use this option to avoid publishing a version if the function
configuration has changed since you last updated it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PublishVersion in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

