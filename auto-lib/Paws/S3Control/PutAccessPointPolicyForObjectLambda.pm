
package Paws::S3Control::PutAccessPointPolicyForObjectLambda;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has Name => (is => 'ro', isa => 'Str', uri_name => 'name', traits => ['ParamInURI'], required => 1);
  has Policy => (is => 'ro', isa => 'Str', required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAccessPointPolicyForObjectLambda');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accesspointforobjectlambda/{name}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'PutAccessPointPolicyForObjectLambdaRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://awss3control.amazonaws.com/doc/2018-08-20/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::PutAccessPointPolicyForObjectLambda - Arguments for method PutAccessPointPolicyForObjectLambda on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAccessPointPolicyForObjectLambda on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method PutAccessPointPolicyForObjectLambda.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAccessPointPolicyForObjectLambda.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    $s3 -control->PutAccessPointPolicyForObjectLambda(
      AccountId => 'MyAccountId',
      Name      => 'MyObjectLambdaAccessPointName',
      Policy    => 'MyObjectLambdaPolicy',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/PutAccessPointPolicyForObjectLambda>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The account ID for the account that owns the specified Object Lambda
Access Point.



=head2 B<REQUIRED> Name => Str

The name of the Object Lambda Access Point.



=head2 B<REQUIRED> Policy => Str

Object Lambda Access Point resource policy document.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAccessPointPolicyForObjectLambda in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

