package Paws::DS::LDAPSSettingInfo;
  use Moose;
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str');
  has LDAPSStatus => (is => 'ro', isa => 'Str');
  has LDAPSStatusReason => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::LDAPSSettingInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::LDAPSSettingInfo object:

  $service_obj->Method(Att1 => { LastUpdatedDateTime => $value, ..., LDAPSStatusReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::LDAPSSettingInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->LastUpdatedDateTime

=head1 DESCRIPTION

Contains general information about the LDAPS settings.

=head1 ATTRIBUTES


=head2 LastUpdatedDateTime => Str

  The date and time when the LDAPS settings were last updated.


=head2 LDAPSStatus => Str

  The state of the LDAPS settings.


=head2 LDAPSStatusReason => Str

  Describes a state change for LDAPS.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

