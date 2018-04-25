
package Paws::Lambda::RemovePermission;
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has Qualifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Qualifier');
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'RevisionId');
  has StatementId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'StatementId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemovePermission');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}/policy/{StatementId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::RemovePermission - Arguments for method RemovePermission on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemovePermission on the 
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method RemovePermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemovePermission.

As an example:

  $service_obj->RemovePermission(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionName => Str

Lambda function whose resource policy you want to remove a permission
from.

You can specify a function name (for example, C<Thumbnail>) or you can
specify Amazon Resource Name (ARN) of the function (for example,
C<arn:aws:lambda:us-west-2:account-id:function:ThumbNail>). AWS Lambda
also allows you to specify a partial ARN (for example,
C<account-id:Thumbnail>). Note that the length constraint applies only
to the ARN. If you specify only the function name, it is limited to 64
characters in length.



=head2 Qualifier => Str

You can specify this optional parameter to remove permission associated
with a specific function version or function alias. If you don't
specify this parameter, the API removes permission associated with the
unqualified function ARN.



=head2 RevisionId => Str

An optional value you can use to ensure you are updating the latest
update of the function version or alias. If the C<RevisionID> you pass
doesn't match the latest C<RevisionId> of the function or alias, it
will fail with an error message, advising you to retrieve the latest
function version or alias C<RevisionID> using either or .



=head2 B<REQUIRED> StatementId => Str

Statement ID of the permission to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemovePermission in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

