# Generated from default/object.tt
package Paws::AppSync::Type;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw//;
  has Arn => (is => 'ro', isa => Str);
  has Definition => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Format => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               'Format' => {
                             'type' => 'Str'
                           },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Definition' => {
                                 'type' => 'Str'
                               },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Definition' => 'definition',
                       'Arn' => 'arn',
                       'Format' => 'format',
                       'Name' => 'name',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::Type

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::Type object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::Type object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes a type.

=head1 ATTRIBUTES


=head2 Arn => Str

  The type ARN.


=head2 Definition => Str

  The type definition.


=head2 Description => Str

  The type description.


=head2 Format => Str

  The type format: SDL or JSON.


=head2 Name => Str

  The type name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

