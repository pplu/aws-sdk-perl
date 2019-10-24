package Paws::EC2::InstanceState;
  use Moo;  use Types::Standard qw/Int Str/;
  use Paws::EC2::Types qw//;
  has Code => (is => 'ro', isa => Int);
  has Name => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Code' => {
                           'type' => 'Int'
                         },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Code' => 'code',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceState object:

  $service_obj->Method(Att1 => { Code => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceState object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Code => Int

  The state of the instance as a 16-bit unsigned integer.

The high byte is all of the bits between 2^8 and (2^16)-1, which equals
decimal values between 256 and 65,535. These numerical values are used
for internal purposes and should be ignored.

The low byte is all of the bits between 2^0 and (2^8)-1, which equals
decimal values between 0 and 255.

The valid values for instance-state-code will all be in the range of
the low byte and they are:

=over

=item *

C<0> : C<pending>

=item *

C<16> : C<running>

=item *

C<32> : C<shutting-down>

=item *

C<48> : C<terminated>

=item *

C<64> : C<stopping>

=item *

C<80> : C<stopped>

=back

You can ignore the high byte value by zeroing out all of the bits above
2^8 or 256 in decimal.


=head2 Name => Str

  The current state of the instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
