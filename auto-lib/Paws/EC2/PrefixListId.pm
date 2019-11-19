package Paws::EC2::PrefixListId;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has Description => (is => 'ro', isa => Str);
  has PrefixListId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PrefixListId' => {
                                   'type' => 'Str'
                                 },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'PrefixListId' => 'prefixListId',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PrefixListId

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::PrefixListId object:

  $service_obj->Method(Att1 => { Description => $value, ..., PrefixListId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::PrefixListId object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

  A description for the security group rule that references this prefix
list ID.

Constraints: Up to 255 characters in length. Allowed characters are
a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*


=head2 PrefixListId => Str

  The ID of the prefix.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
