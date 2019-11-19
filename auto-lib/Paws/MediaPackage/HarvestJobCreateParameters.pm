# Generated from default/object.tt
package Paws::MediaPackage::HarvestJobCreateParameters;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackage::Types qw/MediaPackage_S3Destination/;
  has EndTime => (is => 'ro', isa => Str, required => 1);
  has Id => (is => 'ro', isa => Str, required => 1);
  has OriginEndpointId => (is => 'ro', isa => Str, required => 1);
  has S3Destination => (is => 'ro', isa => MediaPackage_S3Destination, required => 1);
  has StartTime => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OriginEndpointId' => {
                                       'type' => 'Str'
                                     },
               'Id' => {
                         'type' => 'Str'
                       },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'S3Destination' => {
                                    'type' => 'MediaPackage_S3Destination',
                                    'class' => 'Paws::MediaPackage::S3Destination'
                                  }
             },
  'IsRequired' => {
                    'OriginEndpointId' => 1,
                    'Id' => 1,
                    'EndTime' => 1,
                    'StartTime' => 1,
                    'S3Destination' => 1
                  },
  'NameInRequest' => {
                       'S3Destination' => 's3Destination',
                       'StartTime' => 'startTime',
                       'EndTime' => 'endTime',
                       'Id' => 'id',
                       'OriginEndpointId' => 'originEndpointId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::HarvestJobCreateParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::HarvestJobCreateParameters object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., StartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::HarvestJobCreateParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

Configuration parameters for a new HarvestJob

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

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

