# Generated from default/object.tt
package Paws::Lightsail::AddOnRequest;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_AutoSnapshotAddOnRequest/;
  has AddOnType => (is => 'ro', isa => Str, required => 1);
  has AutoSnapshotAddOnRequest => (is => 'ro', isa => Lightsail_AutoSnapshotAddOnRequest);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AddOnType' => {
                                'type' => 'Str'
                              },
               'AutoSnapshotAddOnRequest' => {
                                               'type' => 'Lightsail_AutoSnapshotAddOnRequest',
                                               'class' => 'Paws::Lightsail::AutoSnapshotAddOnRequest'
                                             }
             },
  'IsRequired' => {
                    'AddOnType' => 1
                  },
  'NameInRequest' => {
                       'AddOnType' => 'addOnType',
                       'AutoSnapshotAddOnRequest' => 'autoSnapshotAddOnRequest'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::AddOnRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::AddOnRequest object:

  $service_obj->Method(Att1 => { AddOnType => $value, ..., AutoSnapshotAddOnRequest => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::AddOnRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->AddOnType

=head1 DESCRIPTION

Describes a request to enable, modify, or disable an add-on for an
Amazon Lightsail resource.

An additional cost may be associated with enabling add-ons. For more
information, see the Lightsail pricing page
(https://aws.amazon.com/lightsail/pricing/).

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddOnType => Str

  The add-on type.


=head2 AutoSnapshotAddOnRequest => Lightsail_AutoSnapshotAddOnRequest

  An object that represents additional parameters when enabling or
modifying the automatic snapshot add-on.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

