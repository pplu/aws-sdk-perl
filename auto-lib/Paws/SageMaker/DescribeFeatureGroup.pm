
package Paws::SageMaker::DescribeFeatureGroup;
  use Moose;
  has FeatureGroupName => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFeatureGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeFeatureGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeFeatureGroup - Arguments for method DescribeFeatureGroup on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFeatureGroup on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeFeatureGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFeatureGroup.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeFeatureGroupResponse = $api . sagemaker->DescribeFeatureGroup(
      FeatureGroupName => 'MyFeatureGroupName',
      NextToken        => 'MyNextToken',          # OPTIONAL
    );

    # Results:
    my $CreationTime = $DescribeFeatureGroupResponse->CreationTime;
    my $Description  = $DescribeFeatureGroupResponse->Description;
    my $EventTimeFeatureName =
      $DescribeFeatureGroupResponse->EventTimeFeatureName;
    my $FailureReason      = $DescribeFeatureGroupResponse->FailureReason;
    my $FeatureDefinitions = $DescribeFeatureGroupResponse->FeatureDefinitions;
    my $FeatureGroupArn    = $DescribeFeatureGroupResponse->FeatureGroupArn;
    my $FeatureGroupName   = $DescribeFeatureGroupResponse->FeatureGroupName;
    my $FeatureGroupStatus = $DescribeFeatureGroupResponse->FeatureGroupStatus;
    my $NextToken          = $DescribeFeatureGroupResponse->NextToken;
    my $OfflineStoreConfig = $DescribeFeatureGroupResponse->OfflineStoreConfig;
    my $OfflineStoreStatus = $DescribeFeatureGroupResponse->OfflineStoreStatus;
    my $OnlineStoreConfig  = $DescribeFeatureGroupResponse->OnlineStoreConfig;
    my $RecordIdentifierFeatureName =
      $DescribeFeatureGroupResponse->RecordIdentifierFeatureName;
    my $RoleArn = $DescribeFeatureGroupResponse->RoleArn;

    # Returns a L<Paws::SageMaker::DescribeFeatureGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeFeatureGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FeatureGroupName => Str

The name of the C<FeatureGroup> you want described.



=head2 NextToken => Str

A token to resume pagination of the list of C<Features>
(C<FeatureDefinitions>). 2,500 C<Features> are returned by default.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFeatureGroup in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

