# Generated from default/object.tt
package Paws::Config::ConformancePackDetail;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_ConformancePackInputParameter/;
  has ConformancePackArn => (is => 'ro', isa => Str, required => 1);
  has ConformancePackId => (is => 'ro', isa => Str, required => 1);
  has ConformancePackInputParameters => (is => 'ro', isa => ArrayRef[Config_ConformancePackInputParameter]);
  has ConformancePackName => (is => 'ro', isa => Str, required => 1);
  has CreatedBy => (is => 'ro', isa => Str);
  has DeliveryS3Bucket => (is => 'ro', isa => Str, required => 1);
  has DeliveryS3KeyPrefix => (is => 'ro', isa => Str);
  has LastUpdateRequestedTime => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConformancePackName' => {
                                          'type' => 'Str'
                                        },
               'ConformancePackArn' => {
                                         'type' => 'Str'
                                       },
               'DeliveryS3Bucket' => {
                                       'type' => 'Str'
                                     },
               'DeliveryS3KeyPrefix' => {
                                          'type' => 'Str'
                                        },
               'ConformancePackInputParameters' => {
                                                     'class' => 'Paws::Config::ConformancePackInputParameter',
                                                     'type' => 'ArrayRef[Config_ConformancePackInputParameter]'
                                                   },
               'LastUpdateRequestedTime' => {
                                              'type' => 'Str'
                                            },
               'ConformancePackId' => {
                                        'type' => 'Str'
                                      },
               'CreatedBy' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'ConformancePackId' => 1,
                    'ConformancePackArn' => 1,
                    'ConformancePackName' => 1,
                    'DeliveryS3Bucket' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConformancePackDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConformancePackDetail object:

  $service_obj->Method(Att1 => { ConformancePackArn => $value, ..., LastUpdateRequestedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConformancePackDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ConformancePackArn

=head1 DESCRIPTION

Returns details of a conformance pack. A conformance pack is a
collection of AWS Config rules that can be easily deployed in an
account and a region.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConformancePackArn => Str

  Amazon Resource Name (ARN) of the conformance pack.


=head2 B<REQUIRED> ConformancePackId => Str

  ID of the conformance pack.


=head2 ConformancePackInputParameters => ArrayRef[Config_ConformancePackInputParameter]

  A list of C<ConformancePackInputParameter> objects.


=head2 B<REQUIRED> ConformancePackName => Str

  Name of the conformance pack.


=head2 CreatedBy => Str

  


=head2 B<REQUIRED> DeliveryS3Bucket => Str

  Location of an Amazon S3 bucket where AWS Config can deliver evaluation
results and conformance pack template that is used to create a pack.


=head2 DeliveryS3KeyPrefix => Str

  Any folder structure you want to add to an Amazon S3 bucket.


=head2 LastUpdateRequestedTime => Str

  Last time when conformation pack update was requested.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

