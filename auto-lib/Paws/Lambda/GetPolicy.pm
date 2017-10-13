
package Paws::Lambda::GetPolicy;
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has Qualifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Qualifier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::GetPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetPolicy - Arguments for method GetPolicy on Paws::Lambda

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPolicy on the 
AWS Lambda service. Use the attributes of this class
as arguments to method GetPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPolicy.

As an example:

  $service_obj->GetPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionName => Str

Function name whose resource policy you want to retrieve.

You can specify the function name (for example, C<Thumbnail>) or you
can specify Amazon Resource Name (ARN) of the function (for example,
C<arn:aws:lambda:us-west-2:account-id:function:ThumbNail>). If you are
using versioning, you can also provide a qualified function ARN (ARN
that is qualified with function version or alias name as suffix). AWS
Lambda also allows you to specify only the function name with the
account ID qualifier (for example, C<account-id:Thumbnail>). Note that
the length constraint applies only to the ARN. If you specify only the
function name, it is limited to 64 characters in length.



=head2 Qualifier => Str

You can specify this optional query parameter to specify a function
version or an alias name in which case this API will return all
permissions associated with the specific qualified ARN. If you don't
provide this parameter, the API will return permissions that apply to
the unqualified function ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPolicy in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

