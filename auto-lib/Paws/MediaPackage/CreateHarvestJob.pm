
package Paws::MediaPackage::CreateHarvestJob;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackage::Types qw/MediaPackage_S3Destination/;
  has EndTime => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has OriginEndpointId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has S3Destination => (is => 'ro', isa => MediaPackage_S3Destination, required => 1, predicate => 1);
  has StartTime => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateHarvestJob');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/harvest_jobs');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaPackage::CreateHarvestJobResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'S3Destination' => {
                                    'type' => 'MediaPackage_S3Destination',
                                    'class' => 'Paws::MediaPackage::S3Destination'
                                  },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'Id' => {
                         'type' => 'Str'
                       },
               'OriginEndpointId' => {
                                       'type' => 'Str'
                                     }
             },
  'IsRequired' => {
                    'S3Destination' => 1,
                    'StartTime' => 1,
                    'EndTime' => 1,
                    'Id' => 1,
                    'OriginEndpointId' => 1
                  },
  'NameInRequest' => {
                       'OriginEndpointId' => 'originEndpointId',
                       'Id' => 'id',
                       'EndTime' => 'endTime',
                       'StartTime' => 'startTime',
                       'S3Destination' => 's3Destination'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::CreateHarvestJob - Arguments for method CreateHarvestJob on L<Paws::MediaPackage>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHarvestJob on the
L<AWS Elemental MediaPackage|Paws::MediaPackage> service. Use the attributes of this class
as arguments to method CreateHarvestJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHarvestJob.

=head1 SYNOPSIS

    my $mediapackage = Paws->service('MediaPackage');
    my $CreateHarvestJobResponse = $mediapackage->CreateHarvestJob(
      EndTime          => 'My__string',
      Id               => 'My__string',
      OriginEndpointId => 'My__string',
      S3Destination    => {
        BucketName  => 'My__string',
        ManifestKey => 'My__string',
        RoleArn     => 'My__string',

      },
      StartTime => 'My__string',

    );

    # Results:
    my $Arn              = $CreateHarvestJobResponse->Arn;
    my $ChannelId        = $CreateHarvestJobResponse->ChannelId;
    my $CreatedAt        = $CreateHarvestJobResponse->CreatedAt;
    my $EndTime          = $CreateHarvestJobResponse->EndTime;
    my $Id               = $CreateHarvestJobResponse->Id;
    my $OriginEndpointId = $CreateHarvestJobResponse->OriginEndpointId;
    my $S3Destination    = $CreateHarvestJobResponse->S3Destination;
    my $StartTime        = $CreateHarvestJobResponse->StartTime;
    my $Status           = $CreateHarvestJobResponse->Status;

    # Returns a L<Paws::MediaPackage::CreateHarvestJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage/CreateHarvestJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end of the time-window which will be harvested



=head2 B<REQUIRED> Id => Str

The ID of the HarvestJob. The ID must be unique within the region and
it cannot be changed after the HarvestJob is submitted



=head2 B<REQUIRED> OriginEndpointId => Str

The ID of the OriginEndpoint that the HarvestJob will harvest from.
This cannot be changed after the HarvestJob is submitted.



=head2 B<REQUIRED> S3Destination => MediaPackage_S3Destination





=head2 B<REQUIRED> StartTime => Str

The start of the time-window which will be harvested




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHarvestJob in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

