
package Paws::ApiGateway::GetVpcLink;
  use Moose;
  has VpcLinkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vpclink_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetVpcLink');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/vpclinks/{vpclink_id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::VpcLink');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetVpcLink - Arguments for method GetVpcLink on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetVpcLink on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetVpcLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetVpcLink.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $VpcLink = $apigateway->GetVpcLink(
      VpcLinkId => 'MyString',

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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetVpcLink>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VpcLinkId => Str

[Required] The identifier of the VpcLink. It is used in an Integration
to reference this VpcLink.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetVpcLink in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

