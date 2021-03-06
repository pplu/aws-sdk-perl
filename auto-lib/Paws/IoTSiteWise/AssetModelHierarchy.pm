# Generated by default/object.tt
package Paws::IoTSiteWise::AssetModelHierarchy;
  use Moose;
  has ChildAssetModelId => (is => 'ro', isa => 'Str', request_name => 'childAssetModelId', traits => ['NameInRequest'], required => 1);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::AssetModelHierarchy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSiteWise::AssetModelHierarchy object:

  $service_obj->Method(Att1 => { ChildAssetModelId => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSiteWise::AssetModelHierarchy object:

  $result = $service_obj->Method(...);
  $result->Att1->ChildAssetModelId

=head1 DESCRIPTION

Describes an asset hierarchy that contains a hierarchy's name, ID, and
child asset model ID that specifies the type of asset that can be in
this hierarchy.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChildAssetModelId => Str

The ID of the asset model. All assets in this hierarchy must be
instances of the C<childAssetModelId> asset model.


=head2 Id => Str

The ID of the asset model hierarchy. This ID is a C<hierarchyId>.


=head2 B<REQUIRED> Name => Str

The name of the asset model hierarchy that you specify by using the
CreateAssetModel
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html)
or UpdateAssetModel
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html)
API operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

