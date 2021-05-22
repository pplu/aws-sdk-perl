
package Paws::CloudFront::GetFunction;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', uri_name => 'Name', traits => ['ParamInURI'], required => 1);
  has Stage => (is => 'ro', isa => 'Str', query_name => 'Stage', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFunction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/function/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::GetFunctionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetFunction - Arguments for method GetFunction on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFunction2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method GetFunction2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFunction2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $GetFunctionResult = $cloudfront->GetFunction(
      Name  => 'Mystring',
      Stage => 'DEVELOPMENT',    # OPTIONAL
    );

    # Results:
    my $ContentType  = $GetFunctionResult->ContentType;
    my $ETag         = $GetFunctionResult->ETag;
    my $FunctionCode = $GetFunctionResult->FunctionCode;

    # Returns a L<Paws::CloudFront::GetFunctionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/GetFunction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the function whose code you are getting.



=head2 Stage => Str

The functionE<rsquo>s stage, either C<DEVELOPMENT> or C<LIVE>.

Valid values are: C<"DEVELOPMENT">, C<"LIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFunction2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

