
package Paws::ApiGateway::CreateVpcLink;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has TargetArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'targetArns', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpcLink');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/vpclinks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::VpcLink');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateVpcLink - Arguments for method CreateVpcLink on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpcLink on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method CreateVpcLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpcLink.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $VpcLink = $apigateway->CreateVpcLink(
      Name        => 'MyString',
      TargetArns  => [ 'MyString', ... ],
      Description => 'MyString',            # OPTIONAL
    );

    # Results:
    my $Description   = $VpcLink->Description;
    my $Id            = $VpcLink->Id;
    my $Name          = $VpcLink->Name;
    my $Status        = $VpcLink->Status;
    my $StatusMessage = $VpcLink->StatusMessage;
    my $TargetArns    = $VpcLink->TargetArns;

    # Returns a L<Paws::ApiGateway::VpcLink> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateVpcLink>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the VPC link.



=head2 B<REQUIRED> Name => Str

[Required] The name used to label and identify the VPC link.



=head2 B<REQUIRED> TargetArns => ArrayRef[Str|Undef]

[Required] The ARNs of network load balancers of the VPC targeted by
the VPC link. The network load balancers must be owned by the same AWS
account of the API owner.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpcLink in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

