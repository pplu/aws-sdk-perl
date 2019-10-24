# Generated from default/object.tt
package Paws::KinesisAnalyticsV2::PropertyGroup;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_PropertyMap/;
  has PropertyGroupId => (is => 'ro', isa => Str, required => 1);
  has PropertyMap => (is => 'ro', isa => KinesisAnalyticsV2_PropertyMap, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PropertyMap' => {
                                  'class' => 'Paws::KinesisAnalyticsV2::PropertyMap',
                                  'type' => 'KinesisAnalyticsV2_PropertyMap'
                                },
               'PropertyGroupId' => {
                                      'type' => 'Str'
                                    }
             },
  'IsRequired' => {
                    'PropertyMap' => 1,
                    'PropertyGroupId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::PropertyGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::PropertyGroup object:

  $service_obj->Method(Att1 => { PropertyGroupId => $value, ..., PropertyMap => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::PropertyGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->PropertyGroupId

=head1 DESCRIPTION

Property key-value pairs passed into a Java-based Kinesis Data
Analytics application.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PropertyGroupId => Str

  Describes the key of an application execution property key-value pair.


=head2 B<REQUIRED> PropertyMap => KinesisAnalyticsV2_PropertyMap

  Describes the value of an application execution property key-value
pair.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

