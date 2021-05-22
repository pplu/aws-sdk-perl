
package Paws::MediaTailor::DescribeVodSource;
  use Moose;
  has SourceLocationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sourceLocationName', required => 1);
  has VodSourceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vodSourceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVodSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sourceLocation/{sourceLocationName}/vodSource/{vodSourceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::DescribeVodSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::DescribeVodSource - Arguments for method DescribeVodSource on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVodSource on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method DescribeVodSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVodSource.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $DescribeVodSourceResponse = $api . mediatailor->DescribeVodSource(
      SourceLocationName => 'My__string',
      VodSourceName      => 'My__string',

    );

    # Results:
    my $Arn          = $DescribeVodSourceResponse->Arn;
    my $CreationTime = $DescribeVodSourceResponse->CreationTime;
    my $HttpPackageConfigurations =
      $DescribeVodSourceResponse->HttpPackageConfigurations;
    my $LastModifiedTime   = $DescribeVodSourceResponse->LastModifiedTime;
    my $SourceLocationName = $DescribeVodSourceResponse->SourceLocationName;
    my $Tags               = $DescribeVodSourceResponse->Tags;
    my $VodSourceName      = $DescribeVodSourceResponse->VodSourceName;

    # Returns a L<Paws::MediaTailor::DescribeVodSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/DescribeVodSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceLocationName => Str

The identifier for the source location you are working on.



=head2 B<REQUIRED> VodSourceName => Str

The identifier for the VOD source you are working on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVodSource in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

