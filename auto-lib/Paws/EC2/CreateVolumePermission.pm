package Paws::EC2::CreateVolumePermission;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has Group => (is => 'ro', isa => Str);
  has UserId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserId' => {
                             'type' => 'Str'
                           },
               'Group' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'UserId' => 'userId',
                       'Group' => 'group'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVolumePermission

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CreateVolumePermission object:

  $service_obj->Method(Att1 => { Group => $value, ..., UserId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CreateVolumePermission object:

  $result = $service_obj->Method(...);
  $result->Att1->Group

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Group => Str

  The group to be added or removed. The possible value is C<all>.


=head2 UserId => Str

  The AWS account ID to be added or removed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
