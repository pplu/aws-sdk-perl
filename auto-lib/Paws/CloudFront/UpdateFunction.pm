
package Paws::CloudFront::UpdateFunction;
  use Moose;
  has FunctionCode => (is => 'ro', isa => 'Str', required => 1);
  has FunctionConfig => (is => 'ro', isa => 'Paws::CloudFront::FunctionConfig', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader'], required => 1);
  has Name => (is => 'ro', isa => 'Str', uri_name => 'Name', traits => ['ParamInURI'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFunction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/function/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateFunctionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'UpdateFunctionRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateFunction - Arguments for method UpdateFunction on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFunction2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdateFunction2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFunction2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $UpdateFunctionResult = $cloudfront->UpdateFunction(
      FunctionCode   => 'BlobFunctionBlob',
      FunctionConfig => {
        Comment => 'Mystring',
        Runtime => 'cloudfront-js-1.0',    # values: cloudfront-js-1.0

      },
      IfMatch => 'Mystring',
      Name    => 'Mystring',

    );

    # Results:
    my $ETag            = $UpdateFunctionResult->ETag;
    my $FunctionSummary = $UpdateFunctionResult->FunctionSummary;

    # Returns a L<Paws::CloudFront::UpdateFunctionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/UpdateFunction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionCode => Str

The function code. For more information about writing a CloudFront
function, see Writing function code for CloudFront Functions
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html)
in the I<Amazon CloudFront Developer Guide>.



=head2 B<REQUIRED> FunctionConfig => L<Paws::CloudFront::FunctionConfig>

Configuration information about the function.



=head2 B<REQUIRED> IfMatch => Str

The current version (C<ETag> value) of the function that you are
updating, which you can get using C<DescribeFunction>.



=head2 B<REQUIRED> Name => Str

The name of the function that you are updating.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFunction2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

