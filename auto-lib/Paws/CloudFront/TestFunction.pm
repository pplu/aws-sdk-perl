
package Paws::CloudFront::TestFunction;
  use Moose;
  has EventObject => (is => 'ro', isa => 'Str', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader'], required => 1);
  has Name => (is => 'ro', isa => 'Str', uri_name => 'Name', traits => ['ParamInURI'], required => 1);
  has Stage => (is => 'ro', isa => 'Str');


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestFunction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/function/{Name}/test');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::TestFunctionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'TestFunctionRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::TestFunction - Arguments for method TestFunction on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestFunction2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method TestFunction2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestFunction2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $TestFunctionResult = $cloudfront->TestFunction(
      EventObject => 'BlobFunctionEventObject',
      IfMatch     => 'Mystring',
      Name        => 'Mystring',
      Stage       => 'DEVELOPMENT',               # OPTIONAL
    );

    # Results:
    my $TestResult = $TestFunctionResult->TestResult;

    # Returns a L<Paws::CloudFront::TestFunctionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/TestFunction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventObject => Str

The event object to test the function with. For more information about
the structure of the event object, see Testing functions
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function)
in the I<Amazon CloudFront Developer Guide>.



=head2 B<REQUIRED> IfMatch => Str

The current version (C<ETag> value) of the function that you are
testing, which you can get using C<DescribeFunction>.



=head2 B<REQUIRED> Name => Str

The name of the function that you are testing.



=head2 Stage => Str

The stage of the function that you are testing, either C<DEVELOPMENT>
or C<LIVE>.

Valid values are: C<"DEVELOPMENT">, C<"LIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestFunction2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

