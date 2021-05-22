
package Paws::S3Outposts::CreateEndpoint;
  use Moose;
  has OutpostId => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroupId => (is => 'ro', isa => 'Str', required => 1);
  has SubnetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/S3Outposts/CreateEndpoint');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Outposts::CreateEndpointResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Outposts::CreateEndpoint - Arguments for method CreateEndpoint on L<Paws::S3Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEndpoint on the
L<Amazon S3 on Outposts|Paws::S3Outposts> service. Use the attributes of this class
as arguments to method CreateEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEndpoint.

=head1 SYNOPSIS

    my $s3-outposts = Paws->service('S3Outposts');
    my $CreateEndpointResult = $s3 -outposts->CreateEndpoint(
      OutpostId       => 'MyOutpostId',
      SecurityGroupId => 'MySecurityGroupId',
      SubnetId        => 'MySubnetId',

    );

    # Results:
    my $EndpointArn = $CreateEndpointResult->EndpointArn;

    # Returns a L<Paws::S3Outposts::CreateEndpointResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-outposts/CreateEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OutpostId => Str

The ID of the AWS Outpost.



=head2 B<REQUIRED> SecurityGroupId => Str

The ID of the security group to use with the endpoint.



=head2 B<REQUIRED> SubnetId => Str

The ID of the subnet in the selected VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEndpoint in L<Paws::S3Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

