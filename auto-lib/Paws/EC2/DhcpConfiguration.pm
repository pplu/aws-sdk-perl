package Paws::EC2::DhcpConfiguration;
  use Moo;  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_AttributeValue/;
  has Key => (is => 'ro', isa => Str);
  has Values => (is => 'ro', isa => ArrayRef[EC2_AttributeValue]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Values' => {
                             'class' => 'Paws::EC2::AttributeValue',
                             'type' => 'ArrayRef[EC2_AttributeValue]'
                           },
               'Key' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'Values' => 'valueSet',
                       'Key' => 'key'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DhcpConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::DhcpConfiguration object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::DhcpConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Key => Str

  The name of a DHCP option.


=head2 Values => ArrayRef[EC2_AttributeValue]

  One or more values for the DHCP option.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
