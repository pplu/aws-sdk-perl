package Paws::IoT::IotSiteWiseAction;
  use Moose;
  has PutAssetPropertyValueEntries => (is => 'ro', isa => 'ArrayRef[Paws::IoT::PutAssetPropertyValueEntry]', request_name => 'putAssetPropertyValueEntries', traits => ['NameInRequest'], required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::IotSiteWiseAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::IotSiteWiseAction object:

  $service_obj->Method(Att1 => { PutAssetPropertyValueEntries => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::IotSiteWiseAction object:

  $result = $service_obj->Method(...);
  $result->Att1->PutAssetPropertyValueEntries

=head1 DESCRIPTION

Describes an action to send data from an MQTT message that triggered
the rule to AWS IoT SiteWise asset properties.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PutAssetPropertyValueEntries => ArrayRef[L<Paws::IoT::PutAssetPropertyValueEntry>]

  A list of asset property value entries.


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the role that grants AWS IoT permission to send an asset
property value to AWS IoTSiteWise. (C<"Action":
"iotsitewise:BatchPutAssetPropertyValue">). The trust policy can
restrict access to specific asset hierarchy paths.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

