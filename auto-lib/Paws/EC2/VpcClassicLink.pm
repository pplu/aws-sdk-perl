package Paws::EC2::VpcClassicLink;
  use Moo;  use Types::Standard qw/Bool ArrayRef Str/;
  use Paws::EC2::Types qw/EC2_Tag/;
  has ClassicLinkEnabled => (is => 'ro', isa => Bool);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has VpcId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'ArrayRef[EC2_Tag]',
                           'class' => 'Paws::EC2::Tag'
                         },
               'ClassicLinkEnabled' => {
                                         'type' => 'Bool'
                                       },
               'VpcId' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'Tags' => 'tagSet',
                       'ClassicLinkEnabled' => 'classicLinkEnabled',
                       'VpcId' => 'vpcId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpcClassicLink

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpcClassicLink object:

  $service_obj->Method(Att1 => { ClassicLinkEnabled => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpcClassicLink object:

  $result = $service_obj->Method(...);
  $result->Att1->ClassicLinkEnabled

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ClassicLinkEnabled => Bool

  Indicates whether the VPC is enabled for ClassicLink.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the VPC.


=head2 VpcId => Str

  The ID of the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
