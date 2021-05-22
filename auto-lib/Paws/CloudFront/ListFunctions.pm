
package Paws::CloudFront::ListFunctions;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', query_name => 'Marker', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'MaxItems', traits => ['ParamInQuery']);
  has Stage => (is => 'ro', isa => 'Str', query_name => 'Stage', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFunctions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/function');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListFunctionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListFunctions - Arguments for method ListFunctions on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFunctions2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method ListFunctions2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFunctions2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $ListFunctionsResult = $cloudfront->ListFunctions(
      Marker   => 'Mystring',       # OPTIONAL
      MaxItems => 'Mystring',       # OPTIONAL
      Stage    => 'DEVELOPMENT',    # OPTIONAL
    );

    # Results:
    my $FunctionList = $ListFunctionsResult->FunctionList;

    # Returns a L<Paws::CloudFront::ListFunctionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/ListFunctions>

=head1 ATTRIBUTES


=head2 Marker => Str

Use this field when paginating results to indicate where to begin in
your list of functions. The response includes functions in the list
that occur after the marker. To get the next page of the list, set this
fieldE<rsquo>s value to the value of C<NextMarker> from the current
pageE<rsquo>s response.



=head2 MaxItems => Str

The maximum number of functions that you want in the response.



=head2 Stage => Str

An optional filter to return only the functions that are in the
specified stage, either C<DEVELOPMENT> or C<LIVE>.

Valid values are: C<"DEVELOPMENT">, C<"LIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFunctions2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

