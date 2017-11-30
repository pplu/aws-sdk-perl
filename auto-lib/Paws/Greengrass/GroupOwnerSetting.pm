package Paws::Greengrass::GroupOwnerSetting;
  use Moose;
  has AutoAddGroupOwner => (is => 'ro', isa => 'Bool');
  has GroupOwner => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GroupOwnerSetting

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::GroupOwnerSetting object:

  $service_obj->Method(Att1 => { AutoAddGroupOwner => $value, ..., GroupOwner => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::GroupOwnerSetting object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoAddGroupOwner

=head1 DESCRIPTION

Group owner related settings for local resources.

=head1 ATTRIBUTES


=head2 AutoAddGroupOwner => Bool

  Eanble the auto added group owner.


=head2 GroupOwner => Str

  Name of the group owner.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

