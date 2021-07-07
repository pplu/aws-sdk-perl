
package Paws::Connect::AssociateLambdaFunction;
  use Moose;
  has FunctionArn => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateLambdaFunction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance/{InstanceId}/lambda-function');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::AssociateLambdaFunction - Arguments for method AssociateLambdaFunction on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateLambdaFunction on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method AssociateLambdaFunction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateLambdaFunction.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->AssociateLambdaFunction(
      FunctionArn => 'MyFunctionArn',
      InstanceId  => 'MyInstanceId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/AssociateLambdaFunction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionArn => Str

The Amazon Resource Name (ARN) for the Lambda function being
associated. Maximum number of characters allowed is 140.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateLambdaFunction in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

