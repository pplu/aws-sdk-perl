
package Paws::S3Control::PutAccessPointPolicy;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has Name => (is => 'ro', isa => 'Str', uri_name => 'name', traits => ['ParamInURI'], required => 1);
  has Policy => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAccessPointPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accesspoint/{name}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::PutAccessPointPolicy - Arguments for method PutAccessPointPolicy on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAccessPointPolicy on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method PutAccessPointPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAccessPointPolicy.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    $s3 -control->PutAccessPointPolicy(
      AccountId => 'MyAccountId',
      Name      => 'MyAccessPointName',
      Policy    => 'MyPolicy',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/PutAccessPointPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The AWS account ID for owner of the bucket associated with the
specified access point.



=head2 B<REQUIRED> Name => Str

The name of the access point that you want to associate with the
specified policy.



=head2 B<REQUIRED> Policy => Str

The policy that you want to apply to the specified access point. For
more information about access point policies, see Managing Data Access
with Amazon S3 Access Points
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-points.html) in
the I<Amazon Simple Storage Service Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAccessPointPolicy in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

