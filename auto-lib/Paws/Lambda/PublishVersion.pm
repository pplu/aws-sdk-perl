
package Paws::Lambda::PublishVersion;
  use Moose;
  has CodeSha256 => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PublishVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::FunctionConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::PublishVersion - Arguments for method PublishVersion on Paws::Lambda

=head1 DESCRIPTION

This class represents the parameters used for calling the method PublishVersion on the 
AWS Lambda service. Use the attributes of this class
as arguments to method PublishVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PublishVersion.

As an example:

  $service_obj->PublishVersion(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CodeSha256 => Str

The SHA256 hash of the deployment package you want to publish. This
provides validation on the code you are publishing. If you provide this
parameter value must match the SHA256 of the $LATEST version for the
publication to succeed.



=head2 Description => Str

The description for the version you are publishing. If not provided,
AWS Lambda copies the description from the $LATEST version.



=head2 B<REQUIRED> FunctionName => Str

The Lambda function name. You can specify a function name (for example,
C<Thumbnail>) or you can specify Amazon Resource Name (ARN) of the
function (for example,
C<arn:aws:lambda:us-west-2:account-id:function:ThumbNail>). AWS Lambda
also allows you to specify a partial ARN (for example,
C<account-id:Thumbnail>). Note that the length constraint applies only
to the ARN. If you specify only the function name, it is limited to 64
characters in length.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PublishVersion in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

