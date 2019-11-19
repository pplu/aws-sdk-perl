package Paws::EC2::LaunchTemplateTagSpecification;
  use Moo;  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_Tag/;
  has ResourceType => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'ResourceType' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'Tags' => 'tagSet',
                       'ResourceType' => 'resourceType'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateTagSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateTagSpecification object:

  $service_obj->Method(Att1 => { ResourceType => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateTagSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceType

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ResourceType => Str

  The type of resource.


=head2 Tags => ArrayRef[EC2_Tag]

  The tags for the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
