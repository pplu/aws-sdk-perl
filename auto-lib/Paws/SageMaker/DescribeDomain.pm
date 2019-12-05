
package Paws::SageMaker::DescribeDomain;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeDomain - Arguments for method DescribeDomain on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDomain on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDomain.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeDomainResponse = $api . sagemaker->DescribeDomain(
      DomainId => 'MyDomainId',

    );

    # Results:
    my $AuthMode            = $DescribeDomainResponse->AuthMode;
    my $CreationTime        = $DescribeDomainResponse->CreationTime;
    my $DefaultUserSettings = $DescribeDomainResponse->DefaultUserSettings;
    my $DomainArn           = $DescribeDomainResponse->DomainArn;
    my $DomainId            = $DescribeDomainResponse->DomainId;
    my $DomainName          = $DescribeDomainResponse->DomainName;
    my $FailureReason       = $DescribeDomainResponse->FailureReason;
    my $HomeEfsFileSystemId = $DescribeDomainResponse->HomeEfsFileSystemId;
    my $HomeEfsFileSystemKmsKeyId =
      $DescribeDomainResponse->HomeEfsFileSystemKmsKeyId;
    my $LastModifiedTime = $DescribeDomainResponse->LastModifiedTime;
    my $SingleSignOnManagedApplicationInstanceId =
      $DescribeDomainResponse->SingleSignOnManagedApplicationInstanceId;
    my $Status    = $DescribeDomainResponse->Status;
    my $SubnetIds = $DescribeDomainResponse->SubnetIds;
    my $Url       = $DescribeDomainResponse->Url;
    my $VpcId     = $DescribeDomainResponse->VpcId;

    # Returns a L<Paws::SageMaker::DescribeDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The domain ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDomain in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

