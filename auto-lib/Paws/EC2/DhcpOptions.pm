package Paws::EC2::DhcpOptions;
  use Moo;  use Types::Standard qw/ArrayRef Str/;
  use Paws::EC2::Types qw/EC2_Tag EC2_DhcpConfiguration/;
  has DhcpConfigurations => (is => 'ro', isa => ArrayRef[EC2_DhcpConfiguration]);
  has DhcpOptionsId => (is => 'ro', isa => Str);
  has OwnerId => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'DhcpConfigurations' => {
                                         'class' => 'Paws::EC2::DhcpConfiguration',
                                         'type' => 'ArrayRef[EC2_DhcpConfiguration]'
                                       },
               'DhcpOptionsId' => {
                                    'type' => 'Str'
                                  },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'OwnerId' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'DhcpConfigurations' => 'dhcpConfigurationSet',
                       'DhcpOptionsId' => 'dhcpOptionsId',
                       'Tags' => 'tagSet',
                       'OwnerId' => 'ownerId'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DhcpOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::DhcpOptions object:

  $service_obj->Method(Att1 => { DhcpConfigurations => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::DhcpOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->DhcpConfigurations

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DhcpConfigurations => ArrayRef[EC2_DhcpConfiguration]

  One or more DHCP options in the set.


=head2 DhcpOptionsId => Str

  The ID of the set of DHCP options.


=head2 OwnerId => Str

  The ID of the AWS account that owns the DHCP options set.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the DHCP options set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
