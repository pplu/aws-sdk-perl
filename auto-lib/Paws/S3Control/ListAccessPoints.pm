
package Paws::S3Control::ListAccessPoints;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has Bucket => (is => 'ro', isa => 'Str', query_name => 'bucket', traits => ['ParamInQuery']);
  has MaxResults => (is => 'ro', isa => 'Int', query_name => 'maxResults', traits => ['ParamInQuery']);
  has NextToken => (is => 'ro', isa => 'Str', query_name => 'nextToken', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccessPoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accesspoint');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::ListAccessPointsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListAccessPoints - Arguments for method ListAccessPoints on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAccessPoints on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method ListAccessPoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAccessPoints.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $ListAccessPointsResult = $s3 -control->ListAccessPoints(
      AccountId  => 'MyAccountId',
      Bucket     => 'MyBucketName',                     # OPTIONAL
      MaxResults => 1,                                  # OPTIONAL
      NextToken  => 'MyNonEmptyMaxLength1024String',    # OPTIONAL
    );

    # Results:
    my $AccessPointList = $ListAccessPointsResult->AccessPointList;
    my $NextToken       = $ListAccessPointsResult->NextToken;

    # Returns a L<Paws::S3Control::ListAccessPointsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/ListAccessPoints>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The AWS account ID for owner of the bucket whose access points you want
to list.



=head2 Bucket => Str

The name of the bucket whose associated access points you want to list.



=head2 MaxResults => Int

The maximum number of access points that you want to include in the
list. If the specified bucket has more than this number of access
points, then the response will include a continuation token in the
C<NextToken> field that you can use to retrieve the next page of access
points.



=head2 NextToken => Str

A continuation token. If a previous call to C<ListAccessPoints>
returned a continuation token in the C<NextToken> field, then providing
that value here causes Amazon S3 to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAccessPoints in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

