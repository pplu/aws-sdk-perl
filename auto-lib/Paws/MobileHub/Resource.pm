# Generated from default/object.tt
package Paws::MobileHub::Resource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MobileHub::Types qw/MobileHub_Attributes/;
  has Arn => (is => 'ro', isa => Str);
  has Attributes => (is => 'ro', isa => MobileHub_Attributes);
  has Feature => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Feature' => {
                              'type' => 'Str'
                            },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Type' => {
                           'type' => 'Str'
                         },
               'Attributes' => {
                                 'type' => 'MobileHub_Attributes',
                                 'class' => 'Paws::MobileHub::Attributes'
                               }
             },
  'NameInRequest' => {
                       'Arn' => 'arn',
                       'Type' => 'type',
                       'Feature' => 'feature',
                       'Name' => 'name',
                       'Attributes' => 'attributes'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::Resource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MobileHub::Resource object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MobileHub::Resource object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about an instance of an AWS resource associated with a
project.

=head1 ATTRIBUTES


=head2 Arn => Str

  


=head2 Attributes => MobileHub_Attributes

  


=head2 Feature => Str

  


=head2 Name => Str

  


=head2 Type => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MobileHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

