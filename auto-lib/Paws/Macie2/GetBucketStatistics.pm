
package Paws::Macie2::GetBucketStatistics;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketStatistics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasources/s3/statistics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::GetBucketStatisticsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetBucketStatistics - Arguments for method GetBucketStatistics on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBucketStatistics on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method GetBucketStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBucketStatistics.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $GetBucketStatisticsResponse = $macie2->GetBucketStatistics(
      AccountId => 'My__string',    # OPTIONAL
    );

    # Results:
    my $BucketCount = $GetBucketStatisticsResponse->BucketCount;
    my $BucketCountByEffectivePermission =
      $GetBucketStatisticsResponse->BucketCountByEffectivePermission;
    my $BucketCountByEncryptionType =
      $GetBucketStatisticsResponse->BucketCountByEncryptionType;
    my $BucketCountByObjectEncryptionRequirement =
      $GetBucketStatisticsResponse->BucketCountByObjectEncryptionRequirement;
    my $BucketCountBySharedAccessType =
      $GetBucketStatisticsResponse->BucketCountBySharedAccessType;
    my $ClassifiableObjectCount =
      $GetBucketStatisticsResponse->ClassifiableObjectCount;
    my $ClassifiableSizeInBytes =
      $GetBucketStatisticsResponse->ClassifiableSizeInBytes;
    my $LastUpdated = $GetBucketStatisticsResponse->LastUpdated;
    my $ObjectCount = $GetBucketStatisticsResponse->ObjectCount;
    my $SizeInBytes = $GetBucketStatisticsResponse->SizeInBytes;
    my $SizeInBytesCompressed =
      $GetBucketStatisticsResponse->SizeInBytesCompressed;
    my $UnclassifiableObjectCount =
      $GetBucketStatisticsResponse->UnclassifiableObjectCount;
    my $UnclassifiableObjectSizeInBytes =
      $GetBucketStatisticsResponse->UnclassifiableObjectSizeInBytes;

    # Returns a L<Paws::Macie2::GetBucketStatisticsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/GetBucketStatistics>

=head1 ATTRIBUTES


=head2 AccountId => Str

The unique identifier for the Amazon Web Services account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBucketStatistics in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

