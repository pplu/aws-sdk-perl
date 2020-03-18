
package Paws::S3Control::GetAccessPoint;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has Name => (is => 'ro', isa => 'Str', uri_name => 'name', traits => ['ParamInURI'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccessPoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accesspoint/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::GetAccessPointResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetAccessPoint - Arguments for method GetAccessPoint on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccessPoint on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method GetAccessPoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccessPoint.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $GetAccessPointResult = $s3 -control->GetAccessPoint(
      AccountId => 'MyAccountId',
      Name      => 'MyAccessPointName',

    );

    # Results:
    my $Bucket        = $GetAccessPointResult->Bucket;
    my $CreationDate  = $GetAccessPointResult->CreationDate;
    my $Name          = $GetAccessPointResult->Name;
    my $NetworkOrigin = $GetAccessPointResult->NetworkOrigin;
    my $PublicAccessBlockConfiguration =
      $GetAccessPointResult->PublicAccessBlockConfiguration;
    my $VpcConfiguration = $GetAccessPointResult->VpcConfiguration;

    # Returns a L<Paws::S3Control::GetAccessPointResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/GetAccessPoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The account ID for the account that owns the specified access point.



=head2 B<REQUIRED> Name => Str

The name of the access point whose configuration information you want
to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccessPoint in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

