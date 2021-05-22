
package Paws::MediaTailor::UpdateVodSource;
  use Moose;
  has HttpPackageConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::HttpPackageConfiguration]', required => 1);
  has SourceLocationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sourceLocationName', required => 1);
  has VodSourceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vodSourceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVodSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sourceLocation/{sourceLocationName}/vodSource/{vodSourceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::UpdateVodSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::UpdateVodSource - Arguments for method UpdateVodSource on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVodSource on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method UpdateVodSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVodSource.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $UpdateVodSourceResponse = $api . mediatailor->UpdateVodSource(
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

    );

    # Results:
    my $Arn          = $UpdateVodSourceResponse->Arn;
    my $CreationTime = $UpdateVodSourceResponse->CreationTime;
    my $HttpPackageConfigurations =
      $UpdateVodSourceResponse->HttpPackageConfigurations;
    my $LastModifiedTime   = $UpdateVodSourceResponse->LastModifiedTime;
    my $SourceLocationName = $UpdateVodSourceResponse->SourceLocationName;
    my $Tags               = $UpdateVodSourceResponse->Tags;
    my $VodSourceName      = $UpdateVodSourceResponse->VodSourceName;

    # Returns a L<Paws::MediaTailor::UpdateVodSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/UpdateVodSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HttpPackageConfigurations => ArrayRef[L<Paws::MediaTailor::HttpPackageConfiguration>]

An array of HTTP package configurations for the VOD source on this
account.



=head2 B<REQUIRED> SourceLocationName => Str

The identifier for the source location you are working on.



=head2 B<REQUIRED> VodSourceName => Str

The identifier for the VOD source you are working on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVodSource in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

