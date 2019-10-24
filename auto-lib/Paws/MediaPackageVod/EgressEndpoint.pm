# Generated from default/object.tt
package Paws::MediaPackageVod::EgressEndpoint;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackageVod::Types qw//;
  has PackagingConfigurationId => (is => 'ro', isa => Str);
  has Url => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Url' => {
                          'type' => 'Str'
                        },
               'PackagingConfigurationId' => {
                                               'type' => 'Str'
                                             }
             },
  'NameInRequest' => {
                       'Url' => 'url',
                       'PackagingConfigurationId' => 'packagingConfigurationId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::EgressEndpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageVod::EgressEndpoint object:

  $service_obj->Method(Att1 => { PackagingConfigurationId => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageVod::EgressEndpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->PackagingConfigurationId

=head1 DESCRIPTION

The endpoint URL used to access an Asset using one
PackagingConfiguration.

=head1 ATTRIBUTES


=head2 PackagingConfigurationId => Str

  The ID of the PackagingConfiguration being applied to the Asset.


=head2 Url => Str

  The URL of the parent manifest for the repackaged Asset.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

