
package Paws::CloudFront::CreateFunction;
  use Moose;
  has FunctionCode => (is => 'ro', isa => 'Str', required => 1);
  has FunctionConfig => (is => 'ro', isa => 'Paws::CloudFront::FunctionConfig', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFunction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/function');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateFunctionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'CreateFunctionRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateFunction - Arguments for method CreateFunction on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFunction2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateFunction2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFunction2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateFunctionResult = $cloudfront->CreateFunction(
      FunctionCode   => 'BlobFunctionBlob',
      FunctionConfig => {
        Comment => 'Mystring',
        Runtime => 'cloudfront-js-1.0',    # values: cloudfront-js-1.0

      },
      Name => 'MyFunctionName',

    );

    # Results:
    my $ETag            = $CreateFunctionResult->ETag;
    my $FunctionSummary = $CreateFunctionResult->FunctionSummary;
    my $Location        = $CreateFunctionResult->Location;

    # Returns a L<Paws::CloudFront::CreateFunctionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateFunction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionCode => Str

The function code. For more information about writing a CloudFront
function, see Writing function code for CloudFront Functions
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html)
in the I<Amazon CloudFront Developer Guide>.



=head2 B<REQUIRED> FunctionConfig => L<Paws::CloudFront::FunctionConfig>

Configuration information about the function, including an optional
comment and the functionE<rsquo>s runtime.



=head2 B<REQUIRED> Name => Str

A name to identify the function.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFunction2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

