
package Paws::Route53::DeleteVPCAssociationAuthorization;
  use Moose;
  has HostedZoneId => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has VPC => (is => 'ro', isa => 'Paws::Route53::VPC', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVPCAssociationAuthorization');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzone/{Id}/deauthorizevpcassociation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::DeleteVPCAssociationAuthorizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::DeleteVPCAssociationAuthorization - Arguments for method DeleteVPCAssociationAuthorization on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVPCAssociationAuthorization on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method DeleteVPCAssociationAuthorization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVPCAssociationAuthorization.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $DeleteVPCAssociationAuthorizationResponse =
      $route53->DeleteVPCAssociationAuthorization(
      HostedZoneId => 'MyResourceId',
      VPC          => {
        VPCId     => 'MyVPCId',    # max: 1024; OPTIONAL
        VPCRegion => 'us-east-1'
        , # values: us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-west-2, eu-west-3, eu-central-1, ap-southeast-1, ap-southeast-2, ap-south-1, ap-northeast-1, ap-northeast-2, ap-northeast-3, eu-north-1, sa-east-1, ca-central-1, cn-north-1min: 1, max: 64; OPTIONAL
      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/DeleteVPCAssociationAuthorization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneId => Str

When removing authorization to associate a VPC that was created by one
AWS account with a hosted zone that was created with a different AWS
account, the ID of the hosted zone.



=head2 B<REQUIRED> VPC => L<Paws::Route53::VPC>

When removing authorization to associate a VPC that was created by one
AWS account with a hosted zone that was created with a different AWS
account, a complex type that includes the ID and region of the VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVPCAssociationAuthorization in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

