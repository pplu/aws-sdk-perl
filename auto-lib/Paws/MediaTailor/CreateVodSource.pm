
package Paws::MediaTailor::CreateVodSource;
  use Moose;
  has HttpPackageConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::HttpPackageConfiguration]', required => 1);
  has SourceLocationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sourceLocationName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MediaTailor::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');
  has VodSourceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vodSourceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVodSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sourceLocation/{sourceLocationName}/vodSource/{vodSourceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::CreateVodSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::CreateVodSource - Arguments for method CreateVodSource on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVodSource on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method CreateVodSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVodSource.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $CreateVodSourceResponse = $api . mediatailor->CreateVodSource(
      HttpPackageConfigurations => [
        {
          Path        => 'My__string',
          SourceGroup => 'My__string',
          Type        => 'DASH',         # values: DASH, HLS

        },
        ...
      ],
      SourceLocationName => 'My__string',
      VodSourceName      => 'My__string',
      Tags               => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Arn          = $CreateVodSourceResponse->Arn;
    my $CreationTime = $CreateVodSourceResponse->CreationTime;
    my $HttpPackageConfigurations =
      $CreateVodSourceResponse->HttpPackageConfigurations;
    my $LastModifiedTime   = $CreateVodSourceResponse->LastModifiedTime;
    my $SourceLocationName = $CreateVodSourceResponse->SourceLocationName;
    my $Tags               = $CreateVodSourceResponse->Tags;
    my $VodSourceName      = $CreateVodSourceResponse->VodSourceName;

    # Returns a L<Paws::MediaTailor::CreateVodSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/CreateVodSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HttpPackageConfigurations => ArrayRef[L<Paws::MediaTailor::HttpPackageConfiguration>]

An array of HTTP package configuration parameters for this VOD source.



=head2 B<REQUIRED> SourceLocationName => Str

The identifier for the source location you are working on.



=head2 Tags => L<Paws::MediaTailor::__mapOf__string>

The tags to assign to the VOD source.



=head2 B<REQUIRED> VodSourceName => Str

The identifier for the VOD source you are working on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVodSource in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

