
package Paws::S3Control::CreateAccessPoint;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', uri_name => 'name', traits => ['ParamInURI'], required => 1);
  has PublicAccessBlockConfiguration => (is => 'ro', isa => 'Paws::S3Control::PublicAccessBlockConfiguration');
  has VpcConfiguration => (is => 'ro', isa => 'Paws::S3Control::VpcConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccessPoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accesspoint/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::CreateAccessPoint - Arguments for method CreateAccessPoint on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAccessPoint on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method CreateAccessPoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAccessPoint.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    $s3 -control->CreateAccessPoint(
      AccountId                      => 'MyAccountId',
      Bucket                         => 'MyBucketName',
      Name                           => 'MyAccessPointName',
      PublicAccessBlockConfiguration => {
        BlockPublicAcls       => 1,    # OPTIONAL
        BlockPublicPolicy     => 1,    # OPTIONAL
        IgnorePublicAcls      => 1,    # OPTIONAL
        RestrictPublicBuckets => 1,    # OPTIONAL
      },    # OPTIONAL
      VpcConfiguration => {
        VpcId => 'MyVpcId',    # min: 1, max: 1024

      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/CreateAccessPoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The AWS account ID for the owner of the bucket for which you want to
create an access point.



=head2 B<REQUIRED> Bucket => Str

The name of the bucket that you want to associate this access point
with.



=head2 B<REQUIRED> Name => Str

The name you want to assign to this access point.



=head2 PublicAccessBlockConfiguration => L<Paws::S3Control::PublicAccessBlockConfiguration>





=head2 VpcConfiguration => L<Paws::S3Control::VpcConfiguration>

If you include this field, Amazon S3 restricts access to this access
point to requests from the specified Virtual Private Cloud (VPC).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAccessPoint in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

